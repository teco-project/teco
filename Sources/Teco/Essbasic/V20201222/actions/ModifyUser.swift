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

extension Essbasic {
    /// ModifyUser请求参数结构体
    public struct ModifyUserRequest: TCRequest {
        /// 调用方信息
        public let caller: Caller

        /// 第三方平台用户唯一标识; OpenId 和 UserId 二选一填写, 两个都不为空则优先使用UserId
        public let openId: String?

        /// 腾讯电子签平台用户唯一标识; OpenId 和 UserId 二选一填写, 两个都不为空则优先使用UserId
        public let userId: String?

        /// 用户手机号码，不要求唯一
        public let mobile: String?

        /// 用户邮箱，不要求唯一
        public let email: String?

        /// 用户姓名
        public let name: String?

        public init(caller: Caller, openId: String? = nil, userId: String? = nil, mobile: String? = nil, email: String? = nil, name: String? = nil) {
            self.caller = caller
            self.openId = openId
            self.userId = userId
            self.mobile = mobile
            self.email = email
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case openId = "OpenId"
            case userId = "UserId"
            case mobile = "Mobile"
            case email = "Email"
            case name = "Name"
        }
    }

    /// ModifyUser返回参数结构体
    public struct ModifyUserResponse: TCResponse {
        /// 腾讯电子签平台用户唯一标识
        public let userId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case requestId = "RequestId"
        }
    }

    /// 更新个人用户信息
    ///
    /// 此接口（ModifyUser）用于更新个人用户信息。
    ///
    /// 注：若修改用户姓名，需要重新通过个人用户实名接口（VerifyUser）进行重新实名。
    @inlinable
    public func modifyUser(_ input: ModifyUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserResponse> {
        self.client.execute(action: "ModifyUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新个人用户信息
    ///
    /// 此接口（ModifyUser）用于更新个人用户信息。
    ///
    /// 注：若修改用户姓名，需要重新通过个人用户实名接口（VerifyUser）进行重新实名。
    @inlinable
    public func modifyUser(_ input: ModifyUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserResponse {
        try await self.client.execute(action: "ModifyUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新个人用户信息
    ///
    /// 此接口（ModifyUser）用于更新个人用户信息。
    ///
    /// 注：若修改用户姓名，需要重新通过个人用户实名接口（VerifyUser）进行重新实名。
    @inlinable
    public func modifyUser(caller: Caller, openId: String? = nil, userId: String? = nil, mobile: String? = nil, email: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserResponse> {
        self.modifyUser(.init(caller: caller, openId: openId, userId: userId, mobile: mobile, email: email, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 更新个人用户信息
    ///
    /// 此接口（ModifyUser）用于更新个人用户信息。
    ///
    /// 注：若修改用户姓名，需要重新通过个人用户实名接口（VerifyUser）进行重新实名。
    @inlinable
    public func modifyUser(caller: Caller, openId: String? = nil, userId: String? = nil, mobile: String? = nil, email: String? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserResponse {
        try await self.modifyUser(.init(caller: caller, openId: openId, userId: userId, mobile: mobile, email: email, name: name), region: region, logger: logger, on: eventLoop)
    }
}
