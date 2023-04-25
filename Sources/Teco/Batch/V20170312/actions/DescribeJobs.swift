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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Batch {
    /// DescribeJobs请求参数结构体
    public struct DescribeJobsRequest: TCPaginatedRequest {
        /// 作业ID列表，与Filters参数不能同时指定。
        public let jobIds: [String]?

        /// 过滤条件
        /// <li> job-id - String - 是否必填：否 -（过滤条件）按照作业ID过滤。</li>
        /// <li> job-name - String - 是否必填：否 -（过滤条件）按照作业名称过滤。</li>
        /// <li> job-state - String - 是否必填：否 -（过滤条件）按照作业状态过滤。</li>
        /// <li> zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。</li>
        /// <li> tag-key - String - 是否必填：否 -（过滤条件）按照标签键进行过滤。</li>
        /// <li> tag-value - String - 是否必填：否 -（过滤条件）按照标签值进行过滤。</li>
        /// <li> tag:tag-key - String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。</li>
        /// 与JobIds参数不能同时指定。
        public let filters: [Filter]?

        /// 偏移量
        public let offset: Int64?

        /// 返回数量
        public let limit: Int64?

        public init(jobIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.jobIds = jobIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case jobIds = "JobIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeJobsResponse) -> DescribeJobsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeJobsRequest(jobIds: self.jobIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeJobs返回参数结构体
    public struct DescribeJobsResponse: TCPaginatedResponse {
        /// 作业列表
        public let jobSet: [JobView]

        /// 符合条件的作业数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobSet = "JobSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [JobView] {
            self.jobSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看作业列表
    ///
    /// 用于查询若干个作业的概览信息
    @inlinable
    public func describeJobs(_ input: DescribeJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobsResponse> {
        self.client.execute(action: "DescribeJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看作业列表
    ///
    /// 用于查询若干个作业的概览信息
    @inlinable
    public func describeJobs(_ input: DescribeJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobsResponse {
        try await self.client.execute(action: "DescribeJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看作业列表
    ///
    /// 用于查询若干个作业的概览信息
    @inlinable
    public func describeJobs(jobIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobsResponse> {
        self.describeJobs(.init(jobIds: jobIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看作业列表
    ///
    /// 用于查询若干个作业的概览信息
    @inlinable
    public func describeJobs(jobIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobsResponse {
        try await self.describeJobs(.init(jobIds: jobIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看作业列表
    ///
    /// 用于查询若干个作业的概览信息
    @inlinable
    public func describeJobsPaginated(_ input: DescribeJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [JobView])> {
        self.client.paginate(input: input, region: region, command: self.describeJobs, logger: logger, on: eventLoop)
    }

    /// 查看作业列表
    ///
    /// 用于查询若干个作业的概览信息
    @inlinable @discardableResult
    public func describeJobsPaginated(_ input: DescribeJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看作业列表
    ///
    /// 用于查询若干个作业的概览信息
    ///
    /// - Returns: `AsyncSequence`s of `JobView` and `DescribeJobsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeJobsPaginator(_ input: DescribeJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeJobs, logger: logger, on: eventLoop)
    }
}
