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

extension Tdmq {
    /// ResetMsgSubOffsetByTimestamp请求参数结构体
    public struct ResetMsgSubOffsetByTimestampRequest: TCRequestModel {
        /// 命名空间名称。
        public let environmentId: String

        /// 主题名称。
        public let topicName: String

        /// 订阅者名称。
        public let subscription: String

        /// 时间戳，精确到毫秒。
        public let toTimestamp: UInt64

        /// Pulsar 集群的ID
        public let clusterId: String?

        public init(environmentId: String, topicName: String, subscription: String, toTimestamp: UInt64, clusterId: String? = nil) {
            self.environmentId = environmentId
            self.topicName = topicName
            self.subscription = subscription
            self.toTimestamp = toTimestamp
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case topicName = "TopicName"
            case subscription = "Subscription"
            case toTimestamp = "ToTimestamp"
            case clusterId = "ClusterId"
        }
    }

    /// ResetMsgSubOffsetByTimestamp返回参数结构体
    public struct ResetMsgSubOffsetByTimestampResponse: TCResponseModel {
        /// 结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 消息回溯
    ///
    /// 根据时间戳进行消息回溯，精确到毫秒
    @inlinable
    public func resetMsgSubOffsetByTimestamp(_ input: ResetMsgSubOffsetByTimestampRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetMsgSubOffsetByTimestampResponse> {
        self.client.execute(action: "ResetMsgSubOffsetByTimestamp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 消息回溯
    ///
    /// 根据时间戳进行消息回溯，精确到毫秒
    @inlinable
    public func resetMsgSubOffsetByTimestamp(_ input: ResetMsgSubOffsetByTimestampRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetMsgSubOffsetByTimestampResponse {
        try await self.client.execute(action: "ResetMsgSubOffsetByTimestamp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 消息回溯
    ///
    /// 根据时间戳进行消息回溯，精确到毫秒
    @inlinable
    public func resetMsgSubOffsetByTimestamp(environmentId: String, topicName: String, subscription: String, toTimestamp: UInt64, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetMsgSubOffsetByTimestampResponse> {
        self.resetMsgSubOffsetByTimestamp(.init(environmentId: environmentId, topicName: topicName, subscription: subscription, toTimestamp: toTimestamp, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 消息回溯
    ///
    /// 根据时间戳进行消息回溯，精确到毫秒
    @inlinable
    public func resetMsgSubOffsetByTimestamp(environmentId: String, topicName: String, subscription: String, toTimestamp: UInt64, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetMsgSubOffsetByTimestampResponse {
        try await self.resetMsgSubOffsetByTimestamp(.init(environmentId: environmentId, topicName: topicName, subscription: subscription, toTimestamp: toTimestamp, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
