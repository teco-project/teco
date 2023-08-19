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

extension Eiam {
    /// DeleteUser请求参数结构体
    public struct DeleteUserRequest: TCRequest {
        /// 用户名，长度限制：32个字符。 Username 和 UserId 需选择一个作为搜索条件；如两个条件同时使用则默认使用Username作为搜索条件。
        public let userName: String?

        /// 用户 id。 Username 和 UserId 需选择一个作为搜索条件；如两个条件同时使用则默认使用Username作为搜索条件。
        public let userId: String?

        public init(userName: String? = nil, userId: String? = nil) {
            self.userName = userName
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case userId = "UserId"
        }
    }

    /// DeleteUser返回参数结构体
    public struct DeleteUserResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除用户
    ///
    /// 通过用户名或用户 id 删除用户。
    @inlinable @discardableResult
    public func deleteUser(_ input: DeleteUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户
    ///
    /// 通过用户名或用户 id 删除用户。
    @inlinable @discardableResult
    public func deleteUser(_ input: DeleteUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        try await self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除用户
    ///
    /// 通过用户名或用户 id 删除用户。
    @inlinable @discardableResult
    public func deleteUser(userName: String? = nil, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        self.deleteUser(.init(userName: userName, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除用户
    ///
    /// 通过用户名或用户 id 删除用户。
    @inlinable @discardableResult
    public func deleteUser(userName: String? = nil, userId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        try await self.deleteUser(.init(userName: userName, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
