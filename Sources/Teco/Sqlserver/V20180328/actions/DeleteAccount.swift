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

import TecoCore

extension Sqlserver {
    /// DeleteAccount请求参数结构体
    public struct DeleteAccountRequest: TCRequestModel {
        /// 数据库实例ID，形如mssql-njj2mtpl
        public let instanceId: String

        /// 实例用户名数组
        public let userNames: [String]

        public init(instanceId: String, userNames: [String]) {
            self.instanceId = instanceId
            self.userNames = userNames
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userNames = "UserNames"
        }
    }

    /// DeleteAccount返回参数结构体
    public struct DeleteAccountResponse: TCResponseModel {
        /// 任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 删除实例账号
    ///
    /// 本接口（DeleteAccount）用于删除实例账号。
    @inlinable
    public func deleteAccount(_ input: DeleteAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccountResponse> {
        self.client.execute(action: "DeleteAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例账号
    ///
    /// 本接口（DeleteAccount）用于删除实例账号。
    @inlinable
    public func deleteAccount(_ input: DeleteAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountResponse {
        try await self.client.execute(action: "DeleteAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例账号
    ///
    /// 本接口（DeleteAccount）用于删除实例账号。
    @inlinable
    public func deleteAccount(instanceId: String, userNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccountResponse> {
        self.deleteAccount(.init(instanceId: instanceId, userNames: userNames), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例账号
    ///
    /// 本接口（DeleteAccount）用于删除实例账号。
    @inlinable
    public func deleteAccount(instanceId: String, userNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountResponse {
        try await self.deleteAccount(.init(instanceId: instanceId, userNames: userNames), region: region, logger: logger, on: eventLoop)
    }
}
