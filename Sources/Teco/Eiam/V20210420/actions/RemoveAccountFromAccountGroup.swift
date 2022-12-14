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

extension Eiam {
    /// RemoveAccountFromAccountGroup请求参数结构体
    public struct RemoveAccountFromAccountGroupRequest: TCRequestModel {
        /// 账号组ID
        public let accountGroupId: String

        /// 需要移除账号ID列表。
        public let accountIds: [String]?

        public init(accountGroupId: String, accountIds: [String]? = nil) {
            self.accountGroupId = accountGroupId
            self.accountIds = accountIds
        }

        enum CodingKeys: String, CodingKey {
            case accountGroupId = "AccountGroupId"
            case accountIds = "AccountIds"
        }
    }

    /// RemoveAccountFromAccountGroup返回参数结构体
    public struct RemoveAccountFromAccountGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 从账号组中移除账号
    @inlinable
    public func removeAccountFromAccountGroup(_ input: RemoveAccountFromAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RemoveAccountFromAccountGroupResponse > {
        self.client.execute(action: "RemoveAccountFromAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 从账号组中移除账号
    @inlinable
    public func removeAccountFromAccountGroup(_ input: RemoveAccountFromAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveAccountFromAccountGroupResponse {
        try await self.client.execute(action: "RemoveAccountFromAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 从账号组中移除账号
    @inlinable
    public func removeAccountFromAccountGroup(accountGroupId: String, accountIds: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RemoveAccountFromAccountGroupResponse > {
        self.removeAccountFromAccountGroup(RemoveAccountFromAccountGroupRequest(accountGroupId: accountGroupId, accountIds: accountIds), logger: logger, on: eventLoop)
    }

    /// 从账号组中移除账号
    @inlinable
    public func removeAccountFromAccountGroup(accountGroupId: String, accountIds: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveAccountFromAccountGroupResponse {
        try await self.removeAccountFromAccountGroup(RemoveAccountFromAccountGroupRequest(accountGroupId: accountGroupId, accountIds: accountIds), logger: logger, on: eventLoop)
    }
}
