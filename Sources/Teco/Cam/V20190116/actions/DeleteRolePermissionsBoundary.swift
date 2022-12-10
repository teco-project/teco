//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 删除角色权限边界
    @inlinable
    public func deleteRolePermissionsBoundary(_ input: DeleteRolePermissionsBoundaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRolePermissionsBoundaryResponse > {
        self.client.execute(action: "DeleteRolePermissionsBoundary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除角色权限边界
    @inlinable
    public func deleteRolePermissionsBoundary(_ input: DeleteRolePermissionsBoundaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRolePermissionsBoundaryResponse {
        try await self.client.execute(action: "DeleteRolePermissionsBoundary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteRolePermissionsBoundary请求参数结构体
    public struct DeleteRolePermissionsBoundaryRequest: TCRequestModel {
        /// 角色ID（与角色名至少填一个）
        public let roleId: String?
        
        /// 角色名（与角色ID至少填一个）
        public let roleName: String?
        
        public init (roleId: String?, roleName: String?) {
            self.roleId = roleId
            self.roleName = roleName
        }
        
        enum CodingKeys: String, CodingKey {
            case roleId = "RoleId"
            case roleName = "RoleName"
        }
    }
    
    /// DeleteRolePermissionsBoundary返回参数结构体
    public struct DeleteRolePermissionsBoundaryResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
