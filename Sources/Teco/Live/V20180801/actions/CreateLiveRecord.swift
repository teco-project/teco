//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Live {
    /// CreateLiveRecord请求参数结构体
    public struct CreateLiveRecordRequest: TCRequest {
        /// 流名称。
        public let streamName: String

        /// 推流路径，与推流和播放地址中的 AppName保持一致，默认为 live。
        public let appName: String?

        /// 推流域名。多域名推流必须设置。
        public let domainName: String?

        /// 录制开始时间。中国标准时间，需要 URLEncode(rfc3986)。如 2017-01-01 10:10:01，编码为：2017-01-01+10%3a10%3a01。
        /// 定时录制模式，必须设置该字段；实时视频录制模式，忽略该字段。
        public let startTime: String?

        /// 录制结束时间。中国标准时间，需要 URLEncode(rfc3986)。如 2017-01-01 10:30:01，编码为：2017-01-01+10%3a30%3a01。
        /// 定时录制模式，必须设置该字段；实时录制模式，为可选字段。如果通过Highlight参数，设置录制为实时视频录制模式，其设置的结束时间不应超过当前时间+30分钟，如果设置的结束时间超过当前时间+30分钟或者小于当前时间或者不设置该参数，则实际结束时间为当前时间+30分钟。
        public let endTime: String?

        /// 录制类型。
        /// “video” : 音视频录制【默认】。
        /// “audio” : 纯音频录制。
        /// 在定时录制模式或实时视频录制模式下，该参数均有效，不区分大小写。
        public let recordType: String?

        /// 录制文件格式。其值为：
        /// “flv”【默认】,“hls”,”mp4”,“aac”,”mp3”。
        /// 在定时录制模式或实时视频录制模式下，该参数均有效，不区分大小写。
        public let fileFormat: String?

        /// 开启实时视频录制模式标志。
        /// 0：不开启实时视频录制模式，即定时录制模式【默认】。见[示例一](#.E7.A4.BA.E4.BE.8B1-.E5.88.9B.E5.BB.BA.E5.AE.9A.E6.97.B6.E5.BD.95.E5.88.B6.E4.BB.BB.E5.8A.A1)。
        /// 1：开启实时视频录制模式。见[示例二](#.E7.A4.BA.E4.BE.8B2-.E5.88.9B.E5.BB.BA.E5.AE.9E.E6.97.B6.E5.BD.95.E5.88.B6.E4.BB.BB.E5.8A.A1)。
        public let highlight: Int64?

        /// 开启 A+B=C混流C流录制标志。
        /// 0：不开启 A+B=C混流C流录制【默认】。
        /// 1：开启 A+B=C混流C流录制。
        /// 在定时录制模式或实时视频录制模式下，该参数均有效。
        public let mixStream: Int64?

        /// 录制流参数。当前支持以下参数：
        /// record_interval - 录制分片时长，单位 秒，1800 - 7200。
        /// storage_time - 录制文件存储时长，单位 秒。
        /// eg. record_interval=3600&storage_time=2592000。
        /// 注：参数需要url encode。
        /// 在定时录制模式或实时视频录制模式下，该参数均有效。
        public let streamParam: String?

        public init(streamName: String, appName: String? = nil, domainName: String? = nil, startTime: String? = nil, endTime: String? = nil, recordType: String? = nil, fileFormat: String? = nil, highlight: Int64? = nil, mixStream: Int64? = nil, streamParam: String? = nil) {
            self.streamName = streamName
            self.appName = appName
            self.domainName = domainName
            self.startTime = startTime
            self.endTime = endTime
            self.recordType = recordType
            self.fileFormat = fileFormat
            self.highlight = highlight
            self.mixStream = mixStream
            self.streamParam = streamParam
        }

        enum CodingKeys: String, CodingKey {
            case streamName = "StreamName"
            case appName = "AppName"
            case domainName = "DomainName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case recordType = "RecordType"
            case fileFormat = "FileFormat"
            case highlight = "Highlight"
            case mixStream = "MixStream"
            case streamParam = "StreamParam"
        }
    }

    /// CreateLiveRecord返回参数结构体
    public struct CreateLiveRecordResponse: TCResponse {
        /// 任务 ID，全局唯一标识录制任务。
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建录制任务(已废弃,请使用新接口)
    ///
    /// - 使用前提
    ///   1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
    ///   2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 [对应文档](https://cloud.tencent.com/document/product/266/2838)。
    ///
    /// - 模式说明
    ///   该接口支持两种录制模式：
    ///   1. 定时录制模式【默认模式】。
    ///     需要传入开始时间与结束时间，录制任务根据起止时间自动开始与结束。在所设置结束时间过期之前（且未调用StopLiveRecord提前终止任务），录制任务都是有效的，期间多次断流然后重推都会启动录制任务。
    ///   2. 实时视频录制模式。
    ///     忽略传入的开始时间，在录制任务创建后立即开始录制，录制时长支持最大为30分钟，如果传入的结束时间与当前时间差大于30分钟，则按30分钟计算，实时视频录制主要用于录制精彩视频场景，时长建议控制在5分钟以内。
    ///
    /// - 注意事项
    ///   1. 调用接口超时设置应大于3秒，小于3秒重试以及按不同起止时间调用都有可能产生重复录制任务，进而导致额外录制费用。
    ///   2. 受限于音视频文件格式（FLV/MP4/HLS）对编码类型的支持，视频编码类型支持 H.264，音频编码类型支持 AAC。
    ///   3. 为避免恶意或非主观的频繁 API 请求，对定时录制模式最大创建任务数做了限制：其中，当天可以创建的最大任务数不超过4000（不含已删除的任务）；当前时刻并发运行的任务数不超过400。有超出此限制的需要提工单申请。
    ///   4. 此调用方式暂时不支持海外推流录制。
    @inlinable
    public func createLiveRecord(_ input: CreateLiveRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveRecordResponse> {
        self.client.execute(action: "CreateLiveRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建录制任务(已废弃,请使用新接口)
    ///
    /// - 使用前提
    ///   1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
    ///   2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 [对应文档](https://cloud.tencent.com/document/product/266/2838)。
    ///
    /// - 模式说明
    ///   该接口支持两种录制模式：
    ///   1. 定时录制模式【默认模式】。
    ///     需要传入开始时间与结束时间，录制任务根据起止时间自动开始与结束。在所设置结束时间过期之前（且未调用StopLiveRecord提前终止任务），录制任务都是有效的，期间多次断流然后重推都会启动录制任务。
    ///   2. 实时视频录制模式。
    ///     忽略传入的开始时间，在录制任务创建后立即开始录制，录制时长支持最大为30分钟，如果传入的结束时间与当前时间差大于30分钟，则按30分钟计算，实时视频录制主要用于录制精彩视频场景，时长建议控制在5分钟以内。
    ///
    /// - 注意事项
    ///   1. 调用接口超时设置应大于3秒，小于3秒重试以及按不同起止时间调用都有可能产生重复录制任务，进而导致额外录制费用。
    ///   2. 受限于音视频文件格式（FLV/MP4/HLS）对编码类型的支持，视频编码类型支持 H.264，音频编码类型支持 AAC。
    ///   3. 为避免恶意或非主观的频繁 API 请求，对定时录制模式最大创建任务数做了限制：其中，当天可以创建的最大任务数不超过4000（不含已删除的任务）；当前时刻并发运行的任务数不超过400。有超出此限制的需要提工单申请。
    ///   4. 此调用方式暂时不支持海外推流录制。
    @inlinable
    public func createLiveRecord(_ input: CreateLiveRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveRecordResponse {
        try await self.client.execute(action: "CreateLiveRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建录制任务(已废弃,请使用新接口)
    ///
    /// - 使用前提
    ///   1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
    ///   2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 [对应文档](https://cloud.tencent.com/document/product/266/2838)。
    ///
    /// - 模式说明
    ///   该接口支持两种录制模式：
    ///   1. 定时录制模式【默认模式】。
    ///     需要传入开始时间与结束时间，录制任务根据起止时间自动开始与结束。在所设置结束时间过期之前（且未调用StopLiveRecord提前终止任务），录制任务都是有效的，期间多次断流然后重推都会启动录制任务。
    ///   2. 实时视频录制模式。
    ///     忽略传入的开始时间，在录制任务创建后立即开始录制，录制时长支持最大为30分钟，如果传入的结束时间与当前时间差大于30分钟，则按30分钟计算，实时视频录制主要用于录制精彩视频场景，时长建议控制在5分钟以内。
    ///
    /// - 注意事项
    ///   1. 调用接口超时设置应大于3秒，小于3秒重试以及按不同起止时间调用都有可能产生重复录制任务，进而导致额外录制费用。
    ///   2. 受限于音视频文件格式（FLV/MP4/HLS）对编码类型的支持，视频编码类型支持 H.264，音频编码类型支持 AAC。
    ///   3. 为避免恶意或非主观的频繁 API 请求，对定时录制模式最大创建任务数做了限制：其中，当天可以创建的最大任务数不超过4000（不含已删除的任务）；当前时刻并发运行的任务数不超过400。有超出此限制的需要提工单申请。
    ///   4. 此调用方式暂时不支持海外推流录制。
    @inlinable
    public func createLiveRecord(streamName: String, appName: String? = nil, domainName: String? = nil, startTime: String? = nil, endTime: String? = nil, recordType: String? = nil, fileFormat: String? = nil, highlight: Int64? = nil, mixStream: Int64? = nil, streamParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveRecordResponse> {
        self.createLiveRecord(.init(streamName: streamName, appName: appName, domainName: domainName, startTime: startTime, endTime: endTime, recordType: recordType, fileFormat: fileFormat, highlight: highlight, mixStream: mixStream, streamParam: streamParam), region: region, logger: logger, on: eventLoop)
    }

    /// 创建录制任务(已废弃,请使用新接口)
    ///
    /// - 使用前提
    ///   1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
    ///   2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 [对应文档](https://cloud.tencent.com/document/product/266/2838)。
    ///
    /// - 模式说明
    ///   该接口支持两种录制模式：
    ///   1. 定时录制模式【默认模式】。
    ///     需要传入开始时间与结束时间，录制任务根据起止时间自动开始与结束。在所设置结束时间过期之前（且未调用StopLiveRecord提前终止任务），录制任务都是有效的，期间多次断流然后重推都会启动录制任务。
    ///   2. 实时视频录制模式。
    ///     忽略传入的开始时间，在录制任务创建后立即开始录制，录制时长支持最大为30分钟，如果传入的结束时间与当前时间差大于30分钟，则按30分钟计算，实时视频录制主要用于录制精彩视频场景，时长建议控制在5分钟以内。
    ///
    /// - 注意事项
    ///   1. 调用接口超时设置应大于3秒，小于3秒重试以及按不同起止时间调用都有可能产生重复录制任务，进而导致额外录制费用。
    ///   2. 受限于音视频文件格式（FLV/MP4/HLS）对编码类型的支持，视频编码类型支持 H.264，音频编码类型支持 AAC。
    ///   3. 为避免恶意或非主观的频繁 API 请求，对定时录制模式最大创建任务数做了限制：其中，当天可以创建的最大任务数不超过4000（不含已删除的任务）；当前时刻并发运行的任务数不超过400。有超出此限制的需要提工单申请。
    ///   4. 此调用方式暂时不支持海外推流录制。
    @inlinable
    public func createLiveRecord(streamName: String, appName: String? = nil, domainName: String? = nil, startTime: String? = nil, endTime: String? = nil, recordType: String? = nil, fileFormat: String? = nil, highlight: Int64? = nil, mixStream: Int64? = nil, streamParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveRecordResponse {
        try await self.createLiveRecord(.init(streamName: streamName, appName: appName, domainName: domainName, startTime: startTime, endTime: endTime, recordType: recordType, fileFormat: fileFormat, highlight: highlight, mixStream: mixStream, streamParam: streamParam), region: region, logger: logger, on: eventLoop)
    }
}
