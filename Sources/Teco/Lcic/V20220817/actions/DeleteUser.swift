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

extension Lcic {
    /// DeleteUser请求参数结构体
    public struct DeleteUserRequest: TCRequest {
        /// 待删除用户的ID
        public let userId: String

        public init(userId: String) {
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
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
    /// 删除已注册用户。注：如果该成员已被添加到群组，请先在群组中删除该成员。
    @inlinable @discardableResult
    public func deleteUser(_ input: DeleteUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除用户
    ///
    /// 删除已注册用户。注：如果该成员已被添加到群组，请先在群组中删除该成员。
    @inlinable @discardableResult
    public func deleteUser(_ input: DeleteUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        try await self.client.execute(action: "DeleteUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除用户
    ///
    /// 删除已注册用户。注：如果该成员已被添加到群组，请先在群组中删除该成员。
    @inlinable @discardableResult
    public func deleteUser(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUserResponse> {
        self.deleteUser(.init(userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除用户
    ///
    /// 删除已注册用户。注：如果该成员已被添加到群组，请先在群组中删除该成员。
    @inlinable @discardableResult
    public func deleteUser(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        try await self.deleteUser(.init(userId: userId), region: region, logger: logger, on: eventLoop)
    }
}