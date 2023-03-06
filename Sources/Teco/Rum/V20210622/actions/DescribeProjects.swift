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

extension Rum {
    /// DescribeProjects请求参数结构体
    public struct DescribeProjectsRequest: TCPaginatedRequest {
        /// 分页每页数目，整型
        public let limit: UInt64

        /// 分页页码，整型
        public let offset: UInt64

        /// 过滤参数；demo模式传{"Name": "IsDemo", "Values":["1"]}
        public let filters: [Filter]?

        /// 该参数已废弃，demo模式请在Filters内注明
        public let isDemo: Int64?

        public init(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, isDemo: Int64? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.isDemo = isDemo
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case isDemo = "IsDemo"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeProjectsResponse) -> DescribeProjectsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProjectsRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), filters: self.filters, isDemo: self.isDemo)
        }
    }

    /// DescribeProjects返回参数结构体
    public struct DescribeProjectsResponse: TCPaginatedResponse {
        /// 列表总数
        public let totalCount: UInt64

        /// 项目列表
        public let projectSet: [RumProject]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case projectSet = "ProjectSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [RumProject] {
            self.projectSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取 RUM 应用列表
    ///
    /// 获取项目列表（实例创建的团队下的项目列表）
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectsResponse> {
        self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取 RUM 应用列表
    ///
    /// 获取项目列表（实例创建的团队下的项目列表）
    @inlinable
    public func describeProjects(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        try await self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取 RUM 应用列表
    ///
    /// 获取项目列表（实例创建的团队下的项目列表）
    @inlinable
    public func describeProjects(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, isDemo: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProjectsResponse> {
        let input = DescribeProjectsRequest(limit: limit, offset: offset, filters: filters, isDemo: isDemo)
        return self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取 RUM 应用列表
    ///
    /// 获取项目列表（实例创建的团队下的项目列表）
    @inlinable
    public func describeProjects(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, isDemo: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectsResponse {
        let input = DescribeProjectsRequest(limit: limit, offset: offset, filters: filters, isDemo: isDemo)
        return try await self.client.execute(action: "DescribeProjects", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取 RUM 应用列表
    ///
    /// 获取项目列表（实例创建的团队下的项目列表）
    @inlinable
    public func describeProjectsPaginated(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RumProject])> {
        self.client.paginate(input: input, region: region, command: self.describeProjects, logger: logger, on: eventLoop)
    }

    /// 获取 RUM 应用列表
    ///
    /// 获取项目列表（实例创建的团队下的项目列表）
    @inlinable
    public func describeProjectsPaginated(_ input: DescribeProjectsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProjectsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProjects, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取 RUM 应用列表
    ///
    /// 获取项目列表（实例创建的团队下的项目列表）
    @inlinable
    public func describeProjectsPaginator(_ input: DescribeProjectsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeProjectsRequest, DescribeProjectsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeProjectsRequest, DescribeProjectsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeProjectsRequest, DescribeProjectsResponse>.ResultSequence(input: input, region: region, command: self.describeProjects, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeProjectsRequest, DescribeProjectsResponse>.ResponseSequence(input: input, region: region, command: self.describeProjects, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
