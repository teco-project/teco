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
    /// DeleteAppAccount请求参数结构体
    public struct DeleteAppAccountRequest: TCRequestModel {
        /// 账号ID数组。
        public let accountIdList: [String]

        public init(accountIdList: [String]) {
            self.accountIdList = accountIdList
        }

        enum CodingKeys: String, CodingKey {
            case accountIdList = "AccountIdList"
        }
    }

    /// DeleteAppAccount返回参数结构体
    public struct DeleteAppAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除应用账号
    @inlinable @discardableResult
    public func deleteAppAccount(_ input: DeleteAppAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppAccountResponse> {
        self.client.execute(action: "DeleteAppAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除应用账号
    @inlinable @discardableResult
    public func deleteAppAccount(_ input: DeleteAppAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppAccountResponse {
        try await self.client.execute(action: "DeleteAppAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除应用账号
    @inlinable @discardableResult
    public func deleteAppAccount(accountIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAppAccountResponse> {
        self.deleteAppAccount(DeleteAppAccountRequest(accountIdList: accountIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 删除应用账号
    @inlinable @discardableResult
    public func deleteAppAccount(accountIdList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAppAccountResponse {
        try await self.deleteAppAccount(DeleteAppAccountRequest(accountIdList: accountIdList), region: region, logger: logger, on: eventLoop)
    }
}
