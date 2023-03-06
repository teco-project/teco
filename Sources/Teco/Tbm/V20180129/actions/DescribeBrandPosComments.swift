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
    /// DescribeBrandPosComments请求参数结构体
    public struct DescribeBrandPosCommentsRequest: TCPaginatedRequest {
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

        /// 查询偏移，从0开始
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
        public func makeNextRequest(with response: DescribeBrandPosCommentsResponse) -> DescribeBrandPosCommentsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBrandPosCommentsRequest(brandId: self.brandId, startDate: self.startDate, endDate: self.endDate, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeBrandPosComments返回参数结构体
    public struct DescribeBrandPosCommentsResponse: TCPaginatedResponse {
        /// 评论列表
        public let brandCommentSet: [CommentInfo]

        /// 总的好评个数
        public let totalComments: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case brandCommentSet = "BrandCommentSet"
            case totalComments = "TotalComments"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CommentInfo] {
            self.brandCommentSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalComments
        }
    }

    /// 获取品牌用户好评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门好评观点列表。
    @inlinable
    public func describeBrandPosComments(_ input: DescribeBrandPosCommentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandPosCommentsResponse> {
        self.client.execute(action: "DescribeBrandPosComments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌用户好评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门好评观点列表。
    @inlinable
    public func describeBrandPosComments(_ input: DescribeBrandPosCommentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandPosCommentsResponse {
        try await self.client.execute(action: "DescribeBrandPosComments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌用户好评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门好评观点列表。
    @inlinable
    public func describeBrandPosComments(brandId: String, startDate: Date, endDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBrandPosCommentsResponse> {
        let input = DescribeBrandPosCommentsRequest(brandId: brandId, startDate: startDate, endDate: endDate, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeBrandPosComments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取品牌用户好评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门好评观点列表。
    @inlinable
    public func describeBrandPosComments(brandId: String, startDate: Date, endDate: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBrandPosCommentsResponse {
        let input = DescribeBrandPosCommentsRequest(brandId: brandId, startDate: startDate, endDate: endDate, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeBrandPosComments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取品牌用户好评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门好评观点列表。
    @inlinable
    public func describeBrandPosCommentsPaginated(_ input: DescribeBrandPosCommentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CommentInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBrandPosComments, logger: logger, on: eventLoop)
    }

    /// 获取品牌用户好评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门好评观点列表。
    @inlinable @discardableResult
    public func describeBrandPosCommentsPaginated(_ input: DescribeBrandPosCommentsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBrandPosCommentsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBrandPosComments, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取品牌用户好评列表
    ///
    /// 通过分析用户在评价品牌时用词的正负面情绪评分，返回品牌热门好评观点列表。
    ///
    /// - Returns: `AsyncSequence`s of `CommentInfo` and `DescribeBrandPosCommentsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBrandPosCommentsPaginator(_ input: DescribeBrandPosCommentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBrandPosCommentsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBrandPosComments, logger: logger, on: eventLoop)
    }
}
