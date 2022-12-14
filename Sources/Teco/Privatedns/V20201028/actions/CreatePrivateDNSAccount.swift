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

extension Privatedns {
    /// CreatePrivateDNSAccount请求参数结构体
    public struct CreatePrivateDNSAccountRequest: TCRequestModel {
        /// 私有域解析账号
        public let account: PrivateDNSAccount

        public init(account: PrivateDNSAccount) {
            self.account = account
        }

        enum CodingKeys: String, CodingKey {
            case account = "Account"
        }
    }

    /// CreatePrivateDNSAccount返回参数结构体
    public struct CreatePrivateDNSAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建私有域解析账号
    @inlinable
    public func createPrivateDNSAccount(_ input: CreatePrivateDNSAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePrivateDNSAccountResponse > {
        self.client.execute(action: "CreatePrivateDNSAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建私有域解析账号
    @inlinable
    public func createPrivateDNSAccount(_ input: CreatePrivateDNSAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrivateDNSAccountResponse {
        try await self.client.execute(action: "CreatePrivateDNSAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建私有域解析账号
    @inlinable
    public func createPrivateDNSAccount(account: PrivateDNSAccount, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePrivateDNSAccountResponse > {
        self.createPrivateDNSAccount(CreatePrivateDNSAccountRequest(account: account), logger: logger, on: eventLoop)
    }

    /// 创建私有域解析账号
    @inlinable
    public func createPrivateDNSAccount(account: PrivateDNSAccount, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrivateDNSAccountResponse {
        try await self.createPrivateDNSAccount(CreatePrivateDNSAccountRequest(account: account), logger: logger, on: eventLoop)
    }
}
