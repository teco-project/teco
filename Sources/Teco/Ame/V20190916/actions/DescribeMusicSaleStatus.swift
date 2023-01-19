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
    /// DescribeMusicSaleStatus请求参数结构体
    public struct DescribeMusicSaleStatusRequest: TCRequestModel {
        /// 歌曲Id集合，可传单个，也可传多个，上线查询单次50个
        public let musicIds: [String]

        /// 查询哪个渠道的数据，1为曲库包，2为单曲
        public let purchaseType: Int64

        public init(musicIds: [String], purchaseType: Int64) {
            self.musicIds = musicIds
            self.purchaseType = purchaseType
        }

        enum CodingKeys: String, CodingKey {
            case musicIds = "MusicIds"
            case purchaseType = "PurchaseType"
        }
    }

    /// DescribeMusicSaleStatus返回参数结构体
    public struct DescribeMusicSaleStatusResponse: TCResponseModel {
        /// musicId对应歌曲状态
        public let musicStatusSet: [MusicStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case musicStatusSet = "MusicStatusSet"
            case requestId = "RequestId"
        }
    }

    /// 查询歌曲在售状态
    ///
    /// 根据音乐信息查询音乐是否在售
    @inlinable
    public func describeMusicSaleStatus(_ input: DescribeMusicSaleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMusicSaleStatusResponse> {
        self.client.execute(action: "DescribeMusicSaleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询歌曲在售状态
    ///
    /// 根据音乐信息查询音乐是否在售
    @inlinable
    public func describeMusicSaleStatus(_ input: DescribeMusicSaleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMusicSaleStatusResponse {
        try await self.client.execute(action: "DescribeMusicSaleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询歌曲在售状态
    ///
    /// 根据音乐信息查询音乐是否在售
    @inlinable
    public func describeMusicSaleStatus(musicIds: [String], purchaseType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMusicSaleStatusResponse> {
        self.describeMusicSaleStatus(DescribeMusicSaleStatusRequest(musicIds: musicIds, purchaseType: purchaseType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询歌曲在售状态
    ///
    /// 根据音乐信息查询音乐是否在售
    @inlinable
    public func describeMusicSaleStatus(musicIds: [String], purchaseType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMusicSaleStatusResponse {
        try await self.describeMusicSaleStatus(DescribeMusicSaleStatusRequest(musicIds: musicIds, purchaseType: purchaseType), region: region, logger: logger, on: eventLoop)
    }
}
