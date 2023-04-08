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

extension Cam {
    /// GetRolePermissionBoundary请求参数结构体
    public struct GetRolePermissionBoundaryRequest: TCRequestModel {
        /// 角色ID
        public let roleId: String

        public init(roleId: String) {
            self.roleId = roleId
        }

        enum CodingKeys: String, CodingKey {
            case roleId = "RoleId"
        }
    }

    /// GetRolePermissionBoundary返回参数结构体
    public struct GetRolePermissionBoundaryResponse: TCResponseModel {
        /// 策略ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyId: Int64?

        /// 策略名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyName: String?

        /// 策略语法
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyDocument: String?

        /// 策略类型：1.自定义策略，2.预设策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyType: Int64?

        /// 创建方式：1.按产品功能或项目权限创建，2.按策略语法创建，3.按策略生成器创建，4.按标签授权创建，5.按权限边界规则创建
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createMode: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case policyDocument = "PolicyDocument"
            case policyType = "PolicyType"
            case createMode = "CreateMode"
            case requestId = "RequestId"
        }
    }

    /// 获取角色权限边界
    @inlinable
    public func getRolePermissionBoundary(_ input: GetRolePermissionBoundaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRolePermissionBoundaryResponse> {
        self.client.execute(action: "GetRolePermissionBoundary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取角色权限边界
    @inlinable
    public func getRolePermissionBoundary(_ input: GetRolePermissionBoundaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRolePermissionBoundaryResponse {
        try await self.client.execute(action: "GetRolePermissionBoundary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取角色权限边界
    @inlinable
    public func getRolePermissionBoundary(roleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRolePermissionBoundaryResponse> {
        self.getRolePermissionBoundary(.init(roleId: roleId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取角色权限边界
    @inlinable
    public func getRolePermissionBoundary(roleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRolePermissionBoundaryResponse {
        try await self.getRolePermissionBoundary(.init(roleId: roleId), region: region, logger: logger, on: eventLoop)
    }
}
