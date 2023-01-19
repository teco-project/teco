//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dasb {
    /// CreateUserGroup请求参数结构体
    public struct CreateUserGroupRequest: TCRequestModel {
        /// 用户组名，最大长度32字符
        public let name: String

        /// 用户组所属部门的ID，如：1.2.3
        public let departmentId: String?

        public init(name: String, departmentId: String? = nil) {
            self.name = name
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case departmentId = "DepartmentId"
        }
    }

    /// CreateUserGroup返回参数结构体
    public struct CreateUserGroupResponse: TCResponseModel {
        /// 新建成功的用户组ID
        public let id: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 新建用户组
    @inlinable
    public func createUserGroup(_ input: CreateUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserGroupResponse> {
        self.client.execute(action: "CreateUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建用户组
    @inlinable
    public func createUserGroup(_ input: CreateUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserGroupResponse {
        try await self.client.execute(action: "CreateUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建用户组
    @inlinable
    public func createUserGroup(name: String, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserGroupResponse> {
        self.createUserGroup(CreateUserGroupRequest(name: name, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }

    /// 新建用户组
    @inlinable
    public func createUserGroup(name: String, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserGroupResponse {
        try await self.createUserGroup(CreateUserGroupRequest(name: name, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }
}
