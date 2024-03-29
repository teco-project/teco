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
    /// ModifyAccountRemark请求参数结构体
    public struct ModifyAccountRemarkRequest: TCRequest {
        /// 实例ID，形如mssql-j8kv137v
        public let instanceId: String

        /// 修改备注的账户信息
        public let accounts: [AccountRemark]

        public init(instanceId: String, accounts: [AccountRemark]) {
            self.instanceId = instanceId
            self.accounts = accounts
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
        }
    }

    /// ModifyAccountRemark返回参数结构体
    public struct ModifyAccountRemarkResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改账户备注
    ///
    /// 本接口（ModifyAccountRemark）用于修改账户备注。
    @inlinable @discardableResult
    public func modifyAccountRemark(_ input: ModifyAccountRemarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountRemarkResponse> {
        self.client.execute(action: "ModifyAccountRemark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改账户备注
    ///
    /// 本接口（ModifyAccountRemark）用于修改账户备注。
    @inlinable @discardableResult
    public func modifyAccountRemark(_ input: ModifyAccountRemarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountRemarkResponse {
        try await self.client.execute(action: "ModifyAccountRemark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改账户备注
    ///
    /// 本接口（ModifyAccountRemark）用于修改账户备注。
    @inlinable @discardableResult
    public func modifyAccountRemark(instanceId: String, accounts: [AccountRemark], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountRemarkResponse> {
        self.modifyAccountRemark(.init(instanceId: instanceId, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }

    /// 修改账户备注
    ///
    /// 本接口（ModifyAccountRemark）用于修改账户备注。
    @inlinable @discardableResult
    public func modifyAccountRemark(instanceId: String, accounts: [AccountRemark], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountRemarkResponse {
        try await self.modifyAccountRemark(.init(instanceId: instanceId, accounts: accounts), region: region, logger: logger, on: eventLoop)
    }
}
