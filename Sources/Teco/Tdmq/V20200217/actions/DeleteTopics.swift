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
    /// DeleteTopics请求参数结构体
    public struct DeleteTopicsRequest: TCRequest {
        /// 主题集合，每次最多删除20个。
        public let topicSets: [TopicRecord]

        /// pulsar集群Id。
        public let clusterId: String

        /// 环境（命名空间）名称。
        public let environmentId: String?

        /// 是否强制删除，默认为false
        public let force: Bool?

        public init(topicSets: [TopicRecord], clusterId: String, environmentId: String? = nil, force: Bool? = nil) {
            self.topicSets = topicSets
            self.clusterId = clusterId
            self.environmentId = environmentId
            self.force = force
        }

        enum CodingKeys: String, CodingKey {
            case topicSets = "TopicSets"
            case clusterId = "ClusterId"
            case environmentId = "EnvironmentId"
            case force = "Force"
        }
    }

    /// DeleteTopics返回参数结构体
    public struct DeleteTopicsResponse: TCResponse {
        /// 被删除的主题数组。
        public let topicSets: [TopicRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topicSets = "TopicSets"
            case requestId = "RequestId"
        }
    }

    /// 删除主题
    ///
    /// 批量删除topics
    @inlinable
    public func deleteTopics(_ input: DeleteTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTopicsResponse> {
        self.client.execute(action: "DeleteTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除主题
    ///
    /// 批量删除topics
    @inlinable
    public func deleteTopics(_ input: DeleteTopicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicsResponse {
        try await self.client.execute(action: "DeleteTopics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除主题
    ///
    /// 批量删除topics
    @inlinable
    public func deleteTopics(topicSets: [TopicRecord], clusterId: String, environmentId: String? = nil, force: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTopicsResponse> {
        self.deleteTopics(.init(topicSets: topicSets, clusterId: clusterId, environmentId: environmentId, force: force), region: region, logger: logger, on: eventLoop)
    }

    /// 删除主题
    ///
    /// 批量删除topics
    @inlinable
    public func deleteTopics(topicSets: [TopicRecord], clusterId: String, environmentId: String? = nil, force: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicsResponse {
        try await self.deleteTopics(.init(topicSets: topicSets, clusterId: clusterId, environmentId: environmentId, force: force), region: region, logger: logger, on: eventLoop)
    }
}
