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

extension Tke {
    /// EnableClusterAudit请求参数结构体
    public struct EnableClusterAuditRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// CLS日志集ID
        public let logsetId: String?

        /// CLS日志主题ID
        public let topicId: String?

        public init(clusterId: String, logsetId: String? = nil, topicId: String? = nil) {
            self.clusterId = clusterId
            self.logsetId = logsetId
            self.topicId = topicId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case logsetId = "LogsetId"
            case topicId = "TopicId"
        }
    }

    /// EnableClusterAudit返回参数结构体
    public struct EnableClusterAuditResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启集群审计
    @inlinable @discardableResult
    public func enableClusterAudit(_ input: EnableClusterAuditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableClusterAuditResponse> {
        self.client.execute(action: "EnableClusterAudit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启集群审计
    @inlinable @discardableResult
    public func enableClusterAudit(_ input: EnableClusterAuditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableClusterAuditResponse {
        try await self.client.execute(action: "EnableClusterAudit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启集群审计
    @inlinable @discardableResult
    public func enableClusterAudit(clusterId: String, logsetId: String? = nil, topicId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableClusterAuditResponse> {
        self.enableClusterAudit(.init(clusterId: clusterId, logsetId: logsetId, topicId: topicId), region: region, logger: logger, on: eventLoop)
    }

    /// 开启集群审计
    @inlinable @discardableResult
    public func enableClusterAudit(clusterId: String, logsetId: String? = nil, topicId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableClusterAuditResponse {
        try await self.enableClusterAudit(.init(clusterId: clusterId, logsetId: logsetId, topicId: topicId), region: region, logger: logger, on: eventLoop)
    }
}
