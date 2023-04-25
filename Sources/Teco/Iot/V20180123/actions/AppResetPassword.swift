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
    /// AppResetPassword请求参数结构体
    public struct AppResetPasswordRequest: TCRequestModel {
        /// 访问Token
        public let accessToken: String

        /// 旧密码
        public let oldPassword: String

        /// 新密码
        public let newPassword: String

        public init(accessToken: String, oldPassword: String, newPassword: String) {
            self.accessToken = accessToken
            self.oldPassword = oldPassword
            self.newPassword = newPassword
        }

        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
            case oldPassword = "OldPassword"
            case newPassword = "NewPassword"
        }
    }

    /// AppResetPassword返回参数结构体
    public struct AppResetPasswordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置用户密码
    ///
    /// 重置APP用户密码
    @inlinable @discardableResult
    public func appResetPassword(_ input: AppResetPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppResetPasswordResponse> {
        self.client.execute(action: "AppResetPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置用户密码
    ///
    /// 重置APP用户密码
    @inlinable @discardableResult
    public func appResetPassword(_ input: AppResetPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppResetPasswordResponse {
        try await self.client.execute(action: "AppResetPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置用户密码
    ///
    /// 重置APP用户密码
    @inlinable @discardableResult
    public func appResetPassword(accessToken: String, oldPassword: String, newPassword: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppResetPasswordResponse> {
        self.appResetPassword(.init(accessToken: accessToken, oldPassword: oldPassword, newPassword: newPassword), region: region, logger: logger, on: eventLoop)
    }

    /// 重置用户密码
    ///
    /// 重置APP用户密码
    @inlinable @discardableResult
    public func appResetPassword(accessToken: String, oldPassword: String, newPassword: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppResetPasswordResponse {
        try await self.appResetPassword(.init(accessToken: accessToken, oldPassword: oldPassword, newPassword: newPassword), region: region, logger: logger, on: eventLoop)
    }
}
