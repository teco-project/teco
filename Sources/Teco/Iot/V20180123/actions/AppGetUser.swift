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

extension Iot {
    /// AppGetUser请求参数结构体
    public struct AppGetUserRequest: TCRequestModel {
        /// 访问Token
        public let accessToken: String

        public init(accessToken: String) {
            self.accessToken = accessToken
        }

        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
        }
    }

    /// AppGetUser返回参数结构体
    public struct AppGetUserResponse: TCResponseModel {
        /// 用户信息
        public let appUser: AppUser

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appUser = "AppUser"
            case requestId = "RequestId"
        }
    }

    /// 获取用户信息
    @inlinable
    public func appGetUser(_ input: AppGetUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppGetUserResponse> {
        self.client.execute(action: "AppGetUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户信息
    @inlinable
    public func appGetUser(_ input: AppGetUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetUserResponse {
        try await self.client.execute(action: "AppGetUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户信息
    @inlinable
    public func appGetUser(accessToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppGetUserResponse> {
        self.appGetUser(.init(accessToken: accessToken), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户信息
    @inlinable
    public func appGetUser(accessToken: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetUserResponse {
        try await self.appGetUser(.init(accessToken: accessToken), region: region, logger: logger, on: eventLoop)
    }
}
