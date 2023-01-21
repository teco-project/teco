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

extension Eiam {
    /// DeleteAccountGroup请求参数结构体
    public struct DeleteAccountGroupRequest: TCRequestModel {
        /// 账号组ID数组。
        public let accountGroupIdList: [String]

        public init(accountGroupIdList: [String]) {
            self.accountGroupIdList = accountGroupIdList
        }

        enum CodingKeys: String, CodingKey {
            case accountGroupIdList = "AccountGroupIdList"
        }
    }

    /// DeleteAccountGroup返回参数结构体
    public struct DeleteAccountGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除账号组
    @inlinable @discardableResult
    public func deleteAccountGroup(_ input: DeleteAccountGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccountGroupResponse> {
        self.client.execute(action: "DeleteAccountGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除账号组
    @inlinable @discardableResult
    public func deleteAccountGroup(_ input: DeleteAccountGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountGroupResponse {
        try await self.client.execute(action: "DeleteAccountGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除账号组
    @inlinable @discardableResult
    public func deleteAccountGroup(accountGroupIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccountGroupResponse> {
        self.deleteAccountGroup(DeleteAccountGroupRequest(accountGroupIdList: accountGroupIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 删除账号组
    @inlinable @discardableResult
    public func deleteAccountGroup(accountGroupIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountGroupResponse {
        try await self.deleteAccountGroup(DeleteAccountGroupRequest(accountGroupIdList: accountGroupIdList), region: region, logger: logger, on: eventLoop)
    }
}
