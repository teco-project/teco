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
    /// ModifyCDBProxyConnectionPool请求参数结构体
    public struct ModifyCDBProxyConnectionPoolRequest: TCRequestModel {
        /// 数据库代理ID
        public let proxyGroupId: String

        /// 是否开启连接池，true：开启连接池；
        ///                              false：关闭连接池。
        public let openConnectionPool: Bool

        /// 连接池类型，
        /// 通过DescribeProxyConnectionPoolConf获取连接池类型值
        public let connectionPoolType: String?

        /// 连接保留阈值：单位（秒）
        public let poolConnectionTimeOut: Int64?

        public init(proxyGroupId: String, openConnectionPool: Bool, connectionPoolType: String? = nil, poolConnectionTimeOut: Int64? = nil) {
            self.proxyGroupId = proxyGroupId
            self.openConnectionPool = openConnectionPool
            self.connectionPoolType = connectionPoolType
            self.poolConnectionTimeOut = poolConnectionTimeOut
        }

        enum CodingKeys: String, CodingKey {
            case proxyGroupId = "ProxyGroupId"
            case openConnectionPool = "OpenConnectionPool"
            case connectionPoolType = "ConnectionPoolType"
            case poolConnectionTimeOut = "PoolConnectionTimeOut"
        }
    }

    /// ModifyCDBProxyConnectionPool返回参数结构体
    public struct ModifyCDBProxyConnectionPoolResponse: TCResponseModel {
        /// 异步处理ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asyncRequestId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 配置数据库代理连接池
    ///
    /// 请求该接口配置数据库连接池；支持的连接池配置请求DescribeProxyConnectionPoolConf接口获取。
    @inlinable
    public func modifyCDBProxyConnectionPool(_ input: ModifyCDBProxyConnectionPoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCDBProxyConnectionPoolResponse> {
        self.client.execute(action: "ModifyCDBProxyConnectionPool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置数据库代理连接池
    ///
    /// 请求该接口配置数据库连接池；支持的连接池配置请求DescribeProxyConnectionPoolConf接口获取。
    @inlinable
    public func modifyCDBProxyConnectionPool(_ input: ModifyCDBProxyConnectionPoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCDBProxyConnectionPoolResponse {
        try await self.client.execute(action: "ModifyCDBProxyConnectionPool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置数据库代理连接池
    ///
    /// 请求该接口配置数据库连接池；支持的连接池配置请求DescribeProxyConnectionPoolConf接口获取。
    @inlinable
    public func modifyCDBProxyConnectionPool(proxyGroupId: String, openConnectionPool: Bool, connectionPoolType: String? = nil, poolConnectionTimeOut: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCDBProxyConnectionPoolResponse> {
        self.modifyCDBProxyConnectionPool(ModifyCDBProxyConnectionPoolRequest(proxyGroupId: proxyGroupId, openConnectionPool: openConnectionPool, connectionPoolType: connectionPoolType, poolConnectionTimeOut: poolConnectionTimeOut), region: region, logger: logger, on: eventLoop)
    }

    /// 配置数据库代理连接池
    ///
    /// 请求该接口配置数据库连接池；支持的连接池配置请求DescribeProxyConnectionPoolConf接口获取。
    @inlinable
    public func modifyCDBProxyConnectionPool(proxyGroupId: String, openConnectionPool: Bool, connectionPoolType: String? = nil, poolConnectionTimeOut: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCDBProxyConnectionPoolResponse {
        try await self.modifyCDBProxyConnectionPool(ModifyCDBProxyConnectionPoolRequest(proxyGroupId: proxyGroupId, openConnectionPool: openConnectionPool, connectionPoolType: connectionPoolType, poolConnectionTimeOut: poolConnectionTimeOut), region: region, logger: logger, on: eventLoop)
    }
}
