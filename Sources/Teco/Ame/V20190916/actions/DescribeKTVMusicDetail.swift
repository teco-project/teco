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

extension Ame {
    /// DescribeKTVMusicDetail请求参数结构体
    public struct DescribeKTVMusicDetailRequest: TCRequestModel {
        /// 曲目 Id
        public let musicId: String

        public init(musicId: String) {
            self.musicId = musicId
        }

        enum CodingKeys: String, CodingKey {
            case musicId = "MusicId"
        }
    }

    /// DescribeKTVMusicDetail返回参数结构体
    public struct DescribeKTVMusicDetailResponse: TCResponseModel {
        /// 歌曲基础信息
        public let ktvMusicBaseInfo: KTVMusicBaseInfo

        /// 播放凭证
        public let playToken: String

        /// 歌词下载地址
        public let lyricsUrl: String

        /// 歌曲规格信息列表
        public let definitionInfoSet: [KTVMusicDefinitionInfo]

        /// 音高数据文件下载地址
        public let midiJsonUrl: String

        /// 副歌片段数据列表
        public let chorusClipSet: [ChorusClip]

        /// 前奏间隔，单位：毫秒；注：若参数返回为0则无人声部分
        public let preludeInterval: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ktvMusicBaseInfo = "KTVMusicBaseInfo"
            case playToken = "PlayToken"
            case lyricsUrl = "LyricsUrl"
            case definitionInfoSet = "DefinitionInfoSet"
            case midiJsonUrl = "MidiJsonUrl"
            case chorusClipSet = "ChorusClipSet"
            case preludeInterval = "PreludeInterval"
            case requestId = "RequestId"
        }
    }

    /// 获取直播互动曲目详情
    ///
    /// 根据 Id 查询歌曲的详细信息，包含基础信息及播放信息。
    @inlinable
    public func describeKTVMusicDetail(_ input: DescribeKTVMusicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVMusicDetailResponse> {
        self.client.execute(action: "DescribeKTVMusicDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲目详情
    ///
    /// 根据 Id 查询歌曲的详细信息，包含基础信息及播放信息。
    @inlinable
    public func describeKTVMusicDetail(_ input: DescribeKTVMusicDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVMusicDetailResponse {
        try await self.client.execute(action: "DescribeKTVMusicDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播互动曲目详情
    ///
    /// 根据 Id 查询歌曲的详细信息，包含基础信息及播放信息。
    @inlinable
    public func describeKTVMusicDetail(musicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVMusicDetailResponse> {
        self.describeKTVMusicDetail(.init(musicId: musicId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲目详情
    ///
    /// 根据 Id 查询歌曲的详细信息，包含基础信息及播放信息。
    @inlinable
    public func describeKTVMusicDetail(musicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVMusicDetailResponse {
        try await self.describeKTVMusicDetail(.init(musicId: musicId), region: region, logger: logger, on: eventLoop)
    }
}
