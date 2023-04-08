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
    /// DeleteRocketMQTopic请求参数结构体
    public struct DeleteRocketMQTopicRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 命名空间名称
        public let namespaceId: String

        /// 主题名称
        public let topic: String

        public init(clusterId: String, namespaceId: String, topic: String) {
            self.clusterId = clusterId
            self.namespaceId = namespaceId
            self.topic = topic
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
            case topic = "Topic"
        }
    }

    /// DeleteRocketMQTopic返回参数结构体
    public struct DeleteRocketMQTopicResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除RocketMQ主题
    @inlinable @discardableResult
    public func deleteRocketMQTopic(_ input: DeleteRocketMQTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRocketMQTopicResponse> {
        self.client.execute(action: "DeleteRocketMQTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除RocketMQ主题
    @inlinable @discardableResult
    public func deleteRocketMQTopic(_ input: DeleteRocketMQTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRocketMQTopicResponse {
        try await self.client.execute(action: "DeleteRocketMQTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除RocketMQ主题
    @inlinable @discardableResult
    public func deleteRocketMQTopic(clusterId: String, namespaceId: String, topic: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRocketMQTopicResponse> {
        self.deleteRocketMQTopic(.init(clusterId: clusterId, namespaceId: namespaceId, topic: topic), region: region, logger: logger, on: eventLoop)
    }

    /// 删除RocketMQ主题
    @inlinable @discardableResult
    public func deleteRocketMQTopic(clusterId: String, namespaceId: String, topic: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRocketMQTopicResponse {
        try await self.deleteRocketMQTopic(.init(clusterId: clusterId, namespaceId: namespaceId, topic: topic), region: region, logger: logger, on: eventLoop)
    }
}
