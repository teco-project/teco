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

extension Gaap {
    /// DescribeRealServers请求参数结构体
    public struct DescribeRealServersRequest: TCPaginatedRequest {
        /// 查询源站的所属项目ID，-1表示所有项目
        public let projectId: Int64

        /// 需要查询的源站IP或域名，支持模糊匹配
        public let searchValue: String?

        /// 偏移量，默认值是0
        public let offset: UInt64?

        /// 返回数量，默认为20个，最大值为50个
        public let limit: UInt64?

        /// 标签列表，当存在该字段时，拉取对应标签下的资源列表。
        /// 最多支持5个标签，当存在两个或两个以上的标签时，满足其中任意一个标签时，源站会被拉取出来。
        public let tagSet: [TagPair]?

        /// 过滤条件。filter的name取值(RealServerName,RealServerIP)
        public let filters: [Filter]?

        public init(projectId: Int64, searchValue: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagSet: [TagPair]? = nil, filters: [Filter]? = nil) {
            self.projectId = projectId
            self.searchValue = searchValue
            self.offset = offset
            self.limit = limit
            self.tagSet = tagSet
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case searchValue = "SearchValue"
            case offset = "Offset"
            case limit = "Limit"
            case tagSet = "TagSet"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRealServersResponse) -> DescribeRealServersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRealServersRequest(projectId: self.projectId, searchValue: self.searchValue, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, tagSet: self.tagSet, filters: self.filters)
        }
    }

    /// DescribeRealServers返回参数结构体
    public struct DescribeRealServersResponse: TCPaginatedResponse {
        /// 源站信息列表
        public let realServerSet: [BindRealServerInfo]

        /// 查询得到的源站数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case realServerSet = "RealServerSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BindRealServerInfo] {
            self.realServerSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询源站信息
    ///
    /// 本接口（DescribeRealServers）用于查询源站信息，可以根据项目名查询所有的源站信息，此外支持指定IP或者域名的源站模糊查询。
    @inlinable
    public func describeRealServers(_ input: DescribeRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealServersResponse> {
        self.client.execute(action: "DescribeRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询源站信息
    ///
    /// 本接口（DescribeRealServers）用于查询源站信息，可以根据项目名查询所有的源站信息，此外支持指定IP或者域名的源站模糊查询。
    @inlinable
    public func describeRealServers(_ input: DescribeRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealServersResponse {
        try await self.client.execute(action: "DescribeRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询源站信息
    ///
    /// 本接口（DescribeRealServers）用于查询源站信息，可以根据项目名查询所有的源站信息，此外支持指定IP或者域名的源站模糊查询。
    @inlinable
    public func describeRealServers(projectId: Int64, searchValue: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagSet: [TagPair]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealServersResponse> {
        self.describeRealServers(.init(projectId: projectId, searchValue: searchValue, offset: offset, limit: limit, tagSet: tagSet, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询源站信息
    ///
    /// 本接口（DescribeRealServers）用于查询源站信息，可以根据项目名查询所有的源站信息，此外支持指定IP或者域名的源站模糊查询。
    @inlinable
    public func describeRealServers(projectId: Int64, searchValue: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagSet: [TagPair]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealServersResponse {
        try await self.describeRealServers(.init(projectId: projectId, searchValue: searchValue, offset: offset, limit: limit, tagSet: tagSet, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询源站信息
    ///
    /// 本接口（DescribeRealServers）用于查询源站信息，可以根据项目名查询所有的源站信息，此外支持指定IP或者域名的源站模糊查询。
    @inlinable
    public func describeRealServersPaginated(_ input: DescribeRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BindRealServerInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeRealServers, logger: logger, on: eventLoop)
    }

    /// 查询源站信息
    ///
    /// 本接口（DescribeRealServers）用于查询源站信息，可以根据项目名查询所有的源站信息，此外支持指定IP或者域名的源站模糊查询。
    @inlinable @discardableResult
    public func describeRealServersPaginated(_ input: DescribeRealServersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRealServersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRealServers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询源站信息
    ///
    /// 本接口（DescribeRealServers）用于查询源站信息，可以根据项目名查询所有的源站信息，此外支持指定IP或者域名的源站模糊查询。
    ///
    /// - Returns: `AsyncSequence`s of `BindRealServerInfo` and `DescribeRealServersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRealServersPaginator(_ input: DescribeRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRealServersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRealServers, logger: logger, on: eventLoop)
    }
}
