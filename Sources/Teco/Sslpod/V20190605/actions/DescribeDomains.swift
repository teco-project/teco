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

import TecoCore
import TecoPaginationHelpers

extension Sslpod {
    /// DescribeDomains请求参数结构体
    public struct DescribeDomainsRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: Int64

        /// 获取数量
        public let limit: Int64

        /// 搜索的类型有：none，tags，grade，brand，code，hash，limit，domain。
        /// 选tags，入参请填Tag，
        /// 选grade，入参请填Grade，
        /// 选brand，入参请填Brand，
        /// 选code，入参请填Code，
        /// 选hash，入参请填Hash
        /// 选limit，标识只返回数量信息
        /// 选domain，入参请填Domain
        public let searchType: String

        /// 标签，多个标签用逗号分隔
        public let tag: String?

        /// 等级
        public let grade: String?

        /// 品牌
        public let brand: String?

        /// 混合搜索
        public let code: String?

        /// 证书指纹
        public let hash: String?

        /// 搜索图标类型
        public let item: String?

        /// 搜索图标值
        public let status: String?

        /// 搜索域名
        public let domain: String?

        public init(offset: Int64, limit: Int64, searchType: String, tag: String? = nil, grade: String? = nil, brand: String? = nil, code: String? = nil, hash: String? = nil, item: String? = nil, status: String? = nil, domain: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.searchType = searchType
            self.tag = tag
            self.grade = grade
            self.brand = brand
            self.code = code
            self.hash = hash
            self.item = item
            self.status = status
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchType = "SearchType"
            case tag = "Tag"
            case grade = "Grade"
            case brand = "Brand"
            case code = "Code"
            case hash = "Hash"
            case item = "Item"
            case status = "Status"
            case domain = "Domain"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDomainsResponse) -> DescribeDomainsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDomainsRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, searchType: self.searchType, tag: self.tag, grade: self.grade, brand: self.brand, code: self.code, hash: self.hash, item: self.item, status: self.status, domain: self.domain)
        }
    }

    /// DescribeDomains返回参数结构体
    public struct DescribeDomainsResponse: TCPaginatedResponse {
        /// 列表数据
        public let data: DescribeDomains

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainSiteInfo] {
            self.data.result ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.total
        }
    }

    /// 搜索域名
    ///
    /// 通过searchType搜索已经添加的域名
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsResponse> {
        self.client.execute(action: "DescribeDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索域名
    ///
    /// 通过searchType搜索已经添加的域名
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        try await self.client.execute(action: "DescribeDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索域名
    ///
    /// 通过searchType搜索已经添加的域名
    @inlinable
    public func describeDomains(offset: Int64, limit: Int64, searchType: String, tag: String? = nil, grade: String? = nil, brand: String? = nil, code: String? = nil, hash: String? = nil, item: String? = nil, status: String? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsResponse> {
        self.describeDomains(.init(offset: offset, limit: limit, searchType: searchType, tag: tag, grade: grade, brand: brand, code: code, hash: hash, item: item, status: status, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索域名
    ///
    /// 通过searchType搜索已经添加的域名
    @inlinable
    public func describeDomains(offset: Int64, limit: Int64, searchType: String, tag: String? = nil, grade: String? = nil, brand: String? = nil, code: String? = nil, hash: String? = nil, item: String? = nil, status: String? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        try await self.describeDomains(.init(offset: offset, limit: limit, searchType: searchType, tag: tag, grade: grade, brand: brand, code: code, hash: hash, item: item, status: status, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索域名
    ///
    /// 通过searchType搜索已经添加的域名
    @inlinable
    public func describeDomainsPaginated(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DomainSiteInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDomains, logger: logger, on: eventLoop)
    }

    /// 搜索域名
    ///
    /// 通过searchType搜索已经添加的域名
    @inlinable @discardableResult
    public func describeDomainsPaginated(_ input: DescribeDomainsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDomainsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDomains, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 搜索域名
    ///
    /// 通过searchType搜索已经添加的域名
    ///
    /// - Returns: `AsyncSequence`s of `DomainSiteInfo` and `DescribeDomainsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDomainsPaginator(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDomainsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDomains, logger: logger, on: eventLoop)
    }
}
