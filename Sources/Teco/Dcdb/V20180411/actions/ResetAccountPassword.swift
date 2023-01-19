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

extension Dcdb {
    /// ResetAccountPassword请求参数结构体
    public struct ResetAccountPasswordRequest: TCRequestModel {
        /// 实例 ID，形如：dcdbt-ow728lmc。
        public let instanceId: String

        /// 登录用户名。
        public let userName: String

        /// 用户允许的访问 host，用户名+host唯一确定一个账号。
        public let host: String

        /// 新密码，由字母、数字或常见符号组成，不能包含分号、单引号和双引号，长度为6~32位。
        public let password: String

        public init(instanceId: String, userName: String, host: String, password: String) {
            self.instanceId = instanceId
            self.userName = userName
            self.host = host
            self.password = password
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userName = "UserName"
            case host = "Host"
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

    /// 重置账号密码
    ///
    /// 本接口（ResetAccountPassword）用于重置云数据库账号的密码。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAccountPasswordResponse> {
        self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置账号密码
    ///
    /// 本接口（ResetAccountPassword）用于重置云数据库账号的密码。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        try await self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置账号密码
    ///
    /// 本接口（ResetAccountPassword）用于重置云数据库账号的密码。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable
    public func resetAccountPassword(instanceId: String, userName: String, host: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAccountPasswordResponse> {
        self.resetAccountPassword(ResetAccountPasswordRequest(instanceId: instanceId, userName: userName, host: host, password: password), region: region, logger: logger, on: eventLoop)
    }

    /// 重置账号密码
    ///
    /// 本接口（ResetAccountPassword）用于重置云数据库账号的密码。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable
    public func resetAccountPassword(instanceId: String, userName: String, host: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        try await self.resetAccountPassword(ResetAccountPasswordRequest(instanceId: instanceId, userName: userName, host: host, password: password), region: region, logger: logger, on: eventLoop)
    }
}
