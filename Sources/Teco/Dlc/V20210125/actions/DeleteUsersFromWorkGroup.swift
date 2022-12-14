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

extension Dlc {
    /// DeleteUsersFromWorkGroup请求参数结构体
    public struct DeleteUsersFromWorkGroupRequest: TCRequestModel {
        /// 要删除的用户信息
        public let addInfo: UserIdSetOfWorkGroupId

        public init(addInfo: UserIdSetOfWorkGroupId) {
            self.addInfo = addInfo
        }

        enum CodingKeys: String, CodingKey {
            case addInfo = "AddInfo"
        }
    }

    /// DeleteUsersFromWorkGroup返回参数结构体
    public struct DeleteUsersFromWorkGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 从工作组中删除用户
    @inlinable
    public func deleteUsersFromWorkGroup(_ input: DeleteUsersFromWorkGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteUsersFromWorkGroupResponse > {
        self.client.execute(action: "DeleteUsersFromWorkGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 从工作组中删除用户
    @inlinable
    public func deleteUsersFromWorkGroup(_ input: DeleteUsersFromWorkGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsersFromWorkGroupResponse {
        try await self.client.execute(action: "DeleteUsersFromWorkGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 从工作组中删除用户
    @inlinable
    public func deleteUsersFromWorkGroup(addInfo: UserIdSetOfWorkGroupId, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteUsersFromWorkGroupResponse > {
        self.deleteUsersFromWorkGroup(DeleteUsersFromWorkGroupRequest(addInfo: addInfo), logger: logger, on: eventLoop)
    }

    /// 从工作组中删除用户
    @inlinable
    public func deleteUsersFromWorkGroup(addInfo: UserIdSetOfWorkGroupId, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsersFromWorkGroupResponse {
        try await self.deleteUsersFromWorkGroup(DeleteUsersFromWorkGroupRequest(addInfo: addInfo), logger: logger, on: eventLoop)
    }
}
