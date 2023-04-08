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

extension Tem {
    /// DescribeApplications请求参数结构体
    public struct DescribeApplicationsRequest: TCPaginatedRequest {
        /// 命名空间ID
        public let environmentId: String?

        /// 分页Limit
        public let limit: Int64?

        /// 分页offset
        public let offset: Int64?

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 服务id
        public let applicationId: String?

        /// 搜索关键字
        public let keyword: String?

        /// 查询过滤器
        public let filters: [QueryFilter]?

        /// 排序字段
        public let sortInfo: SortType?

        public init(environmentId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, applicationId: String? = nil, keyword: String? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil) {
            self.environmentId = environmentId
            self.limit = limit
            self.offset = offset
            self.sourceChannel = sourceChannel
            self.applicationId = applicationId
            self.keyword = keyword
            self.filters = filters
            self.sortInfo = sortInfo
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case limit = "Limit"
            case offset = "Offset"
            case sourceChannel = "SourceChannel"
            case applicationId = "ApplicationId"
            case keyword = "Keyword"
            case filters = "Filters"
            case sortInfo = "SortInfo"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeApplicationsResponse) -> DescribeApplicationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApplicationsRequest(environmentId: self.environmentId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), sourceChannel: self.sourceChannel, applicationId: self.applicationId, keyword: self.keyword, filters: self.filters, sortInfo: self.sortInfo)
        }
    }

    /// DescribeApplications返回参数结构体
    public struct DescribeApplicationsResponse: TCPaginatedResponse {
        /// 返回结果
        public let result: ServicePage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TemService] {
            self.result.records
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.total
        }
    }

    /// 获取运行服务列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取运行服务列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        try await self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取运行服务列表
    @inlinable
    public func describeApplications(environmentId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, applicationId: String? = nil, keyword: String? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        self.describeApplications(.init(environmentId: environmentId, limit: limit, offset: offset, sourceChannel: sourceChannel, applicationId: applicationId, keyword: keyword, filters: filters, sortInfo: sortInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 获取运行服务列表
    @inlinable
    public func describeApplications(environmentId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, applicationId: String? = nil, keyword: String? = nil, filters: [QueryFilter]? = nil, sortInfo: SortType? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        try await self.describeApplications(.init(environmentId: environmentId, limit: limit, offset: offset, sourceChannel: sourceChannel, applicationId: applicationId, keyword: keyword, filters: filters, sortInfo: sortInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 获取运行服务列表
    @inlinable
    public func describeApplicationsPaginated(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TemService])> {
        self.client.paginate(input: input, region: region, command: self.describeApplications, logger: logger, on: eventLoop)
    }

    /// 获取运行服务列表
    @inlinable @discardableResult
    public func describeApplicationsPaginated(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApplications, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取运行服务列表
    ///
    /// - Returns: `AsyncSequence`s of `TemService` and `DescribeApplicationsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApplicationsPaginator(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApplicationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApplications, logger: logger, on: eventLoop)
    }
}
