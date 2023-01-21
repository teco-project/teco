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
    /// PutMusicOnTheShelves请求参数结构体
    public struct PutMusicOnTheShelvesRequest: TCRequestModel {
        /// 资源方歌曲Id
        public let musicIds: [String]

        public init(musicIds: [String]) {
            self.musicIds = musicIds
        }

        enum CodingKeys: String, CodingKey {
            case musicIds = "MusicIds"
        }
    }

    /// PutMusicOnTheShelves返回参数结构体
    public struct PutMusicOnTheShelvesResponse: TCResponseModel {
        /// 操作成功数量
        public let successNum: Int64

        /// 操作失败数量
        public let failedNum: Int64

        /// 失败歌曲Id
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

    /// 上架歌曲
    ///
    /// 根据资源方所传歌曲信息，进行歌曲上架，多个歌曲同时请求时，需构造复合结构进行请求
    @inlinable
    public func putMusicOnTheShelves(_ input: PutMusicOnTheShelvesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutMusicOnTheShelvesResponse> {
        self.client.execute(action: "PutMusicOnTheShelves", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上架歌曲
    ///
    /// 根据资源方所传歌曲信息，进行歌曲上架，多个歌曲同时请求时，需构造复合结构进行请求
    @inlinable
    public func putMusicOnTheShelves(_ input: PutMusicOnTheShelvesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutMusicOnTheShelvesResponse {
        try await self.client.execute(action: "PutMusicOnTheShelves", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上架歌曲
    ///
    /// 根据资源方所传歌曲信息，进行歌曲上架，多个歌曲同时请求时，需构造复合结构进行请求
    @inlinable
    public func putMusicOnTheShelves(musicIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutMusicOnTheShelvesResponse> {
        self.putMusicOnTheShelves(PutMusicOnTheShelvesRequest(musicIds: musicIds), region: region, logger: logger, on: eventLoop)
    }

    /// 上架歌曲
    ///
    /// 根据资源方所传歌曲信息，进行歌曲上架，多个歌曲同时请求时，需构造复合结构进行请求
    @inlinable
    public func putMusicOnTheShelves(musicIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutMusicOnTheShelvesResponse {
        try await self.putMusicOnTheShelves(PutMusicOnTheShelvesRequest(musicIds: musicIds), region: region, logger: logger, on: eventLoop)
    }
}
