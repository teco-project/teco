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

extension Bma {
    /// DescribeBPReportFakeURLs请求参数结构体
    public struct DescribeBPReportFakeURLsRequest: TCPaginatedRequest {
        /// 过滤条件
        public let filters: [Filter]?

        /// 页数
        public let pageSize: Int64?

        /// 页码
        public let pageNumber: Int64?

        public init(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil) {
            self.filters = filters
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBPReportFakeURLsResponse) -> DescribeBPReportFakeURLsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBPReportFakeURLsRequest(filters: self.filters, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1)
        }
    }

    /// DescribeBPReportFakeURLs返回参数结构体
    public struct DescribeBPReportFakeURLsResponse: TCPaginatedResponse {
        /// 举报网站列表
        public let reportFakeURLInfos: [ReportFakeURLInfo]

        /// 总量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reportFakeURLInfos = "ReportFakeURLInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ReportFakeURLInfo] {
            self.reportFakeURLInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询举报列表
    @inlinable
    public func describeBPReportFakeURLs(_ input: DescribeBPReportFakeURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBPReportFakeURLsResponse> {
        self.client.execute(action: "DescribeBPReportFakeURLs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询举报列表
    @inlinable
    public func describeBPReportFakeURLs(_ input: DescribeBPReportFakeURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBPReportFakeURLsResponse {
        try await self.client.execute(action: "DescribeBPReportFakeURLs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询举报列表
    @inlinable
    public func describeBPReportFakeURLs(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBPReportFakeURLsResponse> {
        self.describeBPReportFakeURLs(.init(filters: filters, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 查询举报列表
    @inlinable
    public func describeBPReportFakeURLs(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBPReportFakeURLsResponse {
        try await self.describeBPReportFakeURLs(.init(filters: filters, pageSize: pageSize, pageNumber: pageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 查询举报列表
    @inlinable
    public func describeBPReportFakeURLsPaginated(_ input: DescribeBPReportFakeURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ReportFakeURLInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBPReportFakeURLs, logger: logger, on: eventLoop)
    }

    /// 查询举报列表
    @inlinable @discardableResult
    public func describeBPReportFakeURLsPaginated(_ input: DescribeBPReportFakeURLsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBPReportFakeURLsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBPReportFakeURLs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询举报列表
    ///
    /// - Returns: `AsyncSequence`s of `ReportFakeURLInfo` and `DescribeBPReportFakeURLsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBPReportFakeURLsPaginator(_ input: DescribeBPReportFakeURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBPReportFakeURLsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBPReportFakeURLs, logger: logger, on: eventLoop)
    }
}
