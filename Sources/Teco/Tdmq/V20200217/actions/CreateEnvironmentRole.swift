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

extension Tdmq {
    /// CreateEnvironmentRole请求参数结构体
    public struct CreateEnvironmentRoleRequest: TCRequestModel {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 角色名称。
        public let roleName: String

        /// 授权项，最多只能包含produce、consume两项的非空字符串数组。
        public let permissions: [String]

        /// 必填字段，集群的ID
        public let clusterId: String?

        public init(environmentId: String, roleName: String, permissions: [String], clusterId: String? = nil) {
            self.environmentId = environmentId
            self.roleName = roleName
            self.permissions = permissions
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case roleName = "RoleName"
            case permissions = "Permissions"
            case clusterId = "ClusterId"
        }
    }

    /// CreateEnvironmentRole返回参数结构体
    public struct CreateEnvironmentRoleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建环境角色授权
    @inlinable @discardableResult
    public func createEnvironmentRole(_ input: CreateEnvironmentRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEnvironmentRoleResponse> {
        self.client.execute(action: "CreateEnvironmentRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建环境角色授权
    @inlinable @discardableResult
    public func createEnvironmentRole(_ input: CreateEnvironmentRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnvironmentRoleResponse {
        try await self.client.execute(action: "CreateEnvironmentRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建环境角色授权
    @inlinable @discardableResult
    public func createEnvironmentRole(environmentId: String, roleName: String, permissions: [String], clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEnvironmentRoleResponse> {
        let input = CreateEnvironmentRoleRequest(environmentId: environmentId, roleName: roleName, permissions: permissions, clusterId: clusterId)
        return self.client.execute(action: "CreateEnvironmentRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建环境角色授权
    @inlinable @discardableResult
    public func createEnvironmentRole(environmentId: String, roleName: String, permissions: [String], clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEnvironmentRoleResponse {
        let input = CreateEnvironmentRoleRequest(environmentId: environmentId, roleName: roleName, permissions: permissions, clusterId: clusterId)
        return try await self.client.execute(action: "CreateEnvironmentRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
