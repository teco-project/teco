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

import TecoPaginationHelpers

extension Cdc {
    /// DescribeSitesDetail请求参数结构体
    public struct DescribeSitesDetailRequest: TCPaginatedRequest {
        /// 按照站点id过滤
        public let siteIds: [String]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        /// 按照站定名称模糊匹配
        public let name: String?

        public init(siteIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, name: String? = nil) {
            self.siteIds = siteIds
            self.offset = offset
            self.limit = limit
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case siteIds = "SiteIds"
            case offset = "Offset"
            case limit = "Limit"
            case name = "Name"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSitesDetailResponse) -> DescribeSitesDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSitesDetailRequest(siteIds: self.siteIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, name: self.name)
        }
    }

    /// DescribeSitesDetail返回参数结构体
    public struct DescribeSitesDetailResponse: TCPaginatedResponse {
        /// 站点详情
        public let siteDetailSet: [SiteDetail]

        /// 符合条件的站点总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case siteDetailSet = "SiteDetailSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SiteDetail] {
            self.siteDetailSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询站点详情
    @inlinable
    public func describeSitesDetail(_ input: DescribeSitesDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSitesDetailResponse> {
        self.client.execute(action: "DescribeSitesDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询站点详情
    @inlinable
    public func describeSitesDetail(_ input: DescribeSitesDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSitesDetailResponse {
        try await self.client.execute(action: "DescribeSitesDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询站点详情
    @inlinable
    public func describeSitesDetail(siteIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSitesDetailResponse> {
        let input = DescribeSitesDetailRequest(siteIds: siteIds, offset: offset, limit: limit, name: name)
        return self.client.execute(action: "DescribeSitesDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询站点详情
    @inlinable
    public func describeSitesDetail(siteIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSitesDetailResponse {
        let input = DescribeSitesDetailRequest(siteIds: siteIds, offset: offset, limit: limit, name: name)
        return try await self.client.execute(action: "DescribeSitesDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询站点详情
    @inlinable
    public func describeSitesDetailPaginated(_ input: DescribeSitesDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SiteDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeSitesDetail, logger: logger, on: eventLoop)
    }

    /// 查询站点详情
    @inlinable @discardableResult
    public func describeSitesDetailPaginated(_ input: DescribeSitesDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSitesDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSitesDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询站点详情
    ///
    /// - Returns: `AsyncSequence`s of `SiteDetail` and `DescribeSitesDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSitesDetailPaginator(_ input: DescribeSitesDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSitesDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSitesDetail, logger: logger, on: eventLoop)
    }
}
