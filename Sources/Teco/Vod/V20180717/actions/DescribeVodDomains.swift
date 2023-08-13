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
import TecoPaginationHelpers

extension Vod {
    /// DescribeVodDomains请求参数结构体
    public struct DescribeVodDomainsRequest: TCPaginatedRequest {
        /// 域名列表。当该字段不填时，则默认列出所有域名信息。本字段限制如下：
        /// - 域名个数度最大为 20。
        public let domains: [String]?

        /// 分页拉取的最大返回结果数。默认值：20。
        public let limit: UInt64?

        /// 分页拉取的起始偏移量。默认值：0。
        public let offset: UInt64?

        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?

        public init(domains: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, subAppId: UInt64? = nil) {
            self.domains = domains
            self.limit = limit
            self.offset = offset
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case limit = "Limit"
            case offset = "Offset"
            case subAppId = "SubAppId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVodDomainsResponse) -> DescribeVodDomainsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVodDomainsRequest(domains: self.domains, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), subAppId: self.subAppId)
        }
    }

    /// DescribeVodDomains返回参数结构体
    public struct DescribeVodDomainsResponse: TCPaginatedResponse {
        /// 域名总数量。
        public let totalCount: UInt64

        /// 域名信息列表。
        public let domainSet: [DomainDetailInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case domainSet = "DomainSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DomainDetailInfo`` list from the paginated response.
        public func getItems() -> [DomainDetailInfo] {
            self.domainSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable
    public func describeVodDomains(_ input: DescribeVodDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVodDomainsResponse> {
        self.client.execute(action: "DescribeVodDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable
    public func describeVodDomains(_ input: DescribeVodDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVodDomainsResponse {
        try await self.client.execute(action: "DescribeVodDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable
    public func describeVodDomains(domains: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVodDomainsResponse> {
        self.describeVodDomains(.init(domains: domains, limit: limit, offset: offset, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable
    public func describeVodDomains(domains: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVodDomainsResponse {
        try await self.describeVodDomains(.init(domains: domains, limit: limit, offset: offset, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable
    public func describeVodDomainsPaginated(_ input: DescribeVodDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DomainDetailInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeVodDomains, logger: logger, on: eventLoop)
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    @inlinable @discardableResult
    public func describeVodDomainsPaginated(_ input: DescribeVodDomainsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVodDomainsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVodDomains, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询点播域名列表
    ///
    /// 该接口用于查询点播域名信息列表。
    ///
    /// - Returns: `AsyncSequence`s of ``DomainDetailInfo`` and ``DescribeVodDomainsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVodDomainsPaginator(_ input: DescribeVodDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVodDomainsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVodDomains, logger: logger, on: eventLoop)
    }
}
