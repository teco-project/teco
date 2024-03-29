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

extension Iotvideoindustry {
    /// DescribeRecordStream请求参数结构体
    public struct DescribeRecordStreamRequest: TCRequest {
        /// 设备Id
        public let deviceId: String

        /// 流失效时间，UNIX时间戳，30天内
        public let expireTime: Int64

        /// 录像文件ID
        public let recordId: String?

        /// 录像流开始时间，当录像文件ID为空时有效，UNIX时间戳
        public let startTime: Int64?

        /// 录像流结束时间，当录像文件iD为空时有效，UNIX时间戳
        public let endTime: Int64?

        /// 通道唯一标识（此接口升级为必填字段）
        public let channelId: String?

        public init(deviceId: String, expireTime: Int64, recordId: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil, channelId: String? = nil) {
            self.deviceId = deviceId
            self.expireTime = expireTime
            self.recordId = recordId
            self.startTime = startTime
            self.endTime = endTime
            self.channelId = channelId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case expireTime = "ExpireTime"
            case recordId = "RecordId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case channelId = "ChannelId"
        }
    }

    /// DescribeRecordStream返回参数结构体
    public struct DescribeRecordStreamResponse: TCResponse {
        /// 结果
        public let data: DescribeRecordStreamData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取通道本地回放流地址（旧）
    ///
    /// 获取回放视频流地址
    /// 请使用DescribeChannelLocalRecordURL接口
    ///
    /// RecordId和StartTime/EndTime互斥
    /// 当存在RecordId时，StartTime和EndTime无效
    /// 当RecordId为空，StartTime和EndTime生效
    @inlinable
    public func describeRecordStream(_ input: DescribeRecordStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordStreamResponse> {
        self.client.execute(action: "DescribeRecordStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取通道本地回放流地址（旧）
    ///
    /// 获取回放视频流地址
    /// 请使用DescribeChannelLocalRecordURL接口
    ///
    /// RecordId和StartTime/EndTime互斥
    /// 当存在RecordId时，StartTime和EndTime无效
    /// 当RecordId为空，StartTime和EndTime生效
    @inlinable
    public func describeRecordStream(_ input: DescribeRecordStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordStreamResponse {
        try await self.client.execute(action: "DescribeRecordStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取通道本地回放流地址（旧）
    ///
    /// 获取回放视频流地址
    /// 请使用DescribeChannelLocalRecordURL接口
    ///
    /// RecordId和StartTime/EndTime互斥
    /// 当存在RecordId时，StartTime和EndTime无效
    /// 当RecordId为空，StartTime和EndTime生效
    @inlinable
    public func describeRecordStream(deviceId: String, expireTime: Int64, recordId: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil, channelId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordStreamResponse> {
        self.describeRecordStream(.init(deviceId: deviceId, expireTime: expireTime, recordId: recordId, startTime: startTime, endTime: endTime, channelId: channelId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取通道本地回放流地址（旧）
    ///
    /// 获取回放视频流地址
    /// 请使用DescribeChannelLocalRecordURL接口
    ///
    /// RecordId和StartTime/EndTime互斥
    /// 当存在RecordId时，StartTime和EndTime无效
    /// 当RecordId为空，StartTime和EndTime生效
    @inlinable
    public func describeRecordStream(deviceId: String, expireTime: Int64, recordId: String? = nil, startTime: Int64? = nil, endTime: Int64? = nil, channelId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordStreamResponse {
        try await self.describeRecordStream(.init(deviceId: deviceId, expireTime: expireTime, recordId: recordId, startTime: startTime, endTime: endTime, channelId: channelId), region: region, logger: logger, on: eventLoop)
    }
}
