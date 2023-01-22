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

extension Gs {
    /// DescribeInstancesCount请求参数结构体
    public struct DescribeInstancesCountRequest: TCRequestModel {
        /// 游戏ID
        public let gameId: String?

        /// 实例分组ID
        public let groupId: String?

        /// 游戏区域
        public let gameRegion: String?

        /// 游戏类型。
        /// MOBILE：手游
        /// PC：默认值，端游
        public let gameType: String?

        public init(gameId: String? = nil, groupId: String? = nil, gameRegion: String? = nil, gameType: String? = nil) {
            self.gameId = gameId
            self.groupId = groupId
            self.gameRegion = gameRegion
            self.gameType = gameType
        }

        enum CodingKeys: String, CodingKey {
            case gameId = "GameId"
            case groupId = "GroupId"
            case gameRegion = "GameRegion"
            case gameType = "GameType"
        }
    }

    /// DescribeInstancesCount返回参数结构体
    public struct DescribeInstancesCountResponse: TCResponseModel {
        /// 客户的实例总数
        public let total: UInt64

        /// 客户的实例运行数
        public let running: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case running = "Running"
            case requestId = "RequestId"
        }
    }

    /// 获取并发总数和运行数
    @inlinable
    public func describeInstancesCount(_ input: DescribeInstancesCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesCountResponse> {
        self.client.execute(action: "DescribeInstancesCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取并发总数和运行数
    @inlinable
    public func describeInstancesCount(_ input: DescribeInstancesCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesCountResponse {
        try await self.client.execute(action: "DescribeInstancesCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取并发总数和运行数
    @inlinable
    public func describeInstancesCount(gameId: String? = nil, groupId: String? = nil, gameRegion: String? = nil, gameType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesCountResponse> {
        self.describeInstancesCount(DescribeInstancesCountRequest(gameId: gameId, groupId: groupId, gameRegion: gameRegion, gameType: gameType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取并发总数和运行数
    @inlinable
    public func describeInstancesCount(gameId: String? = nil, groupId: String? = nil, gameRegion: String? = nil, gameType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesCountResponse {
        try await self.describeInstancesCount(DescribeInstancesCountRequest(gameId: gameId, groupId: groupId, gameRegion: gameRegion, gameType: gameType), region: region, logger: logger, on: eventLoop)
    }
}
