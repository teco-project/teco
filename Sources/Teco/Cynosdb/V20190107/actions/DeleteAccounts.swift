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

import Logging
import NIOCore
import TecoCore

extension Cynosdb {
    /// DeleteAccounts请求参数结构体
    public struct DeleteAccountsRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 账号数组，包含account和host
        public let accounts: [InputAccount]?

        public init(clusterId: String, accounts: [InputAccount]? = nil) {
            self.clusterId = clusterId
            self.accounts = accounts
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case accounts = "Accounts"
        }
    }

    /// DeleteAccounts返回参数结构体
    public struct DeleteAccountsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除用户账号
    @inlinable @discardableResult
    public func deleteAccounts(_ input: DeleteAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccountsResponse> {
        self.client.execute(action: "DeleteAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户账号
    @inlinable @discardableResult
    public func deleteAccounts(_ input: DeleteAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountsResponse {
        try await self.client.execute(action: "DeleteAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除用户账号
    @inlinable @discardableResult
    public func deleteAccounts(clusterId: String, accounts: [InputAccount]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccountsResponse> {
        self.deleteAccounts(.init(clusterId: clusterId, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }

    /// 删除用户账号
    @inlinable @discardableResult
    public func deleteAccounts(clusterId: String, accounts: [InputAccount]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountsResponse {
        try await self.deleteAccounts(.init(clusterId: clusterId, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }
}
