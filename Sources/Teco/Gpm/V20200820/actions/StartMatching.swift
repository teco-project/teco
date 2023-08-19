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

extension Gpm {
    /// StartMatching请求参数结构体
    public struct StartMatchingRequest: TCRequest {
        /// 匹配 Code。
        public let matchCode: String

        /// 玩家信息 最多 200 条。
        public let players: [Player]

        /// 匹配票据 ID 默认空字符串，为空则由 GPM 自动生成 长度 128，只能包含数字、字母、. 和 -
        public let matchTicketId: String?

        public init(matchCode: String, players: [Player], matchTicketId: String? = nil) {
            self.matchCode = matchCode
            self.players = players
            self.matchTicketId = matchTicketId
        }

        enum CodingKeys: String, CodingKey {
            case matchCode = "MatchCode"
            case players = "Players"
            case matchTicketId = "MatchTicketId"
        }
    }

    /// StartMatching返回参数结构体
    public struct StartMatchingResponse: TCResponse {
        /// 错误码。
        public let errCode: UInt64

        /// 匹配票据 ID长度 128。
        public let matchTicketId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case matchTicketId = "MatchTicketId"
            case requestId = "RequestId"
        }
    }

    /// 发起匹配
    ///
    /// 支持传入一个玩家或多个玩家发起匹配，在同一个请求内的玩家将被分到同一个对局。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func startMatching(_ input: StartMatchingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMatchingResponse> {
        fatalError("StartMatching is no longer available.")
    }

    /// 发起匹配
    ///
    /// 支持传入一个玩家或多个玩家发起匹配，在同一个请求内的玩家将被分到同一个对局。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func startMatching(_ input: StartMatchingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMatchingResponse {
        fatalError("StartMatching is no longer available.")
    }

    /// 发起匹配
    ///
    /// 支持传入一个玩家或多个玩家发起匹配，在同一个请求内的玩家将被分到同一个对局。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func startMatching(matchCode: String, players: [Player], matchTicketId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMatchingResponse> {
        fatalError("StartMatching is no longer available.")
    }

    /// 发起匹配
    ///
    /// 支持传入一个玩家或多个玩家发起匹配，在同一个请求内的玩家将被分到同一个对局。
    @available(*, unavailable, message: "此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持")
    @inlinable
    public func startMatching(matchCode: String, players: [Player], matchTicketId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMatchingResponse {
        fatalError("StartMatching is no longer available.")
    }
}
