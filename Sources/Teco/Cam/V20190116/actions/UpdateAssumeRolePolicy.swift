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
    /// UpdateAssumeRolePolicy请求参数结构体
    public struct UpdateAssumeRolePolicyRequest: TCRequestModel {
        /// 策略文档，示例：{"version":"2.0","statement":[{"action":"name/sts:AssumeRole","effect":"allow","principal":{"service":["cloudaudit.cloud.tencent.com","cls.cloud.tencent.com"]}}]}，principal用于指定角色的授权对象。获取该参数可参阅 获取角色详情（https://cloud.tencent.com/document/product/598/36221） 输出参数RoleInfo
        public let policyDocument: String

        /// 角色ID，用于指定角色，入参 RoleId 与 RoleName 二选一
        public let roleId: String?

        /// 角色名称，用于指定角色，入参 RoleId 与 RoleName 二选一
        public let roleName: String?

        public init(policyDocument: String, roleId: String? = nil, roleName: String? = nil) {
            self.policyDocument = policyDocument
            self.roleId = roleId
            self.roleName = roleName
        }

        enum CodingKeys: String, CodingKey {
            case policyDocument = "PolicyDocument"
            case roleId = "RoleId"
            case roleName = "RoleName"
        }
    }

    /// UpdateAssumeRolePolicy返回参数结构体
    public struct UpdateAssumeRolePolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改角色信任策略
    ///
    /// 本接口（UpdateAssumeRolePolicy）用于修改角色信任策略的策略文档。
    @inlinable @discardableResult
    public func updateAssumeRolePolicy(_ input: UpdateAssumeRolePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAssumeRolePolicyResponse> {
        self.client.execute(action: "UpdateAssumeRolePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改角色信任策略
    ///
    /// 本接口（UpdateAssumeRolePolicy）用于修改角色信任策略的策略文档。
    @inlinable @discardableResult
    public func updateAssumeRolePolicy(_ input: UpdateAssumeRolePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssumeRolePolicyResponse {
        try await self.client.execute(action: "UpdateAssumeRolePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改角色信任策略
    ///
    /// 本接口（UpdateAssumeRolePolicy）用于修改角色信任策略的策略文档。
    @inlinable @discardableResult
    public func updateAssumeRolePolicy(policyDocument: String, roleId: String? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAssumeRolePolicyResponse> {
        let input = UpdateAssumeRolePolicyRequest(policyDocument: policyDocument, roleId: roleId, roleName: roleName)
        return self.client.execute(action: "UpdateAssumeRolePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改角色信任策略
    ///
    /// 本接口（UpdateAssumeRolePolicy）用于修改角色信任策略的策略文档。
    @inlinable @discardableResult
    public func updateAssumeRolePolicy(policyDocument: String, roleId: String? = nil, roleName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssumeRolePolicyResponse {
        let input = UpdateAssumeRolePolicyRequest(policyDocument: policyDocument, roleId: roleId, roleName: roleName)
        return try await self.client.execute(action: "UpdateAssumeRolePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
