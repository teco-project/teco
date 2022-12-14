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

extension Iot {
    /// AppUpdateUser请求参数结构体
    public struct AppUpdateUserRequest: TCRequestModel {
        /// 访问Token
        public let accessToken: String

        /// 昵称
        public let nickName: String?

        public init(accessToken: String, nickName: String? = nil) {
            self.accessToken = accessToken
            self.nickName = nickName
        }

        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
            case nickName = "NickName"
        }
    }

    /// AppUpdateUser返回参数结构体
    public struct AppUpdateUserResponse: TCResponseModel {
        /// 应用用户
        public let appUser: AppUser

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case appUser = "AppUser"
            case requestId = "RequestId"
        }
    }

    /// 用户信息修改
    ///
    /// 修改用户信息
    @inlinable
    public func appUpdateUser(_ input: AppUpdateUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AppUpdateUserResponse > {
        self.client.execute(action: "AppUpdateUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户信息修改
    ///
    /// 修改用户信息
    @inlinable
    public func appUpdateUser(_ input: AppUpdateUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppUpdateUserResponse {
        try await self.client.execute(action: "AppUpdateUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户信息修改
    ///
    /// 修改用户信息
    @inlinable
    public func appUpdateUser(accessToken: String, nickName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AppUpdateUserResponse > {
        self.appUpdateUser(AppUpdateUserRequest(accessToken: accessToken, nickName: nickName), logger: logger, on: eventLoop)
    }

    /// 用户信息修改
    ///
    /// 修改用户信息
    @inlinable
    public func appUpdateUser(accessToken: String, nickName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppUpdateUserResponse {
        try await self.appUpdateUser(AppUpdateUserRequest(accessToken: accessToken, nickName: nickName), logger: logger, on: eventLoop)
    }
}
