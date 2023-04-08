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

extension Mgobe {
    /// DescribePlayer请求参数结构体
    public struct DescribePlayerRequest: TCRequestModel {
        /// 游戏资源Id。
        public let gameId: String

        /// 玩家OpenId。
        public let openId: String?

        /// 玩家PlayerId，由后台分配，当OpenId不传的时候，PlayerId必传，传入PlayerId可以查询当前PlayerId的玩家信息，当OpenId传入的时候，PlayerId可不传，按照OpenId查询玩家信息。
        public let playerId: String?

        public init(gameId: String, openId: String? = nil, playerId: String? = nil) {
            self.gameId = gameId
            self.openId = openId
            self.playerId = playerId
        }

        enum CodingKeys: String, CodingKey {
            case gameId = "GameId"
            case openId = "OpenId"
            case playerId = "PlayerId"
        }
    }

    /// DescribePlayer返回参数结构体
    public struct DescribePlayerResponse: TCResponseModel {
        /// 玩家信息。
        public let player: Player

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case player = "Player"
            case requestId = "RequestId"
        }
    }

    /// 查询玩家信息
    ///
    /// 该接口用于查询玩家信息。支持两种用法，当OpenId不传的时候，PlayerId必传，传入PlayerId可以查询当前PlayerId的玩家信息，当OpenId传入的时候，PlayerId可不传，按照OpenId查询玩家信息。
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayer(_ input: DescribePlayerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePlayerResponse> {
        fatalError("DescribePlayer is no longer available.")
    }

    /// 查询玩家信息
    ///
    /// 该接口用于查询玩家信息。支持两种用法，当OpenId不传的时候，PlayerId必传，传入PlayerId可以查询当前PlayerId的玩家信息，当OpenId传入的时候，PlayerId可不传，按照OpenId查询玩家信息。
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayer(_ input: DescribePlayerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePlayerResponse {
        fatalError("DescribePlayer is no longer available.")
    }

    /// 查询玩家信息
    ///
    /// 该接口用于查询玩家信息。支持两种用法，当OpenId不传的时候，PlayerId必传，传入PlayerId可以查询当前PlayerId的玩家信息，当OpenId传入的时候，PlayerId可不传，按照OpenId查询玩家信息。
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayer(gameId: String, openId: String? = nil, playerId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePlayerResponse> {
        fatalError("DescribePlayer is no longer available.")
    }

    /// 查询玩家信息
    ///
    /// 该接口用于查询玩家信息。支持两种用法，当OpenId不传的时候，PlayerId必传，传入PlayerId可以查询当前PlayerId的玩家信息，当OpenId传入的时候，PlayerId可不传，按照OpenId查询玩家信息。
    @available(*, unavailable, message: "此接口无法使用，游戏联机对战引擎MGOBE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describePlayer(gameId: String, openId: String? = nil, playerId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePlayerResponse {
        fatalError("DescribePlayer is no longer available.")
    }
}
