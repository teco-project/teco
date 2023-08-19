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

extension Cynosdb {
    /// ResetAccountPassword请求参数结构体
    public struct ResetAccountPasswordRequest: TCRequest {
        /// 数据库账号名
        public let accountName: String

        /// 数据库账号新密码
        public let accountPassword: String

        /// 集群ID
        public let clusterId: String

        /// 主机，不填默认为"%"
        public let host: String?

        public init(accountName: String, accountPassword: String, clusterId: String, host: String? = nil) {
            self.accountName = accountName
            self.accountPassword = accountPassword
            self.clusterId = clusterId
            self.host = host
        }

        enum CodingKeys: String, CodingKey {
            case accountName = "AccountName"
            case accountPassword = "AccountPassword"
            case clusterId = "ClusterId"
            case host = "Host"
        }
    }

    /// ResetAccountPassword返回参数结构体
    public struct ResetAccountPasswordResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置数据库账号密码
    ///
    /// 本接口(ResetAccountPassword)用于重置实例的数据库账号密码。
    @inlinable @discardableResult
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAccountPasswordResponse> {
        self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置数据库账号密码
    ///
    /// 本接口(ResetAccountPassword)用于重置实例的数据库账号密码。
    @inlinable @discardableResult
    public func resetAccountPassword(_ input: ResetAccountPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        try await self.client.execute(action: "ResetAccountPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置数据库账号密码
    ///
    /// 本接口(ResetAccountPassword)用于重置实例的数据库账号密码。
    @inlinable @discardableResult
    public func resetAccountPassword(accountName: String, accountPassword: String, clusterId: String, host: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetAccountPasswordResponse> {
        self.resetAccountPassword(.init(accountName: accountName, accountPassword: accountPassword, clusterId: clusterId, host: host), region: region, logger: logger, on: eventLoop)
    }

    /// 重置数据库账号密码
    ///
    /// 本接口(ResetAccountPassword)用于重置实例的数据库账号密码。
    @inlinable @discardableResult
    public func resetAccountPassword(accountName: String, accountPassword: String, clusterId: String, host: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetAccountPasswordResponse {
        try await self.resetAccountPassword(.init(accountName: accountName, accountPassword: accountPassword, clusterId: clusterId, host: host), region: region, logger: logger, on: eventLoop)
    }
}
