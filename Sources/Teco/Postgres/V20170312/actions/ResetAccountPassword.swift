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

extension Postgres {
    /// ResetAccountPassword请求参数结构体
    public struct ResetAccountPasswordRequest: TCRequestModel {
        /// 实例ID，形如postgres-4wdeb0zv
        public let dbInstanceId: String

        /// 实例账户名
        public let userName: String

        /// UserName账户对应的新密码
        public let password: String

        public init(dbInstanceId: String, userName: String, password: String) {
            self.dbInstanceId = dbInstanceId
            self.userName = userName
            self.password = password
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case userName = "UserName"
            case password = "Password"
        }
    }

    /// ResetAccountPassword返回参数结构体
    public struct ResetAccountPasswordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置账户密码
    ///
    /// 本接口（ResetAccountPassword）用于重置实例的账户密码。
    @inlinable @discardableResult
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAccountPasswordResponse> {
        self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置账户密码
    ///
    /// 本接口（ResetAccountPassword）用于重置实例的账户密码。
    @inlinable @discardableResult
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        try await self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置账户密码
    ///
    /// 本接口（ResetAccountPassword）用于重置实例的账户密码。
    @inlinable @discardableResult
    public func resetAccountPassword(dbInstanceId: String, userName: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAccountPasswordResponse> {
        let input = ResetAccountPasswordRequest(dbInstanceId: dbInstanceId, userName: userName, password: password)
        return self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置账户密码
    ///
    /// 本接口（ResetAccountPassword）用于重置实例的账户密码。
    @inlinable @discardableResult
    public func resetAccountPassword(dbInstanceId: String, userName: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        let input = ResetAccountPasswordRequest(dbInstanceId: dbInstanceId, userName: userName, password: password)
        return try await self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
