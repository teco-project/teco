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

extension Sqlserver {
    /// CreateAccount请求参数结构体
    public struct CreateAccountRequest: TCRequestModel {
        /// 数据库实例ID，形如mssql-njj2mtpl
        public let instanceId: String

        /// 数据库实例账户信息
        public let accounts: [AccountCreateInfo]

        public init(instanceId: String, accounts: [AccountCreateInfo]) {
            self.instanceId = instanceId
            self.accounts = accounts
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
        }
    }

    /// CreateAccount返回参数结构体
    public struct CreateAccountResponse: TCResponseModel {
        /// 任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建实例账号
    ///
    /// 本接口（CreateAccount）用于创建实例账号
    @inlinable
    public func createAccount(_ input: CreateAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountResponse> {
        self.client.execute(action: "CreateAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例账号
    ///
    /// 本接口（CreateAccount）用于创建实例账号
    @inlinable
    public func createAccount(_ input: CreateAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountResponse {
        try await self.client.execute(action: "CreateAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例账号
    ///
    /// 本接口（CreateAccount）用于创建实例账号
    @inlinable
    public func createAccount(instanceId: String, accounts: [AccountCreateInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountResponse> {
        let input = CreateAccountRequest(instanceId: instanceId, accounts: accounts)
        return self.client.execute(action: "CreateAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例账号
    ///
    /// 本接口（CreateAccount）用于创建实例账号
    @inlinable
    public func createAccount(instanceId: String, accounts: [AccountCreateInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountResponse {
        let input = CreateAccountRequest(instanceId: instanceId, accounts: accounts)
        return try await self.client.execute(action: "CreateAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
