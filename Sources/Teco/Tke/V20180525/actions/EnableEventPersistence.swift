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

extension Tke {
    /// EnableEventPersistence请求参数结构体
    public struct EnableEventPersistenceRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// cls服务的logsetID
        public let logsetId: String?

        /// cls服务的topicID
        public let topicId: String?

        /// topic所在地域，默认为集群所在地域
        public let topicRegion: String?

        public init(clusterId: String, logsetId: String? = nil, topicId: String? = nil, topicRegion: String? = nil) {
            self.clusterId = clusterId
            self.logsetId = logsetId
            self.topicId = topicId
            self.topicRegion = topicRegion
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case logsetId = "LogsetId"
            case topicId = "TopicId"
            case topicRegion = "TopicRegion"
        }
    }

    /// EnableEventPersistence返回参数结构体
    public struct EnableEventPersistenceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启事件持久化功能
    @inlinable @discardableResult
    public func enableEventPersistence(_ input: EnableEventPersistenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableEventPersistenceResponse> {
        self.client.execute(action: "EnableEventPersistence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启事件持久化功能
    @inlinable @discardableResult
    public func enableEventPersistence(_ input: EnableEventPersistenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableEventPersistenceResponse {
        try await self.client.execute(action: "EnableEventPersistence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启事件持久化功能
    @inlinable @discardableResult
    public func enableEventPersistence(clusterId: String, logsetId: String? = nil, topicId: String? = nil, topicRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableEventPersistenceResponse> {
        self.enableEventPersistence(.init(clusterId: clusterId, logsetId: logsetId, topicId: topicId, topicRegion: topicRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 开启事件持久化功能
    @inlinable @discardableResult
    public func enableEventPersistence(clusterId: String, logsetId: String? = nil, topicId: String? = nil, topicRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableEventPersistenceResponse {
        try await self.enableEventPersistence(.init(clusterId: clusterId, logsetId: logsetId, topicId: topicId, topicRegion: topicRegion), region: region, logger: logger, on: eventLoop)
    }
}
