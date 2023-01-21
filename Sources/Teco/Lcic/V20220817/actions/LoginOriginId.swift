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

extension Lcic {
    /// LoginOriginId请求参数结构体
    public struct LoginOriginIdRequest: TCRequestModel {
        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: UInt64

        /// 用户在客户系统的Id，需要在同一应用下唯一。
        public let originId: String

        public init(sdkAppId: UInt64, originId: String) {
            self.sdkAppId = sdkAppId
            self.originId = originId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case originId = "OriginId"
        }
    }

    /// LoginOriginId返回参数结构体
    public struct LoginOriginIdResponse: TCResponseModel {
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

    /// 源账号登录
    ///
    /// 使用源账号登录，源账号为注册时填入的originId
    @inlinable
    public func loginOriginId(_ input: LoginOriginIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LoginOriginIdResponse> {
        self.client.execute(action: "LoginOriginId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 源账号登录
    ///
    /// 使用源账号登录，源账号为注册时填入的originId
    @inlinable
    public func loginOriginId(_ input: LoginOriginIdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LoginOriginIdResponse {
        try await self.client.execute(action: "LoginOriginId", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 源账号登录
    ///
    /// 使用源账号登录，源账号为注册时填入的originId
    @inlinable
    public func loginOriginId(sdkAppId: UInt64, originId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LoginOriginIdResponse> {
        self.loginOriginId(LoginOriginIdRequest(sdkAppId: sdkAppId, originId: originId), region: region, logger: logger, on: eventLoop)
    }

    /// 源账号登录
    ///
    /// 使用源账号登录，源账号为注册时填入的originId
    @inlinable
    public func loginOriginId(sdkAppId: UInt64, originId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LoginOriginIdResponse {
        try await self.loginOriginId(LoginOriginIdRequest(sdkAppId: sdkAppId, originId: originId), region: region, logger: logger, on: eventLoop)
    }
}
