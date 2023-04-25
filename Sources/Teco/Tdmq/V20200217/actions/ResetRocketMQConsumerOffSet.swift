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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tdmq {
    /// ResetRocketMQConsumerOffSet请求参数结构体
    public struct ResetRocketMQConsumerOffSetRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 命名空间名称
        public let namespaceId: String

        /// 消费组名称
        public let groupId: String

        /// 主题名称
        public let topic: String

        /// 重置方式，0表示从最新位点开始，1表示从指定时间点开始
        public let type: UInt64

        /// 重置指定的时间戳，仅在 Type 为1是生效，以毫秒为单位
        public let resetTimestamp: UInt64?

        public init(clusterId: String, namespaceId: String, groupId: String, topic: String, type: UInt64, resetTimestamp: UInt64? = nil) {
            self.clusterId = clusterId
            self.namespaceId = namespaceId
            self.groupId = groupId
            self.topic = topic
            self.type = type
            self.resetTimestamp = resetTimestamp
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
            case groupId = "GroupId"
            case topic = "Topic"
            case type = "Type"
            case resetTimestamp = "ResetTimestamp"
        }
    }

    /// ResetRocketMQConsumerOffSet返回参数结构体
    public struct ResetRocketMQConsumerOffSetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置RocketMQ消费位点
    ///
    /// 重置指定Group的消费位点到指定时间戳
    @inlinable @discardableResult
    public func resetRocketMQConsumerOffSet(_ input: ResetRocketMQConsumerOffSetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetRocketMQConsumerOffSetResponse> {
        self.client.execute(action: "ResetRocketMQConsumerOffSet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置RocketMQ消费位点
    ///
    /// 重置指定Group的消费位点到指定时间戳
    @inlinable @discardableResult
    public func resetRocketMQConsumerOffSet(_ input: ResetRocketMQConsumerOffSetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetRocketMQConsumerOffSetResponse {
        try await self.client.execute(action: "ResetRocketMQConsumerOffSet", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置RocketMQ消费位点
    ///
    /// 重置指定Group的消费位点到指定时间戳
    @inlinable @discardableResult
    public func resetRocketMQConsumerOffSet(clusterId: String, namespaceId: String, groupId: String, topic: String, type: UInt64, resetTimestamp: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetRocketMQConsumerOffSetResponse> {
        self.resetRocketMQConsumerOffSet(.init(clusterId: clusterId, namespaceId: namespaceId, groupId: groupId, topic: topic, type: type, resetTimestamp: resetTimestamp), region: region, logger: logger, on: eventLoop)
    }

    /// 重置RocketMQ消费位点
    ///
    /// 重置指定Group的消费位点到指定时间戳
    @inlinable @discardableResult
    public func resetRocketMQConsumerOffSet(clusterId: String, namespaceId: String, groupId: String, topic: String, type: UInt64, resetTimestamp: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetRocketMQConsumerOffSetResponse {
        try await self.resetRocketMQConsumerOffSet(.init(clusterId: clusterId, namespaceId: namespaceId, groupId: groupId, topic: topic, type: type, resetTimestamp: resetTimestamp), region: region, logger: logger, on: eventLoop)
    }
}
