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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Tbm {
    /// DescribeBrandSocialOpinion请求参数结构体
    public struct DescribeBrandSocialOpinionRequest: TCPaginatedRequest {
        /// 品牌ID
        public let brandId: String

        /// 检索开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 检索结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        /// 查询偏移，默认从0开始
        public let offset: Int64?

        /// 查询条数上限，默认20
        public let limit: Int64?

        /// 列表显示标记，若为true，则返回文章列表详情
        public let showList: Bool?

        public init(brandId: String, startDate: Date, endDate: Date, offset: Int64? = nil, limit: Int64? = nil, showList: Bool? = nil) {
            self.brandId = brandId
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.offset = offset
            self.limit = limit
            self.showList = showList
        }

        enum CodingKeys: String, CodingKey {
            case brandId = "BrandId"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case offset = "Offset"
            case limit = "Limit"
            case showList = "ShowList"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeBrandSocialOpinionResponse) -> DescribeBrandSocialOpinionRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBrandSocialOpinionRequest(brandId: self.brandId, startDate: self.startDate, endDate: self.endDate, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, showList: self.showList)
        }
    }

    /// DescribeBrandSocialOpinion返回参数结构体
    public struct DescribeBrandSocialOpinionResponse: TCPaginatedResponse {
        /// 文章总数
        public let articleCount: UInt64

        /// 来源统计总数
        public let fromCount: UInt64

        /// 疑似负面报道总数
        public let adverseCount: UInt64

        /// 文章列表详情
        public let articleSet: [BrandReportArticle]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case articleCount = "ArticleCount"
            case fromCount = "FromCount"
            case adverseCount = "AdverseCount"
            case articleSet = "ArticleSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BrandReportArticle] {
            self.articleSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.articleCount
        }
    }

    /// 获取品牌社交渠道观点
    ///
    /// 检测品牌关键词出现在微博、QQ兴趣部落、论坛、博客等个人公开贡献资讯中的内容，每天聚合近30天热度最高的观点列表。
    @inlinable
    public func describeBrandSocialOpinion(_ input: DescribeBrandSocialOpinionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandSocialOpinionResponse> {
        self.client.execute(action: "DescribeBrandSocialOpinion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌社交渠道观点
    ///
    /// 检测品牌关键词出现在微博、QQ兴趣部落、论坛、博客等个人公开贡献资讯中的内容，每天聚合近30天热度最高的观点列表。
    @inlinable
    public func describeBrandSocialOpinion(_ input: DescribeBrandSocialOpinionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandSocialOpinionResponse {
        try await self.client.execute(action: "DescribeBrandSocialOpinion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌社交渠道观点
    ///
    /// 检测品牌关键词出现在微博、QQ兴趣部落、论坛、博客等个人公开贡献资讯中的内容，每天聚合近30天热度最高的观点列表。
    @inlinable
    public func describeBrandSocialOpinion(brandId: String, startDate: Date, endDate: Date, offset: Int64? = nil, limit: Int64? = nil, showList: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandSocialOpinionResponse> {
        let input = DescribeBrandSocialOpinionRequest(brandId: brandId, startDate: startDate, endDate: endDate, offset: offset, limit: limit, showList: showList)
        return self.client.execute(action: "DescribeBrandSocialOpinion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌社交渠道观点
    ///
    /// 检测品牌关键词出现在微博、QQ兴趣部落、论坛、博客等个人公开贡献资讯中的内容，每天聚合近30天热度最高的观点列表。
    @inlinable
    public func describeBrandSocialOpinion(brandId: String, startDate: Date, endDate: Date, offset: Int64? = nil, limit: Int64? = nil, showList: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandSocialOpinionResponse {
        let input = DescribeBrandSocialOpinionRequest(brandId: brandId, startDate: startDate, endDate: endDate, offset: offset, limit: limit, showList: showList)
        return try await self.client.execute(action: "DescribeBrandSocialOpinion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌社交渠道观点
    ///
    /// 检测品牌关键词出现在微博、QQ兴趣部落、论坛、博客等个人公开贡献资讯中的内容，每天聚合近30天热度最高的观点列表。
    @inlinable
    public func describeBrandSocialOpinionPaginated(_ input: DescribeBrandSocialOpinionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BrandReportArticle])> {
        self.client.paginate(input: input, region: region, command: self.describeBrandSocialOpinion, logger: logger, on: eventLoop)
    }

    /// 获取品牌社交渠道观点
    ///
    /// 检测品牌关键词出现在微博、QQ兴趣部落、论坛、博客等个人公开贡献资讯中的内容，每天聚合近30天热度最高的观点列表。
    @inlinable @discardableResult
    public func describeBrandSocialOpinionPaginated(_ input: DescribeBrandSocialOpinionRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBrandSocialOpinionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBrandSocialOpinion, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取品牌社交渠道观点
    ///
    /// 检测品牌关键词出现在微博、QQ兴趣部落、论坛、博客等个人公开贡献资讯中的内容，每天聚合近30天热度最高的观点列表。
    ///
    /// - Returns: `AsyncSequence`s of `BrandReportArticle` and `DescribeBrandSocialOpinionResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBrandSocialOpinionPaginator(_ input: DescribeBrandSocialOpinionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBrandSocialOpinionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBrandSocialOpinion, logger: logger, on: eventLoop)
    }
}
