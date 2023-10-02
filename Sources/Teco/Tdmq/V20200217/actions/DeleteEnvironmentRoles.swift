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
    /// DeleteEnvironmentRoles请求参数结构体
    public struct DeleteEnvironmentRolesRequest: TCRequest {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 角色名称数组。
        public let roleNames: [String]

        /// 必填字段，集群的ID
        public let clusterId: String

        public init(environmentId: String, roleNames: [String], clusterId: String) {
            self.environmentId = environmentId
            self.roleNames = roleNames
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case roleNames = "RoleNames"
            case clusterId = "ClusterId"
        }
    }

    /// DeleteEnvironmentRoles返回参数结构体
    public struct DeleteEnvironmentRolesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除环境角色授权
    ///
    /// 删除环境角色授权。
    @inlinable @discardableResult
    public func deleteEnvironmentRoles(_ input: DeleteEnvironmentRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEnvironmentRolesResponse> {
        self.client.execute(action: "DeleteEnvironmentRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除环境角色授权
    ///
    /// 删除环境角色授权。
    @inlinable @discardableResult
    public func deleteEnvironmentRoles(_ input: DeleteEnvironmentRolesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEnvironmentRolesResponse {
        try await self.client.execute(action: "DeleteEnvironmentRoles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除环境角色授权
    ///
    /// 删除环境角色授权。
    @inlinable @discardableResult
    public func deleteEnvironmentRoles(environmentId: String, roleNames: [String], clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEnvironmentRolesResponse> {
        self.deleteEnvironmentRoles(.init(environmentId: environmentId, roleNames: roleNames, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除环境角色授权
    ///
    /// 删除环境角色授权。
    @inlinable @discardableResult
    public func deleteEnvironmentRoles(environmentId: String, roleNames: [String], clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEnvironmentRolesResponse {
        try await self.deleteEnvironmentRoles(.init(environmentId: environmentId, roleNames: roleNames, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
