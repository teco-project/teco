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

extension Iotvideo {
    /// CreateAnonymousAccessToken请求参数结构体
    public struct CreateAnonymousAccessTokenRequest: TCRequestModel {
        /// Token的TTL(time to alive)分钟数,最大值1440(即24小时)
        public let ttlMinutes: Int64

        /// 设备ID。创建Token时, 此参数为必须项
        public let tid: String?

        /// 旧的AccessToken。续期Token时，此参数为必须
        public let oldAccessToken: String?

        public init(ttlMinutes: Int64, tid: String? = nil, oldAccessToken: String? = nil) {
            self.ttlMinutes = ttlMinutes
            self.tid = tid
            self.oldAccessToken = oldAccessToken
        }

        enum CodingKeys: String, CodingKey {
            case ttlMinutes = "TtlMinutes"
            case tid = "Tid"
            case oldAccessToken = "OldAccessToken"
        }
    }

    /// CreateAnonymousAccessToken返回参数结构体
    public struct CreateAnonymousAccessTokenResponse: TCResponseModel {
        /// 终端用户在IoT Video上的唯一标识ID
        public let accessId: String

        /// IoT Video平台的AccessToken
        public let accessToken: String

        /// Token的过期时间，单位秒(UTC时间)
        public let expireTime: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
            case accessToken = "AccessToken"
            case expireTime = "ExpireTime"
            case requestId = "RequestId"
        }
    }

    /// 创建匿名访问Token
    @inlinable
    public func createAnonymousAccessToken(_ input: CreateAnonymousAccessTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAnonymousAccessTokenResponse> {
        self.client.execute(action: "CreateAnonymousAccessToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建匿名访问Token
    @inlinable
    public func createAnonymousAccessToken(_ input: CreateAnonymousAccessTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAnonymousAccessTokenResponse {
        try await self.client.execute(action: "CreateAnonymousAccessToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建匿名访问Token
    @inlinable
    public func createAnonymousAccessToken(ttlMinutes: Int64, tid: String? = nil, oldAccessToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAnonymousAccessTokenResponse> {
        let input = CreateAnonymousAccessTokenRequest(ttlMinutes: ttlMinutes, tid: tid, oldAccessToken: oldAccessToken)
        return self.client.execute(action: "CreateAnonymousAccessToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建匿名访问Token
    @inlinable
    public func createAnonymousAccessToken(ttlMinutes: Int64, tid: String? = nil, oldAccessToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAnonymousAccessTokenResponse {
        let input = CreateAnonymousAccessTokenRequest(ttlMinutes: ttlMinutes, tid: tid, oldAccessToken: oldAccessToken)
        return try await self.client.execute(action: "CreateAnonymousAccessToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
