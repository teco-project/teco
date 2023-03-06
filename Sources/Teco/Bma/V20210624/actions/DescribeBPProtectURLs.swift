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
    /// DescribeBPProtectURLs请求参数结构体
    public struct DescribeBPProtectURLsRequest: TCPaginatedRequest {
        /// 页数
        public let pageSize: Int64?

        /// 页码
        public let pageNumber: Int64?

        public init(pageSize: Int64? = nil, pageNumber: Int64? = nil) {
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeBPProtectURLsResponse) -> DescribeBPProtectURLsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBPProtectURLsRequest(pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1)
        }
    }

    /// DescribeBPProtectURLs返回参数结构体
    public struct DescribeBPProtectURLsResponse: TCPaginatedResponse {
        /// 保护网址列表
        public let protectURLInfos: [ProtectURLInfo]

        /// 总量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case protectURLInfos = "ProtectURLInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProtectURLInfo] {
            self.protectURLInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询保护网站
    @inlinable
    public func describeBPProtectURLs(_ input: DescribeBPProtectURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBPProtectURLsResponse> {
        self.client.execute(action: "DescribeBPProtectURLs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询保护网站
    @inlinable
    public func describeBPProtectURLs(_ input: DescribeBPProtectURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBPProtectURLsResponse {
        try await self.client.execute(action: "DescribeBPProtectURLs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询保护网站
    @inlinable
    public func describeBPProtectURLs(pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBPProtectURLsResponse> {
        let input = DescribeBPProtectURLsRequest(pageSize: pageSize, pageNumber: pageNumber)
        return self.client.execute(action: "DescribeBPProtectURLs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询保护网站
    @inlinable
    public func describeBPProtectURLs(pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBPProtectURLsResponse {
        let input = DescribeBPProtectURLsRequest(pageSize: pageSize, pageNumber: pageNumber)
        return try await self.client.execute(action: "DescribeBPProtectURLs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询保护网站
    @inlinable
    public func describeBPProtectURLsPaginated(_ input: DescribeBPProtectURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ProtectURLInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeBPProtectURLs, logger: logger, on: eventLoop)
    }

    /// 查询保护网站
    @inlinable
    public func describeBPProtectURLsPaginated(_ input: DescribeBPProtectURLsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBPProtectURLsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBPProtectURLs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询保护网站
    @inlinable
    public func describeBPProtectURLsPaginator(_ input: DescribeBPProtectURLsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeBPProtectURLsRequest, DescribeBPProtectURLsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeBPProtectURLsRequest, DescribeBPProtectURLsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeBPProtectURLsRequest, DescribeBPProtectURLsResponse>.ResultSequence(input: input, region: region, command: self.describeBPProtectURLs, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeBPProtectURLsRequest, DescribeBPProtectURLsResponse>.ResponseSequence(input: input, region: region, command: self.describeBPProtectURLs, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
