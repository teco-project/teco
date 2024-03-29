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
    /// BatchDescribeKTVMusicDetails请求参数结构体
    public struct BatchDescribeKTVMusicDetailsRequest: TCRequest {
        /// 歌曲Id列表，注：列表最大长度为50
        public let musicIds: [String]

        public init(musicIds: [String]) {
            self.musicIds = musicIds
        }

        enum CodingKeys: String, CodingKey {
            case musicIds = "MusicIds"
        }
    }

    /// BatchDescribeKTVMusicDetails返回参数结构体
    public struct BatchDescribeKTVMusicDetailsResponse: TCResponse {
        /// 歌曲详情列表信息
        public let ktvMusicDetailInfoSet: [KTVMusicDetailInfo]

        /// 不存在的歌曲 ID 列表。
        public let notExistMusicIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ktvMusicDetailInfoSet = "KTVMusicDetailInfoSet"
            case notExistMusicIdSet = "NotExistMusicIdSet"
            case requestId = "RequestId"
        }
    }

    /// 批量获取直播互动曲目详情
    ///
    /// 根据 Id 列表查询歌曲的详细信息，包含基础信息及播放信息。
    @inlinable
    public func batchDescribeKTVMusicDetails(_ input: BatchDescribeKTVMusicDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDescribeKTVMusicDetailsResponse> {
        self.client.execute(action: "BatchDescribeKTVMusicDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量获取直播互动曲目详情
    ///
    /// 根据 Id 列表查询歌曲的详细信息，包含基础信息及播放信息。
    @inlinable
    public func batchDescribeKTVMusicDetails(_ input: BatchDescribeKTVMusicDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDescribeKTVMusicDetailsResponse {
        try await self.client.execute(action: "BatchDescribeKTVMusicDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量获取直播互动曲目详情
    ///
    /// 根据 Id 列表查询歌曲的详细信息，包含基础信息及播放信息。
    @inlinable
    public func batchDescribeKTVMusicDetails(musicIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchDescribeKTVMusicDetailsResponse> {
        self.batchDescribeKTVMusicDetails(.init(musicIds: musicIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量获取直播互动曲目详情
    ///
    /// 根据 Id 列表查询歌曲的详细信息，包含基础信息及播放信息。
    @inlinable
    public func batchDescribeKTVMusicDetails(musicIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDescribeKTVMusicDetailsResponse {
        try await self.batchDescribeKTVMusicDetails(.init(musicIds: musicIds), region: region, logger: logger, on: eventLoop)
    }
}
