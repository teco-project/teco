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
    /// UntagRole请求参数结构体
    public struct UntagRoleRequest: TCRequestModel {
        /// 标签键
        public let tagKeys: [String]

        /// 角色名，与角色ID至少输入一个
        public let roleName: String?

        /// 角色ID，与角色名至少输入一个
        public let roleId: String?

        public init(tagKeys: [String], roleName: String? = nil, roleId: String? = nil) {
            self.tagKeys = tagKeys
            self.roleName = roleName
            self.roleId = roleId
        }

        enum CodingKeys: String, CodingKey {
            case tagKeys = "TagKeys"
            case roleName = "RoleName"
            case roleId = "RoleId"
        }
    }

    /// UntagRole返回参数结构体
    public struct UntagRoleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 角色解绑标签
    ///
    /// 角色解绑标签。
    @inlinable @discardableResult
    public func untagRole(_ input: UntagRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagRoleResponse> {
        self.client.execute(action: "UntagRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 角色解绑标签
    ///
    /// 角色解绑标签。
    @inlinable @discardableResult
    public func untagRole(_ input: UntagRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagRoleResponse {
        try await self.client.execute(action: "UntagRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 角色解绑标签
    ///
    /// 角色解绑标签。
    @inlinable @discardableResult
    public func untagRole(tagKeys: [String], roleName: String? = nil, roleId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagRoleResponse> {
        let input = UntagRoleRequest(tagKeys: tagKeys, roleName: roleName, roleId: roleId)
        return self.client.execute(action: "UntagRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 角色解绑标签
    ///
    /// 角色解绑标签。
    @inlinable @discardableResult
    public func untagRole(tagKeys: [String], roleName: String? = nil, roleId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagRoleResponse {
        let input = UntagRoleRequest(tagKeys: tagKeys, roleName: roleName, roleId: roleId)
        return try await self.client.execute(action: "UntagRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
