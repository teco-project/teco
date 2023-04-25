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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Privatedns {
    /// DeletePrivateDNSAccount请求参数结构体
    public struct DeletePrivateDNSAccountRequest: TCRequestModel {
        /// 私有域解析账号
        public let account: PrivateDNSAccount

        public init(account: PrivateDNSAccount) {
            self.account = account
        }

        enum CodingKeys: String, CodingKey {
            case account = "Account"
        }
    }

    /// DeletePrivateDNSAccount返回参数结构体
    public struct DeletePrivateDNSAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除私有域解析账号
    @inlinable @discardableResult
    public func deletePrivateDNSAccount(_ input: DeletePrivateDNSAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrivateDNSAccountResponse> {
        self.client.execute(action: "DeletePrivateDNSAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除私有域解析账号
    @inlinable @discardableResult
    public func deletePrivateDNSAccount(_ input: DeletePrivateDNSAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrivateDNSAccountResponse {
        try await self.client.execute(action: "DeletePrivateDNSAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除私有域解析账号
    @inlinable @discardableResult
    public func deletePrivateDNSAccount(account: PrivateDNSAccount, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrivateDNSAccountResponse> {
        self.deletePrivateDNSAccount(.init(account: account), region: region, logger: logger, on: eventLoop)
    }

    /// 删除私有域解析账号
    @inlinable @discardableResult
    public func deletePrivateDNSAccount(account: PrivateDNSAccount, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrivateDNSAccountResponse {
        try await self.deletePrivateDNSAccount(.init(account: account), region: region, logger: logger, on: eventLoop)
    }
}
