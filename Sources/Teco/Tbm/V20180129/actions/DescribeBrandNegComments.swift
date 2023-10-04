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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Tbm {
    /// DescribeBrandNegComments请求参数结构体
    public struct DescribeBrandNegCommentsRequest: TCPaginatedRequest {
        /// 品牌ID
        public let brandId: String

        /// 查询开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        /// 查询条数上限，默认20
        public let limit: UInt64?

        /// 查询偏移，默认从0开始
        public let offset: UInt64?

        public init(brandId: String, startDate: Date, endDate: Date, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.brandId = brandId
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case brandId = "BrandId"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBrandNegCommentsResponse) -> DescribeBrandNegCommentsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(brandId: self.brandId, startDate: self.startDate, endDate: self.endDate, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeBrandNegComments返回参数结构体
    public struct DescribeBrandNegCommentsResponse: TCPaginatedResponse {
        /// 评论列表
        public let brandCommentSet: [CommentInfo]

        /// 总的差评个数
        public let totalComments: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case brandCommentSet = "BrandCommentSet"
            case totalComments = "TotalComments"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CommentInfo`` list from the paginated response.
        public func getItems() -> [CommentInfo] {
            self.brandCommentSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalComments
        }
    }

    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable
    public func describeBrandNegComments(_ input: DescribeBrandNegCommentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandNegCommentsResponse> {
        self.client.execute(action: "DescribeBrandNegComments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable
    public func describeBrandNegComments(_ input: DescribeBrandNegCommentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandNegCommentsResponse {
        try await self.client.execute(action: "DescribeBrandNegComments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable
    public func describeBrandNegComments(brandId: String, startDate: Date, endDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandNegCommentsResponse> {
        self.describeBrandNegComments(.init(brandId: brandId, startDate: startDate, endDate: endDate, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable
    public func describeBrandNegComments(brandId: String, startDate: Date, endDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandNegCommentsResponse {
        try await self.describeBrandNegComments(.init(brandId: brandId, startDate: startDate, endDate: endDate, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable
    public func describeBrandNegCommentsPaginated(_ input: DescribeBrandNegCommentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CommentInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBrandNegComments, logger: logger, on: eventLoop)
    }

    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    @inlinable @discardableResult
    public func describeBrandNegCommentsPaginated(_ input: DescribeBrandNegCommentsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBrandNegCommentsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBrandNegComments, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取品牌用户差评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门差评观点列表。
    ///
    /// - Returns: `AsyncSequence`s of ``CommentInfo`` and ``DescribeBrandNegCommentsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBrandNegCommentsPaginator(_ input: DescribeBrandNegCommentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBrandNegCommentsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBrandNegComments, logger: logger, on: eventLoop)
    }
}
