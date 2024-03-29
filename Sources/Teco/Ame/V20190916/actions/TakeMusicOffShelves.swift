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

extension Ame {
    /// TakeMusicOffShelves请求参数结构体
    public struct TakeMusicOffShelvesRequest: TCRequest {
        /// 资源方下架必传结构
        public let takeMusicOffShelves: [TakeMusicOffShelves]

        public init(takeMusicOffShelves: [TakeMusicOffShelves]) {
            self.takeMusicOffShelves = takeMusicOffShelves
        }

        enum CodingKeys: String, CodingKey {
            case takeMusicOffShelves = "TakeMusicOffShelves"
        }
    }

    /// TakeMusicOffShelves返回参数结构体
    public struct TakeMusicOffShelvesResponse: TCResponse {
        /// 返回成功数量
        public let successNum: Int64

        /// 返回失败数量
        public let failedNum: Int64

        /// 返回失败歌曲musicId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedMusicIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successNum = "SuccessNum"
            case failedNum = "FailedNum"
            case failedMusicIds = "FailedMusicIds"
            case requestId = "RequestId"
        }
    }

    /// 下架歌曲
    ///
    /// 根据资源方所传MusicId进行将歌曲进行下架，多个MusicId使用逗号隔开
    @inlinable
    public func takeMusicOffShelves(_ input: TakeMusicOffShelvesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TakeMusicOffShelvesResponse> {
        self.client.execute(action: "TakeMusicOffShelves", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下架歌曲
    ///
    /// 根据资源方所传MusicId进行将歌曲进行下架，多个MusicId使用逗号隔开
    @inlinable
    public func takeMusicOffShelves(_ input: TakeMusicOffShelvesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TakeMusicOffShelvesResponse {
        try await self.client.execute(action: "TakeMusicOffShelves", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下架歌曲
    ///
    /// 根据资源方所传MusicId进行将歌曲进行下架，多个MusicId使用逗号隔开
    @inlinable
    public func takeMusicOffShelves(takeMusicOffShelves: [TakeMusicOffShelves], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TakeMusicOffShelvesResponse> {
        self.takeMusicOffShelves(.init(takeMusicOffShelves: takeMusicOffShelves), region: region, logger: logger, on: eventLoop)
    }

    /// 下架歌曲
    ///
    /// 根据资源方所传MusicId进行将歌曲进行下架，多个MusicId使用逗号隔开
    @inlinable
    public func takeMusicOffShelves(takeMusicOffShelves: [TakeMusicOffShelves], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TakeMusicOffShelvesResponse {
        try await self.takeMusicOffShelves(.init(takeMusicOffShelves: takeMusicOffShelves), region: region, logger: logger, on: eventLoop)
    }
}
