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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcb {
    /// DeleteEndUser请求参数结构体
    public struct DeleteEndUserRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 用户列表，每一项都是uuid
        public let userList: [String]

        public init(envId: String, userList: [String]) {
            self.envId = envId
            self.userList = userList
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case userList = "UserList"
        }
    }

    /// DeleteEndUser返回参数结构体
    public struct DeleteEndUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除终端用户
    @inlinable @discardableResult
    public func deleteEndUser(_ input: DeleteEndUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEndUserResponse> {
        self.client.execute(action: "DeleteEndUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除终端用户
    @inlinable @discardableResult
    public func deleteEndUser(_ input: DeleteEndUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEndUserResponse {
        try await self.client.execute(action: "DeleteEndUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除终端用户
    @inlinable @discardableResult
    public func deleteEndUser(envId: String, userList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEndUserResponse> {
        self.deleteEndUser(.init(envId: envId, userList: userList), region: region, logger: logger, on: eventLoop)
    }

    /// 删除终端用户
    @inlinable @discardableResult
    public func deleteEndUser(envId: String, userList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEndUserResponse {
        try await self.deleteEndUser(.init(envId: envId, userList: userList), region: region, logger: logger, on: eventLoop)
    }
}
