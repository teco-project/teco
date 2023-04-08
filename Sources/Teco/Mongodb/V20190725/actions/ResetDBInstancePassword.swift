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

extension Mongodb {
    /// ResetDBInstancePassword请求参数结构体
    public struct ResetDBInstancePasswordRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// 实例账号名
        public let userName: String

        /// 新密码，新密码长度不能少于8位
        public let password: String

        public init(instanceId: String, userName: String, password: String) {
            self.instanceId = instanceId
            self.userName = userName
            self.password = password
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userName = "UserName"
            case password = "Password"
        }
    }

    /// ResetDBInstancePassword返回参数结构体
    public struct ResetDBInstancePasswordResponse: TCResponseModel {
        /// 异步请求Id，用户查询该流程的运行状态
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 修改实例用户的密码
    @inlinable
    public func resetDBInstancePassword(_ input: ResetDBInstancePasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetDBInstancePasswordResponse> {
        self.client.execute(action: "ResetDBInstancePassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例用户的密码
    @inlinable
    public func resetDBInstancePassword(_ input: ResetDBInstancePasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetDBInstancePasswordResponse {
        try await self.client.execute(action: "ResetDBInstancePassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例用户的密码
    @inlinable
    public func resetDBInstancePassword(instanceId: String, userName: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetDBInstancePasswordResponse> {
        self.resetDBInstancePassword(.init(instanceId: instanceId, userName: userName, password: password), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例用户的密码
    @inlinable
    public func resetDBInstancePassword(instanceId: String, userName: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetDBInstancePasswordResponse {
        try await self.resetDBInstancePassword(.init(instanceId: instanceId, userName: userName, password: password), region: region, logger: logger, on: eventLoop)
    }
}
