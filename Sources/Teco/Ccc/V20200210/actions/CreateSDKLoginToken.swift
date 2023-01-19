//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ccc {
    /// CreateSDKLoginToken请求参数结构体
    public struct CreateSDKLoginTokenRequest: TCRequestModel {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64

        /// 坐席账号。
        public let seatUserId: String

        public init(sdkAppId: Int64, seatUserId: String) {
            self.sdkAppId = sdkAppId
            self.seatUserId = seatUserId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case seatUserId = "SeatUserId"
        }
    }

    /// CreateSDKLoginToken返回参数结构体
    public struct CreateSDKLoginTokenResponse: TCResponseModel {
        /// SDK 登录 Token。
        public let token: String

        /// 过期时间戳，Unix 时间戳。
        public let expiredTime: Int64

        /// SDK 加载路径会随着 SDK 的发布而变动。
        public let sdkURL: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case token = "Token"
            case expiredTime = "ExpiredTime"
            case sdkURL = "SdkURL"
            case requestId = "RequestId"
        }
    }

    /// 创建 SDK 登录 Token
    ///
    /// 创建 SDK 登录 Token。
    @inlinable
    public func createSDKLoginToken(_ input: CreateSDKLoginTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSDKLoginTokenResponse> {
        self.client.execute(action: "CreateSDKLoginToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 SDK 登录 Token
    ///
    /// 创建 SDK 登录 Token。
    @inlinable
    public func createSDKLoginToken(_ input: CreateSDKLoginTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSDKLoginTokenResponse {
        try await self.client.execute(action: "CreateSDKLoginToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建 SDK 登录 Token
    ///
    /// 创建 SDK 登录 Token。
    @inlinable
    public func createSDKLoginToken(sdkAppId: Int64, seatUserId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSDKLoginTokenResponse> {
        self.createSDKLoginToken(CreateSDKLoginTokenRequest(sdkAppId: sdkAppId, seatUserId: seatUserId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建 SDK 登录 Token
    ///
    /// 创建 SDK 登录 Token。
    @inlinable
    public func createSDKLoginToken(sdkAppId: Int64, seatUserId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSDKLoginTokenResponse {
        try await self.createSDKLoginToken(CreateSDKLoginTokenRequest(sdkAppId: sdkAppId, seatUserId: seatUserId), region: region, logger: logger, on: eventLoop)
    }
}
