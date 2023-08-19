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
    /// LoginUser请求参数结构体
    public struct LoginUserRequest: TCRequest {
        /// 注册获取的用户id。
        public let userId: String

        public init(userId: String) {
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
        }
    }

    /// LoginUser返回参数结构体
    public struct LoginUserResponse: TCResponse {
        /// 用户Id。
        public let userId: String

        /// 登录/注册成功后返回登录态token。有效期7天。
        public let token: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case token = "Token"
            case requestId = "RequestId"
        }
    }

    /// 登录
    @inlinable
    public func loginUser(_ input: LoginUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LoginUserResponse> {
        self.client.execute(action: "LoginUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 登录
    @inlinable
    public func loginUser(_ input: LoginUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LoginUserResponse {
        try await self.client.execute(action: "LoginUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 登录
    @inlinable
    public func loginUser(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LoginUserResponse> {
        self.loginUser(.init(userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 登录
    @inlinable
    public func loginUser(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LoginUserResponse {
        try await self.loginUser(.init(userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
