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
    /// StopGameServerSessionPlacement请求参数结构体
    public struct StopGameServerSessionPlacementRequest: TCRequest {
        /// 游戏服务器会话放置的唯一标识符
        public let placementId: String

        public init(placementId: String) {
            self.placementId = placementId
        }

        enum CodingKeys: String, CodingKey {
            case placementId = "PlacementId"
        }
    }

    /// StopGameServerSessionPlacement返回参数结构体
    public struct StopGameServerSessionPlacementResponse: TCResponse {
        /// 游戏服务器会话放置
        public let gameServerSessionPlacement: GameServerSessionPlacement

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case gameServerSessionPlacement = "GameServerSessionPlacement"
            case requestId = "RequestId"
        }
    }

    /// 停止放置游戏服务器会话
    ///
    /// 本接口（StopGameServerSessionPlacement）用于停止放置游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func stopGameServerSessionPlacement(_ input: StopGameServerSessionPlacementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopGameServerSessionPlacementResponse> {
        fatalError("StopGameServerSessionPlacement is no longer available.")
    }

    /// 停止放置游戏服务器会话
    ///
    /// 本接口（StopGameServerSessionPlacement）用于停止放置游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func stopGameServerSessionPlacement(_ input: StopGameServerSessionPlacementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopGameServerSessionPlacementResponse {
        fatalError("StopGameServerSessionPlacement is no longer available.")
    }

    /// 停止放置游戏服务器会话
    ///
    /// 本接口（StopGameServerSessionPlacement）用于停止放置游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func stopGameServerSessionPlacement(placementId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopGameServerSessionPlacementResponse> {
        fatalError("StopGameServerSessionPlacement is no longer available.")
    }

    /// 停止放置游戏服务器会话
    ///
    /// 本接口（StopGameServerSessionPlacement）用于停止放置游戏服务器会话。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func stopGameServerSessionPlacement(placementId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopGameServerSessionPlacementResponse {
        fatalError("StopGameServerSessionPlacement is no longer available.")
    }
}
