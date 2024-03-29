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

extension Dlc {
    /// DescribeSparkAppJobs请求参数结构体
    public struct DescribeSparkAppJobsRequest: TCPaginatedRequest {
        /// 返回结果按照该字段排序
        public let sortBy: String?

        /// 正序或者倒序，例如：desc
        public let sorting: String?

        /// 过滤条件，如下支持的过滤类型，传参Name应为其一:spark-job-name（作业名称），spark-job-id（作业id），spark-app-type（作业类型，1：批任务，2：流任务，4：SQL作业），user-name（创建人），key-word（作业名称或ID关键词模糊搜索）
        public let filters: [Filter]?

        /// 更新时间起始点，支持格式：yyyy-MM-dd HH:mm:ss
        public let startTime: String?

        /// 更新时间截止点，支持格式：yyyy-MM-dd HH:mm:ss
        public let endTime: String?

        /// 查询列表偏移量, 默认值0
        public let offset: Int64?

        /// 查询列表限制数量, 默认值100
        public let limit: Int64?

        public init(sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.sortBy = sortBy
            self.sorting = sorting
            self.filters = filters
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case sortBy = "SortBy"
            case sorting = "Sorting"
            case filters = "Filters"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSparkAppJobsResponse) -> DescribeSparkAppJobsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(sortBy: self.sortBy, sorting: self.sorting, filters: self.filters, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSparkAppJobs返回参数结构体
    public struct DescribeSparkAppJobsResponse: TCPaginatedResponse {
        /// spark作业列表详情
        public let sparkAppJobs: [SparkJobInfo]

        /// spark作业总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sparkAppJobs = "SparkAppJobs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SparkJobInfo`` list from the paginated response.
        public func getItems() -> [SparkJobInfo] {
            self.sparkAppJobs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询spark作业列表
    @inlinable
    public func describeSparkAppJobs(_ input: DescribeSparkAppJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSparkAppJobsResponse> {
        self.client.execute(action: "DescribeSparkAppJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询spark作业列表
    @inlinable
    public func describeSparkAppJobs(_ input: DescribeSparkAppJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkAppJobsResponse {
        try await self.client.execute(action: "DescribeSparkAppJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询spark作业列表
    @inlinable
    public func describeSparkAppJobs(sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSparkAppJobsResponse> {
        self.describeSparkAppJobs(.init(sortBy: sortBy, sorting: sorting, filters: filters, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询spark作业列表
    @inlinable
    public func describeSparkAppJobs(sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkAppJobsResponse {
        try await self.describeSparkAppJobs(.init(sortBy: sortBy, sorting: sorting, filters: filters, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询spark作业列表
    @inlinable
    public func describeSparkAppJobsPaginated(_ input: DescribeSparkAppJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SparkJobInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSparkAppJobs, logger: logger, on: eventLoop)
    }

    /// 查询spark作业列表
    @inlinable @discardableResult
    public func describeSparkAppJobsPaginated(_ input: DescribeSparkAppJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSparkAppJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSparkAppJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询spark作业列表
    ///
    /// - Returns: `AsyncSequence`s of ``SparkJobInfo`` and ``DescribeSparkAppJobsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSparkAppJobsPaginator(_ input: DescribeSparkAppJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSparkAppJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSparkAppJobs, logger: logger, on: eventLoop)
    }
}
