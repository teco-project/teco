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

extension Cam {
    /// PutRolePermissionsBoundary请求参数结构体
    public struct PutRolePermissionsBoundaryRequest: TCRequestModel {
        /// 策略ID
        public let policyId: Int64

        /// 角色ID（与角色名至少填一个）
        public let roleId: String?

        /// 角色名（与角色ID至少填一个）
        public let roleName: String?

        public init(policyId: Int64, roleId: String? = nil, roleName: String? = nil) {
            self.policyId = policyId
            self.roleId = roleId
            self.roleName = roleName
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case roleId = "RoleId"
            case roleName = "RoleName"
        }
    }

    /// PutRolePermissionsBoundary返回参数结构体
    public struct PutRolePermissionsBoundaryResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置角色权限边界
    @inlinable @discardableResult
    public func putRolePermissionsBoundary(_ input: PutRolePermissionsBoundaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutRolePermissionsBoundaryResponse> {
        self.client.execute(action: "PutRolePermissionsBoundary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置角色权限边界
    @inlinable @discardableResult
    public func putRolePermissionsBoundary(_ input: PutRolePermissionsBoundaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutRolePermissionsBoundaryResponse {
        try await self.client.execute(action: "PutRolePermissionsBoundary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置角色权限边界
    @inlinable @discardableResult
    public func putRolePermissionsBoundary(policyId: Int64, roleId: String? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutRolePermissionsBoundaryResponse> {
        let input = PutRolePermissionsBoundaryRequest(policyId: policyId, roleId: roleId, roleName: roleName)
        return self.client.execute(action: "PutRolePermissionsBoundary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置角色权限边界
    @inlinable @discardableResult
    public func putRolePermissionsBoundary(policyId: Int64, roleId: String? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutRolePermissionsBoundaryResponse {
        let input = PutRolePermissionsBoundaryRequest(policyId: policyId, roleId: roleId, roleName: roleName)
        return try await self.client.execute(action: "PutRolePermissionsBoundary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
