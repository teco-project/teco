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
    /// DescribeGameServerSessionPlacement请求参数结构体
    public struct DescribeGameServerSessionPlacementRequest: TCRequestModel {
        /// 游戏服务器会话放置的唯一标识符
        public let placementId: String

        public init(placementId: String) {
            self.placementId = placementId
        }

        enum CodingKeys: String, CodingKey {
            case placementId = "PlacementId"
        }
    }

    /// DescribeGameServerSessionPlacement返回参数结构体
    public struct DescribeGameServerSessionPlacementResponse: TCResponseModel {
        /// 游戏服务器会话放置
        public let gameServerSessionPlacement: GameServerSessionPlacement

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case gameServerSessionPlacement = "GameServerSessionPlacement"
            case requestId = "RequestId"
        }
    }

    /// 查询游戏服务器会话的放置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeGameServerSessionPlacement）用于查询游戏服务器会话的放置。
    @inlinable
    public func describeGameServerSessionPlacement(_ input: DescribeGameServerSessionPlacementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGameServerSessionPlacementResponse> {
        self.client.execute(action: "DescribeGameServerSessionPlacement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询游戏服务器会话的放置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeGameServerSessionPlacement）用于查询游戏服务器会话的放置。
    @inlinable
    public func describeGameServerSessionPlacement(_ input: DescribeGameServerSessionPlacementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGameServerSessionPlacementResponse {
        try await self.client.execute(action: "DescribeGameServerSessionPlacement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询游戏服务器会话的放置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeGameServerSessionPlacement）用于查询游戏服务器会话的放置。
    @inlinable
    public func describeGameServerSessionPlacement(placementId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGameServerSessionPlacementResponse> {
        self.describeGameServerSessionPlacement(DescribeGameServerSessionPlacementRequest(placementId: placementId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询游戏服务器会话的放置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DescribeGameServerSessionPlacement）用于查询游戏服务器会话的放置。
    @inlinable
    public func describeGameServerSessionPlacement(placementId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGameServerSessionPlacementResponse {
        try await self.describeGameServerSessionPlacement(DescribeGameServerSessionPlacementRequest(placementId: placementId), region: region, logger: logger, on: eventLoop)
    }
}
