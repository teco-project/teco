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

extension Bizlive {
    /// RegisterIM请求参数结构体
    public struct RegisterIMRequest: TCRequestModel {
        /// 用户昵称
        public let nickname: String

        /// 用户唯一ID，建议采用用户小程序OpenID加盐形式
        public let userId: String

        /// 用户头像URL
        public let headImgUrl: String?

        /// 用户身份，默认值：0，表示无特殊身份
        public let level: Int64?

        public init(nickname: String, userId: String, headImgUrl: String? = nil, level: Int64? = nil) {
            self.nickname = nickname
            self.userId = userId
            self.headImgUrl = headImgUrl
            self.level = level
        }

        enum CodingKeys: String, CodingKey {
            case nickname = "Nickname"
            case userId = "UserId"
            case headImgUrl = "HeadImgUrl"
            case level = "Level"
        }
    }

    /// RegisterIM返回参数结构体
    public struct RegisterIMResponse: TCResponseModel {
        /// 用来传递给插件的关键字段
        public let userKey: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userKey = "UserKey"
            case requestId = "RequestId"
        }
    }

    /// 注册聊天室
    @inlinable
    public func registerIM(_ input: RegisterIMRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterIMResponse> {
        self.client.execute(action: "RegisterIM", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 注册聊天室
    @inlinable
    public func registerIM(_ input: RegisterIMRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterIMResponse {
        try await self.client.execute(action: "RegisterIM", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 注册聊天室
    @inlinable
    public func registerIM(nickname: String, userId: String, headImgUrl: String? = nil, level: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterIMResponse> {
        self.registerIM(RegisterIMRequest(nickname: nickname, userId: userId, headImgUrl: headImgUrl, level: level), region: region, logger: logger, on: eventLoop)
    }

    /// 注册聊天室
    @inlinable
    public func registerIM(nickname: String, userId: String, headImgUrl: String? = nil, level: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterIMResponse {
        try await self.registerIM(RegisterIMRequest(nickname: nickname, userId: userId, headImgUrl: headImgUrl, level: level), region: region, logger: logger, on: eventLoop)
    }
}
