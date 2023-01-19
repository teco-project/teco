//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// DescribeCloudMusic请求参数结构体
    public struct DescribeCloudMusicRequest: TCRequestModel {
        /// 歌曲Id
        public let musicId: String

        /// 歌曲类型，可选值有：
        /// <li>MP3-128K-FTW：含有水印的试听资源；</li>
        /// <li>MP3-320K-FTD-P：320kbps歌曲热门片段；</li>
        /// <li>MP3-320K-FTD：320kbps已核验歌曲完整资源。</li>
        /// 默认为：MP3-128K-FTW
        public let musicType: String?

        public init(musicId: String, musicType: String? = nil) {
            self.musicId = musicId
            self.musicType = musicType
        }

        enum CodingKeys: String, CodingKey {
            case musicId = "MusicId"
            case musicType = "MusicType"
        }
    }

    /// DescribeCloudMusic返回参数结构体
    public struct DescribeCloudMusicResponse: TCResponseModel {
        /// 歌曲Id
        public let musicId: String

        /// 歌曲名称
        public let musicName: String

        /// 歌曲时长
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let duration: Int64?

        /// 歌曲链接
        public let musicUrl: String

        /// 歌曲图片
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let musicImageUrl: String?

        /// 歌手列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let singers: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case musicId = "MusicId"
            case musicName = "MusicName"
            case duration = "Duration"
            case musicUrl = "MusicUrl"
            case musicImageUrl = "MusicImageUrl"
            case singers = "Singers"
            case requestId = "RequestId"
        }
    }

    /// 获取云音乐播放信息
    ///
    /// 获取云音乐播放信息接口
    @inlinable
    public func describeCloudMusic(_ input: DescribeCloudMusicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudMusicResponse> {
        self.client.execute(action: "DescribeCloudMusic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取云音乐播放信息
    ///
    /// 获取云音乐播放信息接口
    @inlinable
    public func describeCloudMusic(_ input: DescribeCloudMusicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudMusicResponse {
        try await self.client.execute(action: "DescribeCloudMusic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取云音乐播放信息
    ///
    /// 获取云音乐播放信息接口
    @inlinable
    public func describeCloudMusic(musicId: String, musicType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudMusicResponse> {
        self.describeCloudMusic(DescribeCloudMusicRequest(musicId: musicId, musicType: musicType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取云音乐播放信息
    ///
    /// 获取云音乐播放信息接口
    @inlinable
    public func describeCloudMusic(musicId: String, musicType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudMusicResponse {
        try await self.describeCloudMusic(DescribeCloudMusicRequest(musicId: musicId, musicType: musicType), region: region, logger: logger, on: eventLoop)
    }
}
