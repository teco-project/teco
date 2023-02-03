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

extension Iot {
    /// AppGetToken请求参数结构体
    public struct AppGetTokenRequest: TCRequestModel {
        /// 用户名
        public let userName: String

        /// 密码
        public let password: String

        /// TTL
        public let expire: UInt64?

        public init(userName: String, password: String, expire: UInt64? = nil) {
            self.userName = userName
            self.password = password
            self.expire = expire
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case password = "Password"
            case expire = "Expire"
        }
    }

    /// AppGetToken返回参数结构体
    public struct AppGetTokenResponse: TCResponseModel {
        /// 访问Token
        public let accessToken: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
            case requestId = "RequestId"
        }
    }

    /// 获取用户token
    @inlinable
    public func appGetToken(_ input: AppGetTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppGetTokenResponse> {
        self.client.execute(action: "AppGetToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户token
    @inlinable
    public func appGetToken(_ input: AppGetTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetTokenResponse {
        try await self.client.execute(action: "AppGetToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户token
    @inlinable
    public func appGetToken(userName: String, password: String, expire: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AppGetTokenResponse> {
        let input = AppGetTokenRequest(userName: userName, password: password, expire: expire)
        return self.client.execute(action: "AppGetToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户token
    @inlinable
    public func appGetToken(userName: String, password: String, expire: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AppGetTokenResponse {
        let input = AppGetTokenRequest(userName: userName, password: password, expire: expire)
        return try await self.client.execute(action: "AppGetToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
