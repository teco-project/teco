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

extension Tdmq {
    /// DeleteRoles请求参数结构体
    public struct DeleteRolesRequest: TCRequestModel {
        /// 角色名称数组。
        public let roleNames: [String]

        /// 必填字段，集群Id
        public let clusterId: String?

        public init(roleNames: [String], clusterId: String? = nil) {
            self.roleNames = roleNames
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case roleNames = "RoleNames"
            case clusterId = "ClusterId"
        }
    }

    /// DeleteRoles返回参数结构体
    public struct DeleteRolesResponse: TCResponseModel {
        /// 成功删除的角色名称数组。
        public let roleNames: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roleNames = "RoleNames"
            case requestId = "RequestId"
        }
    }

    /// 删除角色
    ///
    /// 删除角色，支持批量。
    @inlinable
    public func deleteRoles(_ input: DeleteRolesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRolesResponse > {
        self.client.execute(action: "DeleteRoles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除角色
    ///
    /// 删除角色，支持批量。
    @inlinable
    public func deleteRoles(_ input: DeleteRolesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRolesResponse {
        try await self.client.execute(action: "DeleteRoles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除角色
    ///
    /// 删除角色，支持批量。
    @inlinable
    public func deleteRoles(roleNames: [String], clusterId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRolesResponse > {
        self.deleteRoles(DeleteRolesRequest(roleNames: roleNames, clusterId: clusterId), logger: logger, on: eventLoop)
    }

    /// 删除角色
    ///
    /// 删除角色，支持批量。
    @inlinable
    public func deleteRoles(roleNames: [String], clusterId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRolesResponse {
        try await self.deleteRoles(DeleteRolesRequest(roleNames: roleNames, clusterId: clusterId), logger: logger, on: eventLoop)
    }
}
