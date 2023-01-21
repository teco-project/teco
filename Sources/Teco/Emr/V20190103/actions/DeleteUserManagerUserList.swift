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

extension Emr {
    /// DeleteUserManagerUserList请求参数结构体
    public struct DeleteUserManagerUserListRequest: TCRequestModel {
        /// 集群实例ID
        public let instanceId: String

        /// 集群用户名列表
        public let userNameList: [String]

        public init(instanceId: String, userNameList: [String]) {
            self.instanceId = instanceId
            self.userNameList = userNameList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userNameList = "UserNameList"
        }
    }

    /// DeleteUserManagerUserList返回参数结构体
    public struct DeleteUserManagerUserListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除用户列表（用户管理）
    @inlinable @discardableResult
    public func deleteUserManagerUserList(_ input: DeleteUserManagerUserListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserManagerUserListResponse> {
        self.client.execute(action: "DeleteUserManagerUserList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户列表（用户管理）
    @inlinable @discardableResult
    public func deleteUserManagerUserList(_ input: DeleteUserManagerUserListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserManagerUserListResponse {
        try await self.client.execute(action: "DeleteUserManagerUserList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除用户列表（用户管理）
    @inlinable @discardableResult
    public func deleteUserManagerUserList(instanceId: String, userNameList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserManagerUserListResponse> {
        self.deleteUserManagerUserList(DeleteUserManagerUserListRequest(instanceId: instanceId, userNameList: userNameList), region: region, logger: logger, on: eventLoop)
    }

    /// 删除用户列表（用户管理）
    @inlinable @discardableResult
    public func deleteUserManagerUserList(instanceId: String, userNameList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserManagerUserListResponse {
        try await self.deleteUserManagerUserList(DeleteUserManagerUserListRequest(instanceId: instanceId, userNameList: userNameList), region: region, logger: logger, on: eventLoop)
    }
}
