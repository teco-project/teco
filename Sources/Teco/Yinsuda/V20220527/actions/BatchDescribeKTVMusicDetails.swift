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

extension Yinsuda {
    /// BatchDescribeKTVMusicDetails请求参数结构体
    public struct BatchDescribeKTVMusicDetailsRequest: TCRequest {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 歌曲 Id 列表。
        public let musicIds: [String]

        /// 播放场景。默认为Chat
        /// - Live：直播
        /// - Chat：语聊
        public let playScene: String?

        /// 玩家用户标识
        public let guestUserId: String?

        /// 房间Id
        public let roomId: String?

        public init(appName: String, userId: String, musicIds: [String], playScene: String? = nil, guestUserId: String? = nil, roomId: String? = nil) {
            self.appName = appName
            self.userId = userId
            self.musicIds = musicIds
            self.playScene = playScene
            self.guestUserId = guestUserId
            self.roomId = roomId
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case musicIds = "MusicIds"
            case playScene = "PlayScene"
            case guestUserId = "GuestUserId"
            case roomId = "RoomId"
        }
    }

    /// BatchDescribeKTVMusicDetails返回参数结构体
    public struct BatchDescribeKTVMusicDetailsResponse: TCResponse {
        /// 歌曲详细信息列表。
        public let ktvMusicDetailInfoSet: [KTVMusicDetailInfo]

        /// 不存在歌曲Id列表。
        public let notExistMusicIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ktvMusicDetailInfoSet = "KTVMusicDetailInfoSet"
            case notExistMusicIdSet = "NotExistMusicIdSet"
            case requestId = "RequestId"
        }
    }

    /// 批量获取歌曲详情
    ///
    /// 批量获取歌曲详细信息，包括：歌词下载链接、播放凭证、音高数据下载链接信息等。
    @inlinable
    public func batchDescribeKTVMusicDetails(_ input: BatchDescribeKTVMusicDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDescribeKTVMusicDetailsResponse> {
        self.client.execute(action: "BatchDescribeKTVMusicDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量获取歌曲详情
    ///
    /// 批量获取歌曲详细信息，包括：歌词下载链接、播放凭证、音高数据下载链接信息等。
    @inlinable
    public func batchDescribeKTVMusicDetails(_ input: BatchDescribeKTVMusicDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDescribeKTVMusicDetailsResponse {
        try await self.client.execute(action: "BatchDescribeKTVMusicDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量获取歌曲详情
    ///
    /// 批量获取歌曲详细信息，包括：歌词下载链接、播放凭证、音高数据下载链接信息等。
    @inlinable
    public func batchDescribeKTVMusicDetails(appName: String, userId: String, musicIds: [String], playScene: String? = nil, guestUserId: String? = nil, roomId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDescribeKTVMusicDetailsResponse> {
        self.batchDescribeKTVMusicDetails(.init(appName: appName, userId: userId, musicIds: musicIds, playScene: playScene, guestUserId: guestUserId, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量获取歌曲详情
    ///
    /// 批量获取歌曲详细信息，包括：歌词下载链接、播放凭证、音高数据下载链接信息等。
    @inlinable
    public func batchDescribeKTVMusicDetails(appName: String, userId: String, musicIds: [String], playScene: String? = nil, guestUserId: String? = nil, roomId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDescribeKTVMusicDetailsResponse {
        try await self.batchDescribeKTVMusicDetails(.init(appName: appName, userId: userId, musicIds: musicIds, playScene: playScene, guestUserId: guestUserId, roomId: roomId), region: region, logger: logger, on: eventLoop)
    }
}
