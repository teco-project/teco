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

import TecoCore

extension Iotvideo {
    /// CreateUsrToken请求参数结构体
    public struct CreateUsrTokenRequest: TCRequestModel {
        /// 终端用户在IoT Video上的唯一标识ID
        public let accessId: String

        /// 终端唯一ID，用于区分同一个用户的多个终端
        public let uniqueId: String

        /// Token的TTL(time to alive)分钟数
        public let ttlMinutes: UInt64

        /// 旧的AccessToken。续期Token时，此参数为必须。
        public let oldAccessToken: String?

        public init(accessId: String, uniqueId: String, ttlMinutes: UInt64, oldAccessToken: String? = nil) {
            self.accessId = accessId
            self.uniqueId = uniqueId
            self.ttlMinutes = ttlMinutes
            self.oldAccessToken = oldAccessToken
        }

        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
            case uniqueId = "UniqueId"
            case ttlMinutes = "TtlMinutes"
            case oldAccessToken = "OldAccessToken"
        }
    }

    /// CreateUsrToken返回参数结构体
    public struct CreateUsrTokenResponse: TCResponseModel {
        /// 终端用户在IoT Video上的唯一标识ID
        public let accessId: String

        /// IoT Video平台的AccessToken
        public let accessToken: String

        /// Token的过期时间，单位秒(UTC时间)
        public let expireTime: UInt64

        /// 终端ID
        public let terminalId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
            case accessToken = "AccessToken"
            case expireTime = "ExpireTime"
            case terminalId = "TerminalId"
            case requestId = "RequestId"
        }
    }

    /// 终端用户接入授权
    ///
    /// 本接口（CreateUsrToken）用于终端用户获取IoT Video平台的accessToken，初始化SDK,连接到IoT Video接入服务器。
    @inlinable
    public func createUsrToken(_ input: CreateUsrTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUsrTokenResponse> {
        self.client.execute(action: "CreateUsrToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终端用户接入授权
    ///
    /// 本接口（CreateUsrToken）用于终端用户获取IoT Video平台的accessToken，初始化SDK,连接到IoT Video接入服务器。
    @inlinable
    public func createUsrToken(_ input: CreateUsrTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUsrTokenResponse {
        try await self.client.execute(action: "CreateUsrToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终端用户接入授权
    ///
    /// 本接口（CreateUsrToken）用于终端用户获取IoT Video平台的accessToken，初始化SDK,连接到IoT Video接入服务器。
    @inlinable
    public func createUsrToken(accessId: String, uniqueId: String, ttlMinutes: UInt64, oldAccessToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUsrTokenResponse> {
        self.createUsrToken(.init(accessId: accessId, uniqueId: uniqueId, ttlMinutes: ttlMinutes, oldAccessToken: oldAccessToken), region: region, logger: logger, on: eventLoop)
    }

    /// 终端用户接入授权
    ///
    /// 本接口（CreateUsrToken）用于终端用户获取IoT Video平台的accessToken，初始化SDK,连接到IoT Video接入服务器。
    @inlinable
    public func createUsrToken(accessId: String, uniqueId: String, ttlMinutes: UInt64, oldAccessToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUsrTokenResponse {
        try await self.createUsrToken(.init(accessId: accessId, uniqueId: uniqueId, ttlMinutes: ttlMinutes, oldAccessToken: oldAccessToken), region: region, logger: logger, on: eventLoop)
    }
}
