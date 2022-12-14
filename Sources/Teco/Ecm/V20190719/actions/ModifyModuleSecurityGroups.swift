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

extension Ecm {
    /// ModifyModuleSecurityGroups请求参数结构体
    public struct ModifyModuleSecurityGroupsRequest: TCRequestModel {
        /// 安全组列表。不超过5个。
        public let securityGroupIdSet: [String]

        /// 模块id。
        public let moduleId: String

        public init(securityGroupIdSet: [String], moduleId: String) {
            self.securityGroupIdSet = securityGroupIdSet
            self.moduleId = moduleId
        }

        enum CodingKeys: String, CodingKey {
            case securityGroupIdSet = "SecurityGroupIdSet"
            case moduleId = "ModuleId"
        }
    }

    /// ModifyModuleSecurityGroups返回参数结构体
    public struct ModifyModuleSecurityGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改模块默认安全组
    @inlinable
    public func modifyModuleSecurityGroups(_ input: ModifyModuleSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyModuleSecurityGroupsResponse > {
        self.client.execute(action: "ModifyModuleSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模块默认安全组
    @inlinable
    public func modifyModuleSecurityGroups(_ input: ModifyModuleSecurityGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleSecurityGroupsResponse {
        try await self.client.execute(action: "ModifyModuleSecurityGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模块默认安全组
    @inlinable
    public func modifyModuleSecurityGroups(securityGroupIdSet: [String], moduleId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyModuleSecurityGroupsResponse > {
        self.modifyModuleSecurityGroups(ModifyModuleSecurityGroupsRequest(securityGroupIdSet: securityGroupIdSet, moduleId: moduleId), logger: logger, on: eventLoop)
    }

    /// 修改模块默认安全组
    @inlinable
    public func modifyModuleSecurityGroups(securityGroupIdSet: [String], moduleId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleSecurityGroupsResponse {
        try await self.modifyModuleSecurityGroups(ModifyModuleSecurityGroupsRequest(securityGroupIdSet: securityGroupIdSet, moduleId: moduleId), logger: logger, on: eventLoop)
    }
}
