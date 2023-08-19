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

extension Gse {
    /// GetGameServerSessionLogUrl请求参数结构体
    public struct GetGameServerSessionLogUrlRequest: TCRequest {
        /// 游戏服务器会话ID，最小长度不小于1个ASCII字符，最大长度不超过48个ASCII字符
        public let gameServerSessionId: String

        public init(gameServerSessionId: String) {
            self.gameServerSessionId = gameServerSessionId
        }

        enum CodingKeys: String, CodingKey {
            case gameServerSessionId = "GameServerSessionId"
        }
    }

    /// GetGameServerSessionLogUrl返回参数结构体
    public struct GetGameServerSessionLogUrlResponse: TCResponse {
        /// 日志下载URL，最小长度不小于1个ASCII字符，最大长度不超过1024个ASCII字符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let preSignedUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case preSignedUrl = "PreSignedUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取游戏服务器会话的日志URL
    ///
    /// 本接口（GetGameServerSessionLogUrl）用于获取游戏服务器会话的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerSessionLogUrl(_ input: GetGameServerSessionLogUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGameServerSessionLogUrlResponse> {
        fatalError("GetGameServerSessionLogUrl is no longer available.")
    }

    /// 获取游戏服务器会话的日志URL
    ///
    /// 本接口（GetGameServerSessionLogUrl）用于获取游戏服务器会话的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerSessionLogUrl(_ input: GetGameServerSessionLogUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGameServerSessionLogUrlResponse {
        fatalError("GetGameServerSessionLogUrl is no longer available.")
    }

    /// 获取游戏服务器会话的日志URL
    ///
    /// 本接口（GetGameServerSessionLogUrl）用于获取游戏服务器会话的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerSessionLogUrl(gameServerSessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetGameServerSessionLogUrlResponse> {
        fatalError("GetGameServerSessionLogUrl is no longer available.")
    }

    /// 获取游戏服务器会话的日志URL
    ///
    /// 本接口（GetGameServerSessionLogUrl）用于获取游戏服务器会话的日志URL。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func getGameServerSessionLogUrl(gameServerSessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGameServerSessionLogUrlResponse {
        fatalError("GetGameServerSessionLogUrl is no longer available.")
    }
}
