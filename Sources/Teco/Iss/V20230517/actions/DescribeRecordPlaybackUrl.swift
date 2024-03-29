//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DescribeRecordPlaybackUrl请求参数结构体
    public struct DescribeRecordPlaybackUrlRequest: TCRequest {
        /// 设备通道ID
        public let channelId: String

        /// 回放开始时间，UTC秒数，例如：1662114146，开始和结束时间段最长为一天，且不能跨天
        public let startTime: UInt64

        /// 回放结束时间，UTC秒数，例如：1662114246，开始和结束时间段最长为一天，且不能跨天
        public let endTime: UInt64

        public init(channelId: String, startTime: UInt64, endTime: UInt64) {
            self.channelId = channelId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeRecordPlaybackUrl返回参数结构体
    public struct DescribeRecordPlaybackUrlResponse: TCResponse {
        /// 返回结果
        public let data: RecordPlaybackUrl

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取云端录像URL地址
    ///
    /// 用于获取云端录像回放url地址
    @inlinable
    public func describeRecordPlaybackUrl(_ input: DescribeRecordPlaybackUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordPlaybackUrlResponse> {
        self.client.execute(action: "DescribeRecordPlaybackUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云端录像URL地址
    ///
    /// 用于获取云端录像回放url地址
    @inlinable
    public func describeRecordPlaybackUrl(_ input: DescribeRecordPlaybackUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordPlaybackUrlResponse {
        try await self.client.execute(action: "DescribeRecordPlaybackUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云端录像URL地址
    ///
    /// 用于获取云端录像回放url地址
    @inlinable
    public func describeRecordPlaybackUrl(channelId: String, startTime: UInt64, endTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordPlaybackUrlResponse> {
        self.describeRecordPlaybackUrl(.init(channelId: channelId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云端录像URL地址
    ///
    /// 用于获取云端录像回放url地址
    @inlinable
    public func describeRecordPlaybackUrl(channelId: String, startTime: UInt64, endTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordPlaybackUrlResponse {
        try await self.describeRecordPlaybackUrl(.init(channelId: channelId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
