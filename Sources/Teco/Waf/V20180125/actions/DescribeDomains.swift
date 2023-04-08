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

extension Waf {
    /// DescribeDomains请求参数结构体
    public struct DescribeDomainsRequest: TCPaginatedRequest {
        /// 数据偏移量，从1开始。
        public let offset: UInt64

        /// 返回域名的数量
        public let limit: UInt64

        /// 过滤数组
        public let filters: [FiltersItemNew]?

        public init(offset: UInt64, limit: UInt64, filters: [FiltersItemNew]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDomainsResponse) -> DescribeDomainsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDomainsRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeDomains返回参数结构体
    public struct DescribeDomainsResponse: TCPaginatedResponse {
        /// 总数
        public let total: UInt64

        /// domain列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domains: [DomainInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case domains = "Domains"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainInfo] {
            self.domains ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取域名列表
    ///
    /// 查询用户所有域名的详细信息
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsResponse> {
        self.client.execute(action: "DescribeDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    ///
    /// 查询用户所有域名的详细信息
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        try await self.client.execute(action: "DescribeDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名列表
    ///
    /// 查询用户所有域名的详细信息
    @inlinable
    public func describeDomains(offset: UInt64, limit: UInt64, filters: [FiltersItemNew]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsResponse> {
        self.describeDomains(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    ///
    /// 查询用户所有域名的详细信息
    @inlinable
    public func describeDomains(offset: UInt64, limit: UInt64, filters: [FiltersItemNew]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        try await self.describeDomains(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    ///
    /// 查询用户所有域名的详细信息
    @inlinable
    public func describeDomainsPaginated(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DomainInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDomains, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    ///
    /// 查询用户所有域名的详细信息
    @inlinable @discardableResult
    public func describeDomainsPaginated(_ input: DescribeDomainsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDomainsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDomains, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    ///
    /// 查询用户所有域名的详细信息
    ///
    /// - Returns: `AsyncSequence`s of `DomainInfo` and `DescribeDomainsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDomainsPaginator(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDomainsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDomains, logger: logger, on: eventLoop)
    }
}
