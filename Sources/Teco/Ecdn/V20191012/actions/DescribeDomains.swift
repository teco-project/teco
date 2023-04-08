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

extension Ecdn {
    /// DescribeDomains请求参数结构体
    public struct DescribeDomainsRequest: TCPaginatedRequest {
        /// 分页查询的偏移地址，默认0。
        public let offset: Int64?

        /// 分页查询的域名个数，默认100，最大支持1000。
        public let limit: Int64?

        /// 查询条件过滤器。
        public let filters: [DomainFilter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [DomainFilter]? = nil) {
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
            return DescribeDomainsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeDomains返回参数结构体
    public struct DescribeDomainsResponse: TCPaginatedResponse {
        /// 域名信息列表。
        public let domains: [DomainBriefInfo]

        /// 域名总个数。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainBriefInfo] {
            self.domains
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询域名基本信息
    ///
    /// 本接口（DescribeDomains）用于查询CDN域名基本信息，包括项目id，状态，业务类型，创建时间，更新时间等。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41118"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsResponse> {
        self.client.execute(action: "DescribeDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名基本信息
    ///
    /// 本接口（DescribeDomains）用于查询CDN域名基本信息，包括项目id，状态，业务类型，创建时间，更新时间等。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41118"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        try await self.client.execute(action: "DescribeDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名基本信息
    ///
    /// 本接口（DescribeDomains）用于查询CDN域名基本信息，包括项目id，状态，业务类型，创建时间，更新时间等。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41118"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomains(offset: Int64? = nil, limit: Int64? = nil, filters: [DomainFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsResponse> {
        self.describeDomains(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名基本信息
    ///
    /// 本接口（DescribeDomains）用于查询CDN域名基本信息，包括项目id，状态，业务类型，创建时间，更新时间等。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41118"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomains(offset: Int64? = nil, limit: Int64? = nil, filters: [DomainFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        try await self.describeDomains(.init(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名基本信息
    ///
    /// 本接口（DescribeDomains）用于查询CDN域名基本信息，包括项目id，状态，业务类型，创建时间，更新时间等。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41118"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomainsPaginated(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DomainBriefInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDomains, logger: logger, on: eventLoop)
    }

    /// 查询域名基本信息
    ///
    /// 本接口（DescribeDomains）用于查询CDN域名基本信息，包括项目id，状态，业务类型，创建时间，更新时间等。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41118"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    @inlinable @discardableResult
    public func describeDomainsPaginated(_ input: DescribeDomainsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDomainsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDomains, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询域名基本信息
    ///
    /// 本接口（DescribeDomains）用于查询CDN域名基本信息，包括项目id，状态，业务类型，创建时间，更新时间等。
    ///
    /// >?  若您的业务已迁移至 CDN 控制台，请参考<a href="https://cloud.tencent.com/document/api/228/41118"> CDN 接口文档</a>，使用  CDN 相关API 进行操作。
    ///
    /// - Returns: `AsyncSequence`s of `DomainBriefInfo` and `DescribeDomainsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDomainsPaginator(_ input: DescribeDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDomainsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDomains, logger: logger, on: eventLoop)
    }
}
