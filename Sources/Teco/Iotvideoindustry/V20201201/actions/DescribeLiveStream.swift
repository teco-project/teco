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
    /// DescribeLiveStream请求参数结构体
    public struct DescribeLiveStreamRequest: TCRequest {
        /// 频道ID
        public let liveChannelId: String

        /// 过期时间 秒级unix时间戳
        public let expireTime: Int64

        public init(liveChannelId: String, expireTime: Int64) {
            self.liveChannelId = liveChannelId
            self.expireTime = expireTime
        }

        enum CodingKeys: String, CodingKey {
            case liveChannelId = "LiveChannelId"
            case expireTime = "ExpireTime"
        }
    }

    /// DescribeLiveStream返回参数结构体
    public struct DescribeLiveStreamResponse: TCResponse {
        /// 拉流地址，只有在推流情况下才有
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: StreamAddress?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 直播拉流接口
    @inlinable
    public func describeLiveStream(_ input: DescribeLiveStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamResponse> {
        self.client.execute(action: "DescribeLiveStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播拉流接口
    @inlinable
    public func describeLiveStream(_ input: DescribeLiveStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamResponse {
        try await self.client.execute(action: "DescribeLiveStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播拉流接口
    @inlinable
    public func describeLiveStream(liveChannelId: String, expireTime: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamResponse> {
        self.describeLiveStream(.init(liveChannelId: liveChannelId, expireTime: expireTime), region: region, logger: logger, on: eventLoop)
    }

    /// 直播拉流接口
    @inlinable
    public func describeLiveStream(liveChannelId: String, expireTime: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamResponse {
        try await self.describeLiveStream(.init(liveChannelId: liveChannelId, expireTime: expireTime), region: region, logger: logger, on: eventLoop)
    }
}
