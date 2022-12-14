//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdb {
    /// QueryCDBProxy请求参数结构体
    public struct QueryCDBProxyRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 代理ID
        public let proxyGroupId: String?

        public init(instanceId: String, proxyGroupId: String? = nil) {
            self.instanceId = instanceId
            self.proxyGroupId = proxyGroupId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case proxyGroupId = "ProxyGroupId"
        }
    }

    /// QueryCDBProxy返回参数结构体
    public struct QueryCDBProxyResponse: TCResponseModel {
        /// 代理数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let count: UInt64?

        /// 代理信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxyGroup: [ProxyGroups]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case proxyGroup = "ProxyGroup"
            case requestId = "RequestId"
        }
    }

    /// 查询代理详情
    @inlinable
    public func queryCDBProxy(_ input: QueryCDBProxyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryCDBProxyResponse > {
        self.client.execute(action: "QueryCDBProxy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询代理详情
    @inlinable
    public func queryCDBProxy(_ input: QueryCDBProxyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCDBProxyResponse {
        try await self.client.execute(action: "QueryCDBProxy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询代理详情
    @inlinable
    public func queryCDBProxy(instanceId: String, proxyGroupId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryCDBProxyResponse > {
        self.queryCDBProxy(QueryCDBProxyRequest(instanceId: instanceId, proxyGroupId: proxyGroupId), logger: logger, on: eventLoop)
    }

    /// 查询代理详情
    @inlinable
    public func queryCDBProxy(instanceId: String, proxyGroupId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCDBProxyResponse {
        try await self.queryCDBProxy(QueryCDBProxyRequest(instanceId: instanceId, proxyGroupId: proxyGroupId), logger: logger, on: eventLoop)
    }
}
