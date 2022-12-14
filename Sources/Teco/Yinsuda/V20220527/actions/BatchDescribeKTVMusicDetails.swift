//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Yinsuda {
    /// BatchDescribeKTVMusicDetails请求参数结构体
    public struct BatchDescribeKTVMusicDetailsRequest: TCRequestModel {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 歌曲 Id 列表。
        public let musicIds: [String]

        public init(appName: String, userId: String, musicIds: [String]) {
            self.appName = appName
            self.userId = userId
            self.musicIds = musicIds
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case musicIds = "MusicIds"
        }
    }

    /// BatchDescribeKTVMusicDetails返回参数结构体
    public struct BatchDescribeKTVMusicDetailsResponse: TCResponseModel {
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
    public func batchDescribeKTVMusicDetails(_ input: BatchDescribeKTVMusicDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BatchDescribeKTVMusicDetailsResponse > {
        self.client.execute(action: "BatchDescribeKTVMusicDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量获取歌曲详情
    ///
    /// 批量获取歌曲详细信息，包括：歌词下载链接、播放凭证、音高数据下载链接信息等。
    @inlinable
    public func batchDescribeKTVMusicDetails(_ input: BatchDescribeKTVMusicDetailsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDescribeKTVMusicDetailsResponse {
        try await self.client.execute(action: "BatchDescribeKTVMusicDetails", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量获取歌曲详情
    ///
    /// 批量获取歌曲详细信息，包括：歌词下载链接、播放凭证、音高数据下载链接信息等。
    @inlinable
    public func batchDescribeKTVMusicDetails(appName: String, userId: String, musicIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BatchDescribeKTVMusicDetailsResponse > {
        self.batchDescribeKTVMusicDetails(BatchDescribeKTVMusicDetailsRequest(appName: appName, userId: userId, musicIds: musicIds), logger: logger, on: eventLoop)
    }

    /// 批量获取歌曲详情
    ///
    /// 批量获取歌曲详细信息，包括：歌词下载链接、播放凭证、音高数据下载链接信息等。
    @inlinable
    public func batchDescribeKTVMusicDetails(appName: String, userId: String, musicIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDescribeKTVMusicDetailsResponse {
        try await self.batchDescribeKTVMusicDetails(BatchDescribeKTVMusicDetailsRequest(appName: appName, userId: userId, musicIds: musicIds), logger: logger, on: eventLoop)
    }
}
