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

extension Cdb {
    /// ReloadBalanceProxyNode请求参数结构体
    public struct ReloadBalanceProxyNodeRequest: TCRequestModel {
        /// 代理组ID
        public let proxyGroupId: String

        /// 代理组地址ID
        public let proxyAddressId: String?

        public init(proxyGroupId: String, proxyAddressId: String? = nil) {
            self.proxyGroupId = proxyGroupId
            self.proxyAddressId = proxyAddressId
        }

        enum CodingKeys: String, CodingKey {
            case proxyGroupId = "ProxyGroupId"
            case proxyAddressId = "ProxyAddressId"
        }
    }

    /// ReloadBalanceProxyNode返回参数结构体
    public struct ReloadBalanceProxyNodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 负载均衡数据库代理
    ///
    /// 重新负载均衡数据库代理
    @inlinable @discardableResult
    public func reloadBalanceProxyNode(_ input: ReloadBalanceProxyNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReloadBalanceProxyNodeResponse> {
        self.client.execute(action: "ReloadBalanceProxyNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 负载均衡数据库代理
    ///
    /// 重新负载均衡数据库代理
    @inlinable @discardableResult
    public func reloadBalanceProxyNode(_ input: ReloadBalanceProxyNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReloadBalanceProxyNodeResponse {
        try await self.client.execute(action: "ReloadBalanceProxyNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 负载均衡数据库代理
    ///
    /// 重新负载均衡数据库代理
    @inlinable @discardableResult
    public func reloadBalanceProxyNode(proxyGroupId: String, proxyAddressId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReloadBalanceProxyNodeResponse> {
        let input = ReloadBalanceProxyNodeRequest(proxyGroupId: proxyGroupId, proxyAddressId: proxyAddressId)
        return self.client.execute(action: "ReloadBalanceProxyNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 负载均衡数据库代理
    ///
    /// 重新负载均衡数据库代理
    @inlinable @discardableResult
    public func reloadBalanceProxyNode(proxyGroupId: String, proxyAddressId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReloadBalanceProxyNodeResponse {
        let input = ReloadBalanceProxyNodeRequest(proxyGroupId: proxyGroupId, proxyAddressId: proxyAddressId)
        return try await self.client.execute(action: "ReloadBalanceProxyNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
