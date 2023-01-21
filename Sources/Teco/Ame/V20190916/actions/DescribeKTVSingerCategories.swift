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
    /// DescribeKTVSingerCategories请求参数结构体
    public struct DescribeKTVSingerCategoriesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeKTVSingerCategories返回参数结构体
    public struct DescribeKTVSingerCategoriesResponse: TCResponseModel {
        /// 歌手性别分类列表
        public let genderSet: [KTVSingerCategoryInfo]

        /// 歌手区域分类列表
        public let areaSet: [KTVSingerCategoryInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case genderSet = "GenderSet"
            case areaSet = "AreaSet"
            case requestId = "RequestId"
        }
    }

    /// 获取直播互动曲库歌手分类信息
    @inlinable
    public func describeKTVSingerCategories(_ input: DescribeKTVSingerCategoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVSingerCategoriesResponse> {
        self.client.execute(action: "DescribeKTVSingerCategories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库歌手分类信息
    @inlinable
    public func describeKTVSingerCategories(_ input: DescribeKTVSingerCategoriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVSingerCategoriesResponse {
        try await self.client.execute(action: "DescribeKTVSingerCategories", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播互动曲库歌手分类信息
    @inlinable
    public func describeKTVSingerCategories(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKTVSingerCategoriesResponse> {
        self.describeKTVSingerCategories(DescribeKTVSingerCategoriesRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取直播互动曲库歌手分类信息
    @inlinable
    public func describeKTVSingerCategories(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKTVSingerCategoriesResponse {
        try await self.describeKTVSingerCategories(DescribeKTVSingerCategoriesRequest(), region: region, logger: logger, on: eventLoop)
    }
}
