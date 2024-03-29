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

extension Ecdn {
    /// DescribeDomainsConfig请求参数结构体
    public struct DescribeDomainsConfigRequest: TCPaginatedRequest {
        /// 分页查询的偏移地址，默认0。
        public let offset: Int64?

        /// 分页查询的域名个数，默认100。
        public let limit: Int64?

        /// 查询条件过滤器。
        public let filters: [DomainFilter]?

        /// 查询结果排序规则。
        public let sort: Sort?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [DomainFilter]? = nil, sort: Sort? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.sort = sort
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case sort = "Sort"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDomainsConfigResponse) -> DescribeDomainsConfigRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, sort: self.sort)
        }
    }

    /// DescribeDomainsConfig返回参数结构体
    public struct DescribeDomainsConfigResponse: TCPaginatedResponse {
        /// 域名列表。
        public let domains: [DomainDetailInfo]

        /// 符合查询条件的域名总数，用于分页查询。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DomainDetailInfo`` list from the paginated response.
        public func getItems() -> [DomainDetailInfo] {
            self.domains
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询域名详细配置
    ///
    /// 本接口（DescribeDomainsConfig）用于查询CDN加速域名详细配置信息。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41117)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomainsConfig(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsConfigResponse> {
        self.client.execute(action: "DescribeDomainsConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 本接口（DescribeDomainsConfig）用于查询CDN加速域名详细配置信息。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41117)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomainsConfig(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsConfigResponse {
        try await self.client.execute(action: "DescribeDomainsConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名详细配置
    ///
    /// 本接口（DescribeDomainsConfig）用于查询CDN加速域名详细配置信息。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41117)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomainsConfig(offset: Int64? = nil, limit: Int64? = nil, filters: [DomainFilter]? = nil, sort: Sort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsConfigResponse> {
        self.describeDomainsConfig(.init(offset: offset, limit: limit, filters: filters, sort: sort), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 本接口（DescribeDomainsConfig）用于查询CDN加速域名详细配置信息。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41117)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomainsConfig(offset: Int64? = nil, limit: Int64? = nil, filters: [DomainFilter]? = nil, sort: Sort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsConfigResponse {
        try await self.describeDomainsConfig(.init(offset: offset, limit: limit, filters: filters, sort: sort), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 本接口（DescribeDomainsConfig）用于查询CDN加速域名详细配置信息。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41117)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describeDomainsConfigPaginated(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DomainDetailInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDomainsConfig, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 本接口（DescribeDomainsConfig）用于查询CDN加速域名详细配置信息。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41117)，使用  CDN 相关API 进行操作。
    @inlinable @discardableResult
    public func describeDomainsConfigPaginated(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDomainsConfigResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDomainsConfig, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// 本接口（DescribeDomainsConfig）用于查询CDN加速域名详细配置信息。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/41117)，使用  CDN 相关API 进行操作。
    ///
    /// - Returns: `AsyncSequence`s of ``DomainDetailInfo`` and ``DescribeDomainsConfigResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDomainsConfigPaginator(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDomainsConfigRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDomainsConfig, logger: logger, on: eventLoop)
    }
}
