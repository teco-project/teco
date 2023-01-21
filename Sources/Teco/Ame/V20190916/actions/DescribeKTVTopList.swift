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
    /// DescribeKTVTopList请求参数结构体
    public struct DescribeKTVTopListRequest: TCRequestModel {
        /// 榜单类型。默认Hot
        /// <li> Hot, 热歌榜。</li>
        public let type: String?

        /// 榜单周期 默认为Week
        /// <li> Week, 周榜。</li>
        /// <li> Month, 月榜。</li>
        public let period: String?

        public init(type: String? = nil, period: String? = nil) {
            self.type = type
            self.period = period
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case period = "Period"
        }
    }

    /// DescribeKTVTopList返回参数结构体
    public struct DescribeKTVTopListResponse: TCResponseModel {
        /// 歌曲基础信息列表
        public let ktvMusicTopInfoSet: [KTVMusicTopInfo]

        /// 返回总条数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ktvMusicTopInfoSet = "KTVMusicTopInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取直播互动曲库歌曲排行榜
    ///
    /// 获取直播互动曲库歌曲的周榜和月榜
    @inlinable
    public func describeKTVTopList(_ input: DescribeKTVTopListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVTopListResponse> {
        self.client.execute(action: "DescribeKTVTopList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库歌曲排行榜
    ///
    /// 获取直播互动曲库歌曲的周榜和月榜
    @inlinable
    public func describeKTVTopList(_ input: DescribeKTVTopListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVTopListResponse {
        try await self.client.execute(action: "DescribeKTVTopList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播互动曲库歌曲排行榜
    ///
    /// 获取直播互动曲库歌曲的周榜和月榜
    @inlinable
    public func describeKTVTopList(type: String? = nil, period: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVTopListResponse> {
        self.describeKTVTopList(DescribeKTVTopListRequest(type: type, period: period), region: region, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库歌曲排行榜
    ///
    /// 获取直播互动曲库歌曲的周榜和月榜
    @inlinable
    public func describeKTVTopList(type: String? = nil, period: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVTopListResponse {
        try await self.describeKTVTopList(DescribeKTVTopListRequest(type: type, period: period), region: region, logger: logger, on: eventLoop)
    }
}
