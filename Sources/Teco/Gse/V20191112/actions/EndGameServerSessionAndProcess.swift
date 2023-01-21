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

extension Gse {
    /// EndGameServerSessionAndProcess请求参数结构体
    public struct EndGameServerSessionAndProcessRequest: TCRequestModel {
        /// 游戏服务器会话ID，如果传入游戏服务器会话ID，结束对应进程以及游戏服务器会话和玩家会话。
        public let gameServerSessionId: String?

        /// CVM的公网IP地址，需同时传入IpAddress和Port，结束IpAddress和Port对应的进程以及游戏服务器会话（如果存在）和玩家会话（如果存在），单独传入IpAddress不生效。
        public let ipAddress: String?

        /// 端口号，取值范围1025-60000，需同时传入IpAddress和Port，结束IpAddress和Port对应的进程以及游戏服务器会话（如果存在）和玩家会话（如果存在），单独传入Port不生效。
        public let port: Int64?

        public init(gameServerSessionId: String? = nil, ipAddress: String? = nil, port: Int64? = nil) {
            self.gameServerSessionId = gameServerSessionId
            self.ipAddress = ipAddress
            self.port = port
        }

        enum CodingKeys: String, CodingKey {
            case gameServerSessionId = "GameServerSessionId"
            case ipAddress = "IpAddress"
            case port = "Port"
        }
    }

    /// EndGameServerSessionAndProcess返回参数结构体
    public struct EndGameServerSessionAndProcessResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 终止游戏服务器会话和对应的进程
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（EndGameServerSessionAndProcess）用于终止游戏服务器会话和对应的进程，适用于时限保护和不保护。
    @inlinable @discardableResult
    public func endGameServerSessionAndProcess(_ input: EndGameServerSessionAndProcessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EndGameServerSessionAndProcessResponse> {
        self.client.execute(action: "EndGameServerSessionAndProcess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终止游戏服务器会话和对应的进程
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（EndGameServerSessionAndProcess）用于终止游戏服务器会话和对应的进程，适用于时限保护和不保护。
    @inlinable @discardableResult
    public func endGameServerSessionAndProcess(_ input: EndGameServerSessionAndProcessRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EndGameServerSessionAndProcessResponse {
        try await self.client.execute(action: "EndGameServerSessionAndProcess", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终止游戏服务器会话和对应的进程
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（EndGameServerSessionAndProcess）用于终止游戏服务器会话和对应的进程，适用于时限保护和不保护。
    @inlinable @discardableResult
    public func endGameServerSessionAndProcess(gameServerSessionId: String? = nil, ipAddress: String? = nil, port: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EndGameServerSessionAndProcessResponse> {
        self.endGameServerSessionAndProcess(EndGameServerSessionAndProcessRequest(gameServerSessionId: gameServerSessionId, ipAddress: ipAddress, port: port), region: region, logger: logger, on: eventLoop)
    }

    /// 终止游戏服务器会话和对应的进程
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（EndGameServerSessionAndProcess）用于终止游戏服务器会话和对应的进程，适用于时限保护和不保护。
    @inlinable @discardableResult
    public func endGameServerSessionAndProcess(gameServerSessionId: String? = nil, ipAddress: String? = nil, port: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EndGameServerSessionAndProcessResponse {
        try await self.endGameServerSessionAndProcess(EndGameServerSessionAndProcessRequest(gameServerSessionId: gameServerSessionId, ipAddress: ipAddress, port: port), region: region, logger: logger, on: eventLoop)
    }
}
