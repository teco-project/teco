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

extension Cdb {
    /// CreateAccounts请求参数结构体
    public struct CreateAccountsRequest: TCRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 云数据库账号。
        public let accounts: [Account]

        /// 新账户的密码。
        public let password: String

        /// 备注信息。
        public let description: String?

        /// 新账户最大可用连接数，默认值为10240，最大可设置值为10240。
        public let maxUserConnections: Int64?

        public init(instanceId: String, accounts: [Account], password: String, description: String? = nil, maxUserConnections: Int64? = nil) {
            self.instanceId = instanceId
            self.accounts = accounts
            self.password = password
            self.description = description
            self.maxUserConnections = maxUserConnections
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
            case password = "Password"
            case description = "Description"
            case maxUserConnections = "MaxUserConnections"
        }
    }

    /// CreateAccounts返回参数结构体
    public struct CreateAccountsResponse: TCResponse {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 创建云数据库的账户
    ///
    /// 本接口(CreateAccounts)用于创建云数据库的账户，需要指定新的账户名和域名，以及所对应的密码，同时可以设置账号的备注信息以及最大可用连接数。
    @inlinable
    public func createAccounts(_ input: CreateAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountsResponse> {
        self.client.execute(action: "CreateAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云数据库的账户
    ///
    /// 本接口(CreateAccounts)用于创建云数据库的账户，需要指定新的账户名和域名，以及所对应的密码，同时可以设置账号的备注信息以及最大可用连接数。
    @inlinable
    public func createAccounts(_ input: CreateAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountsResponse {
        try await self.client.execute(action: "CreateAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云数据库的账户
    ///
    /// 本接口(CreateAccounts)用于创建云数据库的账户，需要指定新的账户名和域名，以及所对应的密码，同时可以设置账号的备注信息以及最大可用连接数。
    @inlinable
    public func createAccounts(instanceId: String, accounts: [Account], password: String, description: String? = nil, maxUserConnections: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountsResponse> {
        self.createAccounts(.init(instanceId: instanceId, accounts: accounts, password: password, description: description, maxUserConnections: maxUserConnections), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云数据库的账户
    ///
    /// 本接口(CreateAccounts)用于创建云数据库的账户，需要指定新的账户名和域名，以及所对应的密码，同时可以设置账号的备注信息以及最大可用连接数。
    @inlinable
    public func createAccounts(instanceId: String, accounts: [Account], password: String, description: String? = nil, maxUserConnections: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountsResponse {
        try await self.createAccounts(.init(instanceId: instanceId, accounts: accounts, password: password, description: description, maxUserConnections: maxUserConnections), region: region, logger: logger, on: eventLoop)
    }
}
