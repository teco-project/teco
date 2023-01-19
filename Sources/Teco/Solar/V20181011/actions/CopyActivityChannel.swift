//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Solar {
    /// CopyActivityChannel请求参数结构体
    public struct CopyActivityChannelRequest: TCRequestModel {
        /// 活动ID
        public let activityId: String

        /// 来源渠道ID
        public let channelFrom: String

        /// 目的渠道id
        public let channelTo: [String]

        public init(activityId: String, channelFrom: String, channelTo: [String]) {
            self.activityId = activityId
            self.channelFrom = channelFrom
            self.channelTo = channelTo
        }

        enum CodingKeys: String, CodingKey {
            case activityId = "ActivityId"
            case channelFrom = "ChannelFrom"
            case channelTo = "ChannelTo"
        }
    }

    /// CopyActivityChannel返回参数结构体
    public struct CopyActivityChannelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 复制活动渠道的策略
    @inlinable
    public func copyActivityChannel(_ input: CopyActivityChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyActivityChannelResponse> {
        self.client.execute(action: "CopyActivityChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复制活动渠道的策略
    @inlinable
    public func copyActivityChannel(_ input: CopyActivityChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyActivityChannelResponse {
        try await self.client.execute(action: "CopyActivityChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 复制活动渠道的策略
    @inlinable
    public func copyActivityChannel(activityId: String, channelFrom: String, channelTo: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyActivityChannelResponse> {
        self.copyActivityChannel(CopyActivityChannelRequest(activityId: activityId, channelFrom: channelFrom, channelTo: channelTo), region: region, logger: logger, on: eventLoop)
    }

    /// 复制活动渠道的策略
    @inlinable
    public func copyActivityChannel(activityId: String, channelFrom: String, channelTo: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyActivityChannelResponse {
        try await self.copyActivityChannel(CopyActivityChannelRequest(activityId: activityId, channelFrom: channelFrom, channelTo: channelTo), region: region, logger: logger, on: eventLoop)
    }
}
