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

extension Rkp {
    /// GetToken请求参数结构体
    public struct GetTokenRequest: TCRequest {
        /// 业务ID
        public let businessId: Int64

        /// 业务子场景
        public let scene: Int64

        /// 业务侧账号体系下的用户ID
        public let businessUserId: String?

        /// 用户侧的IP
        public let appClientIp: String?

        /// 过期时间
        public let expireTime: Int64?

        /// 上一个token
        public let oldToken: String?

        public init(businessId: Int64, scene: Int64, businessUserId: String? = nil, appClientIp: String? = nil, expireTime: Int64? = nil, oldToken: String? = nil) {
            self.businessId = businessId
            self.scene = scene
            self.businessUserId = businessUserId
            self.appClientIp = appClientIp
            self.expireTime = expireTime
            self.oldToken = oldToken
        }

        enum CodingKeys: String, CodingKey {
            case businessId = "BusinessId"
            case scene = "Scene"
            case businessUserId = "BusinessUserId"
            case appClientIp = "AppClientIp"
            case expireTime = "ExpireTime"
            case oldToken = "OldToken"
        }
    }

    /// GetToken返回参数结构体
    public struct GetTokenResponse: TCResponse {
        /// 返回token
        public let token: String

        /// 过期时间
        public let expireTime: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case token = "Token"
            case expireTime = "ExpireTime"
            case requestId = "RequestId"
        }
    }

    /// 获取token
    ///
    /// 获取token接口。
    @inlinable
    public func getToken(_ input: GetTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTokenResponse> {
        self.client.execute(action: "GetToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取token
    ///
    /// 获取token接口。
    @inlinable
    public func getToken(_ input: GetTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTokenResponse {
        try await self.client.execute(action: "GetToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取token
    ///
    /// 获取token接口。
    @inlinable
    public func getToken(businessId: Int64, scene: Int64, businessUserId: String? = nil, appClientIp: String? = nil, expireTime: Int64? = nil, oldToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTokenResponse> {
        self.getToken(.init(businessId: businessId, scene: scene, businessUserId: businessUserId, appClientIp: appClientIp, expireTime: expireTime, oldToken: oldToken), region: region, logger: logger, on: eventLoop)
    }

    /// 获取token
    ///
    /// 获取token接口。
    @inlinable
    public func getToken(businessId: Int64, scene: Int64, businessUserId: String? = nil, appClientIp: String? = nil, expireTime: Int64? = nil, oldToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTokenResponse {
        try await self.getToken(.init(businessId: businessId, scene: scene, businessUserId: businessUserId, appClientIp: appClientIp, expireTime: expireTime, oldToken: oldToken), region: region, logger: logger, on: eventLoop)
    }
}
