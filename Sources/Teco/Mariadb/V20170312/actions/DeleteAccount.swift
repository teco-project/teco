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

extension Mariadb {
    /// DeleteAccount请求参数结构体
    public struct DeleteAccountRequest: TCRequest {
        /// 实例ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 用户名
        public let userName: String

        /// 用户允许的访问 host
        public let host: String

        public init(instanceId: String, userName: String, host: String) {
            self.instanceId = instanceId
            self.userName = userName
            self.host = host
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userName = "UserName"
            case host = "Host"
        }
    }

    /// DeleteAccount返回参数结构体
    public struct DeleteAccountResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除账号
    ///
    /// 本接口（DeleteAccount）用于删除云数据库账号。用户名+host唯一确定一个账号。
    @inlinable @discardableResult
    public func deleteAccount(_ input: DeleteAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccountResponse> {
        self.client.execute(action: "DeleteAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除账号
    ///
    /// 本接口（DeleteAccount）用于删除云数据库账号。用户名+host唯一确定一个账号。
    @inlinable @discardableResult
    public func deleteAccount(_ input: DeleteAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountResponse {
        try await self.client.execute(action: "DeleteAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除账号
    ///
    /// 本接口（DeleteAccount）用于删除云数据库账号。用户名+host唯一确定一个账号。
    @inlinable @discardableResult
    public func deleteAccount(instanceId: String, userName: String, host: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccountResponse> {
        self.deleteAccount(.init(instanceId: instanceId, userName: userName, host: host), region: region, logger: logger, on: eventLoop)
    }

    /// 删除账号
    ///
    /// 本接口（DeleteAccount）用于删除云数据库账号。用户名+host唯一确定一个账号。
    @inlinable @discardableResult
    public func deleteAccount(instanceId: String, userName: String, host: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccountResponse {
        try await self.deleteAccount(.init(instanceId: instanceId, userName: userName, host: host), region: region, logger: logger, on: eventLoop)
    }
}
