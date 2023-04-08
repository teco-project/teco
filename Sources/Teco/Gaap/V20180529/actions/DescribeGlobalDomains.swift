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

extension Gaap {
    /// DescribeGlobalDomains请求参数结构体
    public struct DescribeGlobalDomainsRequest: TCPaginatedRequest {
        /// 项目ID
        public let projectId: Int64

        /// 分页偏移量
        public let offset: UInt64

        /// 分页数量限制
        public let limit: UInt64

        /// 过滤条件
        public let filters: [Filter]?

        /// 标签列表，当存在该字段时，拉取对应标签下的资源列表。
        /// 最多支持5个标签，当存在两个或两个以上的标签时，满足其中任意一个标签时，域名会被拉取出来。
        public let tagSet: [TagPair]?

        public init(projectId: Int64, offset: UInt64, limit: UInt64, filters: [Filter]? = nil, tagSet: [TagPair]? = nil) {
            self.projectId = projectId
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.tagSet = tagSet
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case tagSet = "TagSet"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGlobalDomainsResponse) -> DescribeGlobalDomainsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGlobalDomainsRequest(projectId: self.projectId, offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters, tagSet: self.tagSet)
        }
    }

    /// DescribeGlobalDomains返回参数结构体
    public struct DescribeGlobalDomainsResponse: TCPaginatedResponse {
        /// 域名信息列表
        public let domains: [Domain]

        /// 总记录数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Domain] {
            self.domains
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询域名列表
    @inlinable
    public func describeGlobalDomains(_ input: DescribeGlobalDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGlobalDomainsResponse> {
        self.client.execute(action: "DescribeGlobalDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名列表
    @inlinable
    public func describeGlobalDomains(_ input: DescribeGlobalDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGlobalDomainsResponse {
        try await self.client.execute(action: "DescribeGlobalDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名列表
    @inlinable
    public func describeGlobalDomains(projectId: Int64, offset: UInt64, limit: UInt64, filters: [Filter]? = nil, tagSet: [TagPair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGlobalDomainsResponse> {
        self.describeGlobalDomains(.init(projectId: projectId, offset: offset, limit: limit, filters: filters, tagSet: tagSet), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名列表
    @inlinable
    public func describeGlobalDomains(projectId: Int64, offset: UInt64, limit: UInt64, filters: [Filter]? = nil, tagSet: [TagPair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGlobalDomainsResponse {
        try await self.describeGlobalDomains(.init(projectId: projectId, offset: offset, limit: limit, filters: filters, tagSet: tagSet), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名列表
    @inlinable
    public func describeGlobalDomainsPaginated(_ input: DescribeGlobalDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Domain])> {
        self.client.paginate(input: input, region: region, command: self.describeGlobalDomains, logger: logger, on: eventLoop)
    }

    /// 查询域名列表
    @inlinable @discardableResult
    public func describeGlobalDomainsPaginated(_ input: DescribeGlobalDomainsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGlobalDomainsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGlobalDomains, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询域名列表
    ///
    /// - Returns: `AsyncSequence`s of `Domain` and `DescribeGlobalDomainsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGlobalDomainsPaginator(_ input: DescribeGlobalDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGlobalDomainsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGlobalDomains, logger: logger, on: eventLoop)
    }
}
