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
    /// ModifyClusterAuthenticationOptions请求参数结构体
    public struct ModifyClusterAuthenticationOptionsRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// ServiceAccount认证配置
        public let serviceAccounts: ServiceAccountAuthenticationOptions?

        /// OIDC认证配置
        public let oidcConfig: OIDCConfigAuthenticationOptions?

        public init(clusterId: String, serviceAccounts: ServiceAccountAuthenticationOptions? = nil, oidcConfig: OIDCConfigAuthenticationOptions? = nil) {
            self.clusterId = clusterId
            self.serviceAccounts = serviceAccounts
            self.oidcConfig = oidcConfig
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case serviceAccounts = "ServiceAccounts"
            case oidcConfig = "OIDCConfig"
        }
    }

    /// ModifyClusterAuthenticationOptions返回参数结构体
    public struct ModifyClusterAuthenticationOptionsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改集群认证配置
    @inlinable @discardableResult
    public func modifyClusterAuthenticationOptions(_ input: ModifyClusterAuthenticationOptionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterAuthenticationOptionsResponse> {
        self.client.execute(action: "ModifyClusterAuthenticationOptions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改集群认证配置
    @inlinable @discardableResult
    public func modifyClusterAuthenticationOptions(_ input: ModifyClusterAuthenticationOptionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterAuthenticationOptionsResponse {
        try await self.client.execute(action: "ModifyClusterAuthenticationOptions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改集群认证配置
    @inlinable @discardableResult
    public func modifyClusterAuthenticationOptions(clusterId: String, serviceAccounts: ServiceAccountAuthenticationOptions? = nil, oidcConfig: OIDCConfigAuthenticationOptions? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterAuthenticationOptionsResponse> {
        self.modifyClusterAuthenticationOptions(.init(clusterId: clusterId, serviceAccounts: serviceAccounts, oidcConfig: oidcConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 修改集群认证配置
    @inlinable @discardableResult
    public func modifyClusterAuthenticationOptions(clusterId: String, serviceAccounts: ServiceAccountAuthenticationOptions? = nil, oidcConfig: OIDCConfigAuthenticationOptions? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterAuthenticationOptionsResponse {
        try await self.modifyClusterAuthenticationOptions(.init(clusterId: clusterId, serviceAccounts: serviceAccounts, oidcConfig: oidcConfig), region: region, logger: logger, on: eventLoop)
    }
}
