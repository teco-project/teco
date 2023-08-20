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
    /// PlayRecord请求参数结构体
    public struct PlayRecordRequest: TCRequest {
        /// 通道 ID（从查询通道DescribeDeviceChannel接口中获取）
        public let channelId: String

        /// 起始时间
        public let start: Int64

        /// 结束时间
        public let end: Int64

        /// 流类型（1:主码流；2:子码流（不可以和 Resolution 同时下发））
        public let streamType: Int64?

        /// 分辨率（1:QCIF；2:CIF； 3:4CIF； 4:D1； 5:720P； 6:1080P/I； 自定义的19201080等等（需设备支持）（不可以和 StreamType 同时下发））
        public let resolution: String?

        public init(channelId: String, start: Int64, end: Int64, streamType: Int64? = nil, resolution: String? = nil) {
            self.channelId = channelId
            self.start = start
            self.end = end
            self.streamType = streamType
            self.resolution = resolution
        }

        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
            case start = "Start"
            case end = "End"
            case streamType = "StreamType"
            case resolution = "Resolution"
        }
    }

    /// PlayRecord返回参数结构体
    public struct PlayRecordResponse: TCResponse {
        /// 返回结果
        public let data: PlayRecordData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取本地录像URL地址
    ///
    /// 用于获取设备本地录像 URL 地址。
    @inlinable
    public func playRecord(_ input: PlayRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PlayRecordResponse> {
        self.client.execute(action: "PlayRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取本地录像URL地址
    ///
    /// 用于获取设备本地录像 URL 地址。
    @inlinable
    public func playRecord(_ input: PlayRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PlayRecordResponse {
        try await self.client.execute(action: "PlayRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取本地录像URL地址
    ///
    /// 用于获取设备本地录像 URL 地址。
    @inlinable
    public func playRecord(channelId: String, start: Int64, end: Int64, streamType: Int64? = nil, resolution: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PlayRecordResponse> {
        self.playRecord(.init(channelId: channelId, start: start, end: end, streamType: streamType, resolution: resolution), region: region, logger: logger, on: eventLoop)
    }

    /// 获取本地录像URL地址
    ///
    /// 用于获取设备本地录像 URL 地址。
    @inlinable
    public func playRecord(channelId: String, start: Int64, end: Int64, streamType: Int64? = nil, resolution: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PlayRecordResponse {
        try await self.playRecord(.init(channelId: channelId, start: start, end: end, streamType: streamType, resolution: resolution), region: region, logger: logger, on: eventLoop)
    }
}
