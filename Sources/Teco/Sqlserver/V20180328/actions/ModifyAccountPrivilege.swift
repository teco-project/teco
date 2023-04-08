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
    /// ModifyAccountPrivilege请求参数结构体
    public struct ModifyAccountPrivilegeRequest: TCRequestModel {
        /// 数据库实例ID，形如mssql-njj2mtpl
        public let instanceId: String

        /// 账号权限变更信息
        public let accounts: [AccountPrivilegeModifyInfo]

        public init(instanceId: String, accounts: [AccountPrivilegeModifyInfo]) {
            self.instanceId = instanceId
            self.accounts = accounts
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
        }
    }

    /// ModifyAccountPrivilege返回参数结构体
    public struct ModifyAccountPrivilegeResponse: TCResponseModel {
        /// 异步任务流程ID
        public let flowId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例账户权限
    ///
    /// 本接口（ModifyAccountPrivilege）用于修改实例账户权限。
    @inlinable
    public func modifyAccountPrivilege(_ input: ModifyAccountPrivilegeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountPrivilegeResponse> {
        self.client.execute(action: "ModifyAccountPrivilege", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例账户权限
    ///
    /// 本接口（ModifyAccountPrivilege）用于修改实例账户权限。
    @inlinable
    public func modifyAccountPrivilege(_ input: ModifyAccountPrivilegeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountPrivilegeResponse {
        try await self.client.execute(action: "ModifyAccountPrivilege", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例账户权限
    ///
    /// 本接口（ModifyAccountPrivilege）用于修改实例账户权限。
    @inlinable
    public func modifyAccountPrivilege(instanceId: String, accounts: [AccountPrivilegeModifyInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountPrivilegeResponse> {
        self.modifyAccountPrivilege(.init(instanceId: instanceId, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例账户权限
    ///
    /// 本接口（ModifyAccountPrivilege）用于修改实例账户权限。
    @inlinable
    public func modifyAccountPrivilege(instanceId: String, accounts: [AccountPrivilegeModifyInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountPrivilegeResponse {
        try await self.modifyAccountPrivilege(.init(instanceId: instanceId, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }
}
