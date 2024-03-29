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

extension Tbm {
    /// DescribeUserPortrait请求参数结构体
    public struct DescribeUserPortraitRequest: TCRequest {
        /// 品牌ID
        public let brandId: String

        public init(brandId: String) {
            self.brandId = brandId
        }

        enum CodingKeys: String, CodingKey {
            case brandId = "BrandId"
        }
    }

    /// DescribeUserPortrait返回参数结构体
    public struct DescribeUserPortraitResponse: TCResponse {
        /// 年龄画像
        public let age: AgePortraitInfo

        /// 性别画像
        public let gender: GenderPortraitInfo

        /// 省份画像
        public let province: ProvincePortraitInfo

        /// 电影喜好画像
        public let movie: MoviePortraitInfo

        /// 明星喜好画像
        public let star: StarPortraitInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case age = "Age"
            case gender = "Gender"
            case province = "Province"
            case movie = "Movie"
            case star = "Star"
            case requestId = "RequestId"
        }
    }

    /// 获取品牌画像结果
    ///
    /// 通过分析洞察参与过品牌媒体互动的用户，比如公开发表品牌的新闻评论、在公开社交渠道发表过对品牌的评价观点等用户，返回用户的画像属性分布，例如性别、年龄、地域、喜爱的明星、喜爱的影视。
    @inlinable
    public func describeUserPortrait(_ input: DescribeUserPortraitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserPortraitResponse> {
        self.client.execute(action: "DescribeUserPortrait", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌画像结果
    ///
    /// 通过分析洞察参与过品牌媒体互动的用户，比如公开发表品牌的新闻评论、在公开社交渠道发表过对品牌的评价观点等用户，返回用户的画像属性分布，例如性别、年龄、地域、喜爱的明星、喜爱的影视。
    @inlinable
    public func describeUserPortrait(_ input: DescribeUserPortraitRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserPortraitResponse {
        try await self.client.execute(action: "DescribeUserPortrait", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌画像结果
    ///
    /// 通过分析洞察参与过品牌媒体互动的用户，比如公开发表品牌的新闻评论、在公开社交渠道发表过对品牌的评价观点等用户，返回用户的画像属性分布，例如性别、年龄、地域、喜爱的明星、喜爱的影视。
    @inlinable
    public func describeUserPortrait(brandId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserPortraitResponse> {
        self.describeUserPortrait(.init(brandId: brandId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取品牌画像结果
    ///
    /// 通过分析洞察参与过品牌媒体互动的用户，比如公开发表品牌的新闻评论、在公开社交渠道发表过对品牌的评价观点等用户，返回用户的画像属性分布，例如性别、年龄、地域、喜爱的明星、喜爱的影视。
    @inlinable
    public func describeUserPortrait(brandId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserPortraitResponse {
        try await self.describeUserPortrait(.init(brandId: brandId), region: region, logger: logger, on: eventLoop)
    }
}
