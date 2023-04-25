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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Tione {
    /// DescribeTrainingJobs请求参数结构体
    public struct DescribeTrainingJobsRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64?

        /// 限制数目
        public let limit: UInt64?

        /// 创建时间晚于
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creationTimeAfter: Date?

        /// 创建时间早于
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var creationTimeBefore: Date?

        /// 根据名称过滤
        public let nameContains: String?

        /// 根据状态过滤
        public let statusEquals: String?

        /// 过滤条件。
        /// instance-name - String - 是否必填：否 -（过滤条件）按照名称过滤。
        /// search-by-name - String - 是否必填：否 -（过滤条件）按照名称检索，模糊匹配。
        public let filters: [Filter]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, creationTimeAfter: Date? = nil, creationTimeBefore: Date? = nil, nameContains: String? = nil, statusEquals: String? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self._creationTimeAfter = .init(wrappedValue: creationTimeAfter)
            self._creationTimeBefore = .init(wrappedValue: creationTimeBefore)
            self.nameContains = nameContains
            self.statusEquals = statusEquals
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case creationTimeAfter = "CreationTimeAfter"
            case creationTimeBefore = "CreationTimeBefore"
            case nameContains = "NameContains"
            case statusEquals = "StatusEquals"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTrainingJobsResponse) -> DescribeTrainingJobsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTrainingJobsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, creationTimeAfter: self.creationTimeAfter, creationTimeBefore: self.creationTimeBefore, nameContains: self.nameContains, statusEquals: self.statusEquals, filters: self.filters)
        }
    }

    /// DescribeTrainingJobs返回参数结构体
    public struct DescribeTrainingJobsResponse: TCPaginatedResponse {
        /// 训练任务列表
        public let trainingJobSet: [TrainingJobSummary]

        /// 训练任务总数目
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trainingJobSet = "TrainingJobSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TrainingJobSummary] {
            self.trainingJobSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询训练任务列表
    @inlinable
    public func describeTrainingJobs(_ input: DescribeTrainingJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingJobsResponse> {
        self.client.execute(action: "DescribeTrainingJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询训练任务列表
    @inlinable
    public func describeTrainingJobs(_ input: DescribeTrainingJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingJobsResponse {
        try await self.client.execute(action: "DescribeTrainingJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询训练任务列表
    @inlinable
    public func describeTrainingJobs(offset: UInt64? = nil, limit: UInt64? = nil, creationTimeAfter: Date? = nil, creationTimeBefore: Date? = nil, nameContains: String? = nil, statusEquals: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingJobsResponse> {
        self.describeTrainingJobs(.init(offset: offset, limit: limit, creationTimeAfter: creationTimeAfter, creationTimeBefore: creationTimeBefore, nameContains: nameContains, statusEquals: statusEquals, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询训练任务列表
    @inlinable
    public func describeTrainingJobs(offset: UInt64? = nil, limit: UInt64? = nil, creationTimeAfter: Date? = nil, creationTimeBefore: Date? = nil, nameContains: String? = nil, statusEquals: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingJobsResponse {
        try await self.describeTrainingJobs(.init(offset: offset, limit: limit, creationTimeAfter: creationTimeAfter, creationTimeBefore: creationTimeBefore, nameContains: nameContains, statusEquals: statusEquals, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询训练任务列表
    @inlinable
    public func describeTrainingJobsPaginated(_ input: DescribeTrainingJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TrainingJobSummary])> {
        self.client.paginate(input: input, region: region, command: self.describeTrainingJobs, logger: logger, on: eventLoop)
    }

    /// 查询训练任务列表
    @inlinable @discardableResult
    public func describeTrainingJobsPaginated(_ input: DescribeTrainingJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTrainingJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTrainingJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询训练任务列表
    ///
    /// - Returns: `AsyncSequence`s of `TrainingJobSummary` and `DescribeTrainingJobsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTrainingJobsPaginator(_ input: DescribeTrainingJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTrainingJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTrainingJobs, logger: logger, on: eventLoop)
    }
}
