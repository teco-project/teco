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

extension Iotvideoindustry {
    /// DescribeChannelLocalRecordURL请求参数结构体
    public struct DescribeChannelLocalRecordURLRequest: TCRequestModel {
        /// 设备唯一标识
        public let deviceId: String

        /// 通道唯一标识
        public let channelId: String

        /// 录像文件Id，通过获取本地录像返回
        public let recordId: String

        /// UNIX 时间戳，30天内，URL失效时间，如180s无人观看此流则URL提前失效
        public let expireTime: Int64

        /// 录像文件推送的开始时间，需要在RecordId参数起始时间内，可以通过此参数控制回放流起始点
        public let startTime: Int64?

        /// 录像文件推送的结束时间，需要在RecordId参数起始时间内，可以通过此参数控制回放流起始点
        public let endTime: Int64?

        public init(deviceId: String, channelId: String, recordId: String, expireTime: Int64, startTime: Int64? = nil, endTime: Int64? = nil) {
            self.deviceId = deviceId
            self.channelId = channelId
            self.recordId = recordId
            self.expireTime = expireTime
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case channelId = "ChannelId"
            case recordId = "RecordId"
            case expireTime = "ExpireTime"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeChannelLocalRecordURL返回参数结构体
    public struct DescribeChannelLocalRecordURLResponse: TCResponseModel {
        /// 结果
        public let data: DescribeRecordStreamData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取通道本地回放流地址
    ///
    /// 本接口（DescribeChannelLocalRecordURL）用于将NVR等设备对应通道本地回放文件，通过GB28181信令推送至云端，并生成对应的实时视频流URL，流地址URL是动态生成，如需重新播放请重新调用此接口获取最新地址。
    /// 正常推流，如未设置对应录制计划，且180s无人观看此流，将会被自动掐断。
    @inlinable
    public func describeChannelLocalRecordURL(_ input: DescribeChannelLocalRecordURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelLocalRecordURLResponse> {
        self.client.execute(action: "DescribeChannelLocalRecordURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取通道本地回放流地址
    ///
    /// 本接口（DescribeChannelLocalRecordURL）用于将NVR等设备对应通道本地回放文件，通过GB28181信令推送至云端，并生成对应的实时视频流URL，流地址URL是动态生成，如需重新播放请重新调用此接口获取最新地址。
    /// 正常推流，如未设置对应录制计划，且180s无人观看此流，将会被自动掐断。
    @inlinable
    public func describeChannelLocalRecordURL(_ input: DescribeChannelLocalRecordURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelLocalRecordURLResponse {
        try await self.client.execute(action: "DescribeChannelLocalRecordURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取通道本地回放流地址
    ///
    /// 本接口（DescribeChannelLocalRecordURL）用于将NVR等设备对应通道本地回放文件，通过GB28181信令推送至云端，并生成对应的实时视频流URL，流地址URL是动态生成，如需重新播放请重新调用此接口获取最新地址。
    /// 正常推流，如未设置对应录制计划，且180s无人观看此流，将会被自动掐断。
    @inlinable
    public func describeChannelLocalRecordURL(deviceId: String, channelId: String, recordId: String, expireTime: Int64, startTime: Int64? = nil, endTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelLocalRecordURLResponse> {
        self.describeChannelLocalRecordURL(DescribeChannelLocalRecordURLRequest(deviceId: deviceId, channelId: channelId, recordId: recordId, expireTime: expireTime, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取通道本地回放流地址
    ///
    /// 本接口（DescribeChannelLocalRecordURL）用于将NVR等设备对应通道本地回放文件，通过GB28181信令推送至云端，并生成对应的实时视频流URL，流地址URL是动态生成，如需重新播放请重新调用此接口获取最新地址。
    /// 正常推流，如未设置对应录制计划，且180s无人观看此流，将会被自动掐断。
    @inlinable
    public func describeChannelLocalRecordURL(deviceId: String, channelId: String, recordId: String, expireTime: Int64, startTime: Int64? = nil, endTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelLocalRecordURLResponse {
        try await self.describeChannelLocalRecordURL(DescribeChannelLocalRecordURLRequest(deviceId: deviceId, channelId: channelId, recordId: recordId, expireTime: expireTime, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
