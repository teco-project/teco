//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tdcpg {
    /// ResetAccountPassword请求参数结构体
    public struct ResetAccountPasswordRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 账号名字
        public let accountName: String

        /// 数据库用户密码，必须满足 8-64个字符，至少包含 大写字母、小写字母、数字和符号~!@#$%^&*_-+=`|(){}[]:;'<>,.?/中的任意三种
        public let accountPassword: String

        public init(clusterId: String, accountName: String, accountPassword: String) {
            self.clusterId = clusterId
            self.accountName = accountName
            self.accountPassword = accountPassword
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case accountName = "AccountName"
            case accountPassword = "AccountPassword"
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

    /// 重置数据库账号密码
    @inlinable
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ResetAccountPasswordResponse > {
        self.client.execute(action: "ResetAccountPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置数据库账号密码
    @inlinable
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        try await self.client.execute(action: "ResetAccountPassword", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置数据库账号密码
    @inlinable
    public func resetAccountPassword(clusterId: String, accountName: String, accountPassword: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ResetAccountPasswordResponse > {
        self.resetAccountPassword(ResetAccountPasswordRequest(clusterId: clusterId, accountName: accountName, accountPassword: accountPassword), logger: logger, on: eventLoop)
    }

    /// 重置数据库账号密码
    @inlinable
    public func resetAccountPassword(clusterId: String, accountName: String, accountPassword: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        try await self.resetAccountPassword(ResetAccountPasswordRequest(clusterId: clusterId, accountName: accountName, accountPassword: accountPassword), logger: logger, on: eventLoop)
    }
}
