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

extension Cdn {
    /// DescribeDomainsConfig请求参数结构体
    public struct DescribeDomainsConfigRequest: TCPaginatedRequest {
        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为 100，最大可设置为 1000
        public let limit: Int64?

        /// 查询条件过滤器，复杂类型
        public let filters: [DomainFilter]?

        /// 排序规则
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
        public func getNextPaginatedRequest(with response: DescribeDomainsConfigResponse) -> DescribeDomainsConfigRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDomainsConfigRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, sort: self.sort)
        }
    }

    /// DescribeDomainsConfig返回参数结构体
    public struct DescribeDomainsConfigResponse: TCPaginatedResponse {
        /// 域名列表
        public let domains: [DetailDomain]

        /// 符合查询条件的域名总数
        /// 用于分页查询
        public let totalNumber: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case totalNumber = "TotalNumber"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DetailDomain] {
            self.domains
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNumber
        }
    }

    /// 查询域名详细配置
    ///
    /// DescribeDomainsConfig 用于查询内容分发网络加速域名（含境内、境外）的所有配置信息。
    @inlinable
    public func describeDomainsConfig(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsConfigResponse> {
        self.client.execute(action: "DescribeDomainsConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// DescribeDomainsConfig 用于查询内容分发网络加速域名（含境内、境外）的所有配置信息。
    @inlinable
    public func describeDomainsConfig(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsConfigResponse {
        try await self.client.execute(action: "DescribeDomainsConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名详细配置
    ///
    /// DescribeDomainsConfig 用于查询内容分发网络加速域名（含境内、境外）的所有配置信息。
    @inlinable
    public func describeDomainsConfig(offset: Int64? = nil, limit: Int64? = nil, filters: [DomainFilter]? = nil, sort: Sort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainsConfigResponse> {
        let input = DescribeDomainsConfigRequest(offset: offset, limit: limit, filters: filters, sort: sort)
        return self.client.execute(action: "DescribeDomainsConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// DescribeDomainsConfig 用于查询内容分发网络加速域名（含境内、境外）的所有配置信息。
    @inlinable
    public func describeDomainsConfig(offset: Int64? = nil, limit: Int64? = nil, filters: [DomainFilter]? = nil, sort: Sort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsConfigResponse {
        let input = DescribeDomainsConfigRequest(offset: offset, limit: limit, filters: filters, sort: sort)
        return try await self.client.execute(action: "DescribeDomainsConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名详细配置
    ///
    /// DescribeDomainsConfig 用于查询内容分发网络加速域名（含境内、境外）的所有配置信息。
    @inlinable
    public func describeDomainsConfigPaginated(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DetailDomain])> {
        self.client.paginate(input: input, region: region, command: self.describeDomainsConfig, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// DescribeDomainsConfig 用于查询内容分发网络加速域名（含境内、境外）的所有配置信息。
    @inlinable @discardableResult
    public func describeDomainsConfigPaginated(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDomainsConfigResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDomainsConfig, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询域名详细配置
    ///
    /// DescribeDomainsConfig 用于查询内容分发网络加速域名（含境内、境外）的所有配置信息。
    @inlinable
    public func describeDomainsConfigPaginator(_ input: DescribeDomainsConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDomainsConfigRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDomainsConfig, logger: logger, on: eventLoop)
    }
}
