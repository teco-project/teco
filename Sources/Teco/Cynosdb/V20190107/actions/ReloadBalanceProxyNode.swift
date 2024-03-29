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

extension Cynosdb {
    /// ReloadBalanceProxyNode请求参数结构体
    public struct ReloadBalanceProxyNodeRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 数据库代理组ID
        public let proxyGroupId: String

        public init(clusterId: String, proxyGroupId: String) {
            self.clusterId = clusterId
            self.proxyGroupId = proxyGroupId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case proxyGroupId = "ProxyGroupId"
        }
    }

    /// ReloadBalanceProxyNode返回参数结构体
    public struct ReloadBalanceProxyNodeResponse: TCResponse {
        /// 异步流程ID
        public let flowId: Int64

        /// 异步任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 负载均衡数据库代理
    @inlinable
    public func reloadBalanceProxyNode(_ input: ReloadBalanceProxyNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReloadBalanceProxyNodeResponse> {
        self.client.execute(action: "ReloadBalanceProxyNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 负载均衡数据库代理
    @inlinable
    public func reloadBalanceProxyNode(_ input: ReloadBalanceProxyNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReloadBalanceProxyNodeResponse {
        try await self.client.execute(action: "ReloadBalanceProxyNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 负载均衡数据库代理
    @inlinable
    public func reloadBalanceProxyNode(clusterId: String, proxyGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReloadBalanceProxyNodeResponse> {
        self.reloadBalanceProxyNode(.init(clusterId: clusterId, proxyGroupId: proxyGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 负载均衡数据库代理
    @inlinable
    public func reloadBalanceProxyNode(clusterId: String, proxyGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReloadBalanceProxyNodeResponse {
        try await self.reloadBalanceProxyNode(.init(clusterId: clusterId, proxyGroupId: proxyGroupId), region: region, logger: logger, on: eventLoop)
    }
}
