//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cdb {
    /// ModifyAccountPassword请求参数结构体
    public struct ModifyAccountPasswordRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 数据库账号的新密码。密码应至少包含字母、数字和字符（_+-&=!@#$%^*()）中的两种，长度为8-64个字符。
        public let newPassword: String

        /// 云数据库账号。
        public let accounts: [Account]

        public init(instanceId: String, newPassword: String, accounts: [Account]) {
            self.instanceId = instanceId
            self.newPassword = newPassword
            self.accounts = accounts
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case newPassword = "NewPassword"
            case accounts = "Accounts"
        }
    }

    /// ModifyAccountPassword返回参数结构体
    public struct ModifyAccountPasswordResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 修改云数据库实例账号的密码
    ///
    /// 本接口(ModifyAccountPassword)用于修改云数据库账户的密码。
    @inlinable
    public func modifyAccountPassword(_ input: ModifyAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountPasswordResponse> {
        self.client.execute(action: "ModifyAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例账号的密码
    ///
    /// 本接口(ModifyAccountPassword)用于修改云数据库账户的密码。
    @inlinable
    public func modifyAccountPassword(_ input: ModifyAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountPasswordResponse {
        try await self.client.execute(action: "ModifyAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云数据库实例账号的密码
    ///
    /// 本接口(ModifyAccountPassword)用于修改云数据库账户的密码。
    @inlinable
    public func modifyAccountPassword(instanceId: String, newPassword: String, accounts: [Account], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountPasswordResponse> {
        self.modifyAccountPassword(ModifyAccountPasswordRequest(instanceId: instanceId, newPassword: newPassword, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例账号的密码
    ///
    /// 本接口(ModifyAccountPassword)用于修改云数据库账户的密码。
    @inlinable
    public func modifyAccountPassword(instanceId: String, newPassword: String, accounts: [Account], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountPasswordResponse {
        try await self.modifyAccountPassword(ModifyAccountPasswordRequest(instanceId: instanceId, newPassword: newPassword, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }
}
