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
    /// CloseProxy请求参数结构体
    public struct CloseProxyRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 数据库代理组ID
        public let proxyGroupId: String?

        /// 是否只关闭读写分离，取值：是 "true","false"
        public let onlyCloseRW: Bool?

        public init(clusterId: String, proxyGroupId: String? = nil, onlyCloseRW: Bool? = nil) {
            self.clusterId = clusterId
            self.proxyGroupId = proxyGroupId
            self.onlyCloseRW = onlyCloseRW
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case proxyGroupId = "ProxyGroupId"
            case onlyCloseRW = "OnlyCloseRW"
        }
    }

    /// CloseProxy返回参数结构体
    public struct CloseProxyResponse: TCResponse {
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

    /// 关闭数据库代理
    @inlinable
    public func closeProxy(_ input: CloseProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseProxyResponse> {
        self.client.execute(action: "CloseProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭数据库代理
    @inlinable
    public func closeProxy(_ input: CloseProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseProxyResponse {
        try await self.client.execute(action: "CloseProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭数据库代理
    @inlinable
    public func closeProxy(clusterId: String, proxyGroupId: String? = nil, onlyCloseRW: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseProxyResponse> {
        self.closeProxy(.init(clusterId: clusterId, proxyGroupId: proxyGroupId, onlyCloseRW: onlyCloseRW), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭数据库代理
    @inlinable
    public func closeProxy(clusterId: String, proxyGroupId: String? = nil, onlyCloseRW: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseProxyResponse {
        try await self.closeProxy(.init(clusterId: clusterId, proxyGroupId: proxyGroupId, onlyCloseRW: onlyCloseRW), region: region, logger: logger, on: eventLoop)
    }
}
