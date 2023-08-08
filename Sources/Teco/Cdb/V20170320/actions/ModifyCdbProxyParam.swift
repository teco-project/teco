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

extension Cdb {
    /// ModifyCdbProxyParam请求参数结构体
    public struct ModifyCdbProxyParamRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 代理组ID
        public let proxyGroupId: String

        /// 连接池阈值
        public let connectionPoolLimit: UInt64

        public init(instanceId: String, proxyGroupId: String, connectionPoolLimit: UInt64) {
            self.instanceId = instanceId
            self.proxyGroupId = proxyGroupId
            self.connectionPoolLimit = connectionPoolLimit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case proxyGroupId = "ProxyGroupId"
            case connectionPoolLimit = "ConnectionPoolLimit"
        }
    }

    /// ModifyCdbProxyParam返回参数结构体
    public struct ModifyCdbProxyParamResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 配置数据库代理参数
    @inlinable @discardableResult
    public func modifyCdbProxyParam(_ input: ModifyCdbProxyParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCdbProxyParamResponse> {
        self.client.execute(action: "ModifyCdbProxyParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置数据库代理参数
    @inlinable @discardableResult
    public func modifyCdbProxyParam(_ input: ModifyCdbProxyParamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCdbProxyParamResponse {
        try await self.client.execute(action: "ModifyCdbProxyParam", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置数据库代理参数
    @inlinable @discardableResult
    public func modifyCdbProxyParam(instanceId: String, proxyGroupId: String, connectionPoolLimit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCdbProxyParamResponse> {
        self.modifyCdbProxyParam(.init(instanceId: instanceId, proxyGroupId: proxyGroupId, connectionPoolLimit: connectionPoolLimit), region: region, logger: logger, on: eventLoop)
    }

    /// 配置数据库代理参数
    @inlinable @discardableResult
    public func modifyCdbProxyParam(instanceId: String, proxyGroupId: String, connectionPoolLimit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCdbProxyParamResponse {
        try await self.modifyCdbProxyParam(.init(instanceId: instanceId, proxyGroupId: proxyGroupId, connectionPoolLimit: connectionPoolLimit), region: region, logger: logger, on: eventLoop)
    }
}
