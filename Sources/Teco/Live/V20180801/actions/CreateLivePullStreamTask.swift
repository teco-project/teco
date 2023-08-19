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
    /// CreateLivePullStreamTask请求参数结构体
    public struct CreateLivePullStreamTaskRequest: TCRequest {
        /// 拉流源的类型：
        /// PullLivePushLive -直播，
        /// PullVodPushLive -点播，
        /// PullPicPushLive -图片。
        public let sourceType: String

        /// 拉流源 url 列表。
        /// SourceType 为直播（PullLivePushLive）只可以填1个，
        /// SourceType 为点播（PullVodPushLive）可以填多个，上限30个。
        /// 当前支持的文件格式：flv，mp4，hls。
        /// 当前支持的拉流协议：http，https，rtmp，rtmps，rtsp，srt。
        /// 注意：
        /// 1. 建议优先使用 flv 文件，对于 mp4 未交织好的文件轮播推流易产生卡顿，可通过点播转码进行重新交织后再轮播。
        /// 2. 拒绝内网域名等攻击性拉流地址，如有使用，则做账号封禁处理。
        /// 3. 源文件请保持时间戳正常交织递增，避免因源文件异常影响推流及播放。
        /// 4. 视频编码格式仅支持: H264, H265。
        /// 5. 音频编码格式仅支持: AAC。
        /// 6. 点播源请使用小文件，尽量时长保持在1小时内，较大文件打开和续播耗时较久，耗时超过15秒会有无法正常转推风险。
        /// 7. 避免使用低频存储的文件，该类文件因低频存储，拉取时容易出现慢速，影响拉转推质量。
        public let sourceUrls: [String]

        /// 推流域名。
        /// 将拉取过来的流推到该域名。
        /// 注意：如果目标地址为非云直播，且样式不同于云直播，请使用 ToUrl 传入完整推流地址，详细用法请参考 ToUrl 参数说明。
        public let domainName: String

        /// 推流路径。
        /// 将拉取过来的流推到该路径。
        public let appName: String

        /// 推流名称。
        /// 将拉取过来的流推到该流名称。
        public let streamName: String

        /// 开始时间。
        /// 使用 UTC 格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时。
        public let startTime: String

        /// 结束时间，注意：
        /// 1. 结束时间必须大于开始时间；
        /// 2. 结束时间必须大于当前时间；
        /// 3. 结束时间 和 开始时间 间隔必须小于七天。
        /// 使用 UTC 格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时。
        public let endTime: String

        /// 任务操作人备注。
        public let `operator`: String

        /// 推流参数。
        /// 推流时携带自定义参数。
        /// 示例：
        /// bak=1&test=2 。
        public let pushArgs: String?

        /// 选择需要回调的事件（不填则回调全部）：
        /// TaskStart：任务启动回调，
        /// TaskExit：任务停止回调，
        /// VodSourceFileStart：从点播源文件开始拉流回调，
        /// VodSourceFileFinish：从点播源文件拉流结束回调，
        /// ResetTaskConfig：任务更新回调。
        ///
        /// TaskAlarm: 用于告警事件通知，AlarmType 示例:
        /// PullFileUnstable - 文件拉取不稳定，
        /// PushStreamUnstable - 推流不稳定，
        /// PullFileFailed - 文件拉取出错，
        /// PushStreamFailed - 推流出现失败，
        /// FileEndEarly - 文件提前结束。
        public let callbackEvents: [String]?

        /// 点播拉流转推循环次数。默认：-1。
        /// -1：无限循环，直到任务结束。
        /// 0：不循环。
        /// >0：具体循环次数。次数和时间以先结束的为准。
        /// 注意：该配置仅对拉流源为点播时生效。
        public let vodLoopTimes: String?

        /// 点播更新SourceUrls后的播放方式：
        /// ImmediateNewSource：立即播放新的拉流源内容；
        /// ContinueBreakPoint：播放完当前正在播放的点播 url 后再使用新的拉流源播放。（旧拉流源未播放的点播 url 不会再播放）
        ///
        /// 注意：该配置生效仅对变更前拉流源为点播时生效。
        public let vodRefreshType: String?

        /// 自定义回调地址。
        /// 拉流转推任务相关事件会回调到该地址。
        public let callbackUrl: String?

        /// 其他参数。
        /// 示例: ignore_region  用于忽略传入地域, 内部按负载分配。
        public let extraCmd: String?

        /// 任务描述，限制 512 字节。
        public let comment: String?

        /// 完整目标 URL 地址。
        /// 用法注意：如果使用该参数来传完整目标地址，则 DomainName, AppName, StreamName 需要传入空字符串，任务将会使用该 ToUrl 参数指定的目标地址。
        ///
        /// 使用该方式传入目标地址支持的协议有：
        /// rtmp、rtmps、rtsp、rtp、srt。
        ///
        /// 注意：签名时间需要超过任务结束时间，避免因签名过期造成任务失败。
        public let toUrl: String?

        /// 备源的类型：
        /// PullLivePushLive -直播，
        /// PullVodPushLive -点播。
        /// 注意：
        /// 1. 仅当主源类型为直播源时，备源才会生效。
        /// 2. 主直播源拉流中断时，自动使用备源进行拉流。
        /// 3. 如果备源为点播文件时，则每次轮播完点播文件就检查主源是否恢复，如果主源恢复则自动切回到主源，否则继续拉备源。
        public let backupSourceType: String?

        /// 备源 URL。
        /// 只允许填一个备源 URL
        public let backupSourceUrl: String?

        /// 水印信息列表。
        /// 注意：
        /// 1. 最多支持4个不同位置的水印。
        /// 2. 水印图片 URL 请使用合法外网可访问地址。
        /// 3. 支持的水印图片格式：png，jpg，gif 等。
        public let watermarkList: [PullPushWatermarkInfo]?

        /// 点播源是否启用本地推流模式，默认0，不启用。
        /// 0 - 不启用。
        /// 1 - 启用。
        /// 注意：启用本地模式后，会将源列表中的 MP4 文件进行本地下载，优先使用本地已下载文件进行推流，提高点播源推流稳定性。使用本地下载文件推流时，会产生增值费用。
        public let vodLocalMode: Int64?

        /// 录制模板 ID。
        public let recordTemplateId: String?

        public init(sourceType: String, sourceUrls: [String], domainName: String, appName: String, streamName: String, startTime: String, endTime: String, operator: String, pushArgs: String? = nil, callbackEvents: [String]? = nil, vodLoopTimes: String? = nil, vodRefreshType: String? = nil, callbackUrl: String? = nil, extraCmd: String? = nil, comment: String? = nil, toUrl: String? = nil, backupSourceType: String? = nil, backupSourceUrl: String? = nil, watermarkList: [PullPushWatermarkInfo]? = nil, vodLocalMode: Int64? = nil, recordTemplateId: String? = nil) {
            self.sourceType = sourceType
            self.sourceUrls = sourceUrls
            self.domainName = domainName
            self.appName = appName
            self.streamName = streamName
            self.startTime = startTime
            self.endTime = endTime
            self.operator = `operator`
            self.pushArgs = pushArgs
            self.callbackEvents = callbackEvents
            self.vodLoopTimes = vodLoopTimes
            self.vodRefreshType = vodRefreshType
            self.callbackUrl = callbackUrl
            self.extraCmd = extraCmd
            self.comment = comment
            self.toUrl = toUrl
            self.backupSourceType = backupSourceType
            self.backupSourceUrl = backupSourceUrl
            self.watermarkList = watermarkList
            self.vodLocalMode = vodLocalMode
            self.recordTemplateId = recordTemplateId
        }

        enum CodingKeys: String, CodingKey {
            case sourceType = "SourceType"
            case sourceUrls = "SourceUrls"
            case domainName = "DomainName"
            case appName = "AppName"
            case streamName = "StreamName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case `operator` = "Operator"
            case pushArgs = "PushArgs"
            case callbackEvents = "CallbackEvents"
            case vodLoopTimes = "VodLoopTimes"
            case vodRefreshType = "VodRefreshType"
            case callbackUrl = "CallbackUrl"
            case extraCmd = "ExtraCmd"
            case comment = "Comment"
            case toUrl = "ToUrl"
            case backupSourceType = "BackupSourceType"
            case backupSourceUrl = "BackupSourceUrl"
            case watermarkList = "WatermarkList"
            case vodLocalMode = "VodLocalMode"
            case recordTemplateId = "RecordTemplateId"
        }
    }

    /// CreateLivePullStreamTask返回参数结构体
    public struct CreateLivePullStreamTaskResponse: TCResponse {
        /// 任务 Id 。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建直播拉流任务
    ///
    /// 创建直播拉流任务。支持将外部已有的点播文件，或者直播源拉取过来转推到指定的目标地址。
    /// 注意：
    /// 1. 默认支持任务数上限200个，如有特殊需求，可通过提单到售后进行评估增加上限。
    /// 2. 源流视频编码目前只支持: H264, H265。其他编码格式建议先进行转码处理。
    /// 3. 源流音频编码目前只支持: AAC。其他编码格式建议先进行转码处理。
    /// 4. 可在控制台开启过期自动清理，避免过期任务占用任务数额度。
    /// 5. 拉流转推功能为计费增值服务，计费规则详情可参见[计费文档](https://cloud.tencent.com/document/product/267/53308)。
    /// 6. 拉流转推功能仅提供内容拉取与推送服务，请确保内容已获得授权并符合内容传播相关的法律法规。若内容有侵权或违规相关问题，云直播会停止相关的功能服务并保留追究法律责任的权利。
    @inlinable
    public func createLivePullStreamTask(_ input: CreateLivePullStreamTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLivePullStreamTaskResponse> {
        self.client.execute(action: "CreateLivePullStreamTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建直播拉流任务
    ///
    /// 创建直播拉流任务。支持将外部已有的点播文件，或者直播源拉取过来转推到指定的目标地址。
    /// 注意：
    /// 1. 默认支持任务数上限200个，如有特殊需求，可通过提单到售后进行评估增加上限。
    /// 2. 源流视频编码目前只支持: H264, H265。其他编码格式建议先进行转码处理。
    /// 3. 源流音频编码目前只支持: AAC。其他编码格式建议先进行转码处理。
    /// 4. 可在控制台开启过期自动清理，避免过期任务占用任务数额度。
    /// 5. 拉流转推功能为计费增值服务，计费规则详情可参见[计费文档](https://cloud.tencent.com/document/product/267/53308)。
    /// 6. 拉流转推功能仅提供内容拉取与推送服务，请确保内容已获得授权并符合内容传播相关的法律法规。若内容有侵权或违规相关问题，云直播会停止相关的功能服务并保留追究法律责任的权利。
    @inlinable
    public func createLivePullStreamTask(_ input: CreateLivePullStreamTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLivePullStreamTaskResponse {
        try await self.client.execute(action: "CreateLivePullStreamTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建直播拉流任务
    ///
    /// 创建直播拉流任务。支持将外部已有的点播文件，或者直播源拉取过来转推到指定的目标地址。
    /// 注意：
    /// 1. 默认支持任务数上限200个，如有特殊需求，可通过提单到售后进行评估增加上限。
    /// 2. 源流视频编码目前只支持: H264, H265。其他编码格式建议先进行转码处理。
    /// 3. 源流音频编码目前只支持: AAC。其他编码格式建议先进行转码处理。
    /// 4. 可在控制台开启过期自动清理，避免过期任务占用任务数额度。
    /// 5. 拉流转推功能为计费增值服务，计费规则详情可参见[计费文档](https://cloud.tencent.com/document/product/267/53308)。
    /// 6. 拉流转推功能仅提供内容拉取与推送服务，请确保内容已获得授权并符合内容传播相关的法律法规。若内容有侵权或违规相关问题，云直播会停止相关的功能服务并保留追究法律责任的权利。
    @inlinable
    public func createLivePullStreamTask(sourceType: String, sourceUrls: [String], domainName: String, appName: String, streamName: String, startTime: String, endTime: String, operator: String, pushArgs: String? = nil, callbackEvents: [String]? = nil, vodLoopTimes: String? = nil, vodRefreshType: String? = nil, callbackUrl: String? = nil, extraCmd: String? = nil, comment: String? = nil, toUrl: String? = nil, backupSourceType: String? = nil, backupSourceUrl: String? = nil, watermarkList: [PullPushWatermarkInfo]? = nil, vodLocalMode: Int64? = nil, recordTemplateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLivePullStreamTaskResponse> {
        self.createLivePullStreamTask(.init(sourceType: sourceType, sourceUrls: sourceUrls, domainName: domainName, appName: appName, streamName: streamName, startTime: startTime, endTime: endTime, operator: `operator`, pushArgs: pushArgs, callbackEvents: callbackEvents, vodLoopTimes: vodLoopTimes, vodRefreshType: vodRefreshType, callbackUrl: callbackUrl, extraCmd: extraCmd, comment: comment, toUrl: toUrl, backupSourceType: backupSourceType, backupSourceUrl: backupSourceUrl, watermarkList: watermarkList, vodLocalMode: vodLocalMode, recordTemplateId: recordTemplateId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建直播拉流任务
    ///
    /// 创建直播拉流任务。支持将外部已有的点播文件，或者直播源拉取过来转推到指定的目标地址。
    /// 注意：
    /// 1. 默认支持任务数上限200个，如有特殊需求，可通过提单到售后进行评估增加上限。
    /// 2. 源流视频编码目前只支持: H264, H265。其他编码格式建议先进行转码处理。
    /// 3. 源流音频编码目前只支持: AAC。其他编码格式建议先进行转码处理。
    /// 4. 可在控制台开启过期自动清理，避免过期任务占用任务数额度。
    /// 5. 拉流转推功能为计费增值服务，计费规则详情可参见[计费文档](https://cloud.tencent.com/document/product/267/53308)。
    /// 6. 拉流转推功能仅提供内容拉取与推送服务，请确保内容已获得授权并符合内容传播相关的法律法规。若内容有侵权或违规相关问题，云直播会停止相关的功能服务并保留追究法律责任的权利。
    @inlinable
    public func createLivePullStreamTask(sourceType: String, sourceUrls: [String], domainName: String, appName: String, streamName: String, startTime: String, endTime: String, operator: String, pushArgs: String? = nil, callbackEvents: [String]? = nil, vodLoopTimes: String? = nil, vodRefreshType: String? = nil, callbackUrl: String? = nil, extraCmd: String? = nil, comment: String? = nil, toUrl: String? = nil, backupSourceType: String? = nil, backupSourceUrl: String? = nil, watermarkList: [PullPushWatermarkInfo]? = nil, vodLocalMode: Int64? = nil, recordTemplateId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLivePullStreamTaskResponse {
        try await self.createLivePullStreamTask(.init(sourceType: sourceType, sourceUrls: sourceUrls, domainName: domainName, appName: appName, streamName: streamName, startTime: startTime, endTime: endTime, operator: `operator`, pushArgs: pushArgs, callbackEvents: callbackEvents, vodLoopTimes: vodLoopTimes, vodRefreshType: vodRefreshType, callbackUrl: callbackUrl, extraCmd: extraCmd, comment: comment, toUrl: toUrl, backupSourceType: backupSourceType, backupSourceUrl: backupSourceUrl, watermarkList: watermarkList, vodLocalMode: vodLocalMode, recordTemplateId: recordTemplateId), region: region, logger: logger, on: eventLoop)
    }
}
