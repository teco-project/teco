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

extension Sqlserver {
    /// ResetAccountPassword请求参数结构体
    public struct ResetAccountPasswordRequest: TCRequestModel {
        /// 数据库实例ID，形如mssql-njj2mtpl
        public let instanceId: String

        /// 更新后的账户密码信息数组
        public let accounts: [AccountPassword]

        public init(instanceId: String, accounts: [AccountPassword]) {
            self.instanceId = instanceId
            self.accounts = accounts
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
        }
    }

    /// ResetAccountPassword返回参数结构体
    public struct ResetAccountPasswordResponse: TCResponseModel {
        /// 修改帐号密码的异步任务流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 重置账户密码
    ///
    /// 本接口（ResetAccountPassword）用于重置实例的账户密码。
    @inlinable
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAccountPasswordResponse> {
        self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置账户密码
    ///
    /// 本接口（ResetAccountPassword）用于重置实例的账户密码。
    @inlinable
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        try await self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置账户密码
    ///
    /// 本接口（ResetAccountPassword）用于重置实例的账户密码。
    @inlinable
    public func resetAccountPassword(instanceId: String, accounts: [AccountPassword], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAccountPasswordResponse> {
        self.resetAccountPassword(.init(instanceId: instanceId, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }

    /// 重置账户密码
    ///
    /// 本接口（ResetAccountPassword）用于重置实例的账户密码。
    @inlinable
    public func resetAccountPassword(instanceId: String, accounts: [AccountPassword], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        try await self.resetAccountPassword(.init(instanceId: instanceId, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }
}
