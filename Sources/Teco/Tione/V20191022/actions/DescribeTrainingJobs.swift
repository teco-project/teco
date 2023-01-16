//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Tione {
    /// DescribeTrainingJobs请求参数结构体
    public struct DescribeTrainingJobsRequest: TCRequestModel {
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
    }

    /// DescribeTrainingJobs返回参数结构体
    public struct DescribeTrainingJobsResponse: TCResponseModel {
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
    }

    /// 查询训练任务列表
    @inlinable
    public func describeTrainingJobs(_ input: DescribeTrainingJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingJobsResponse> {
        self.client.execute(action: "DescribeTrainingJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询训练任务列表
    @inlinable
    public func describeTrainingJobs(_ input: DescribeTrainingJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingJobsResponse {
        try await self.client.execute(action: "DescribeTrainingJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询训练任务列表
    @inlinable
    public func describeTrainingJobs(offset: UInt64? = nil, limit: UInt64? = nil, creationTimeAfter: Date? = nil, creationTimeBefore: Date? = nil, nameContains: String? = nil, statusEquals: String? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingJobsResponse> {
        self.describeTrainingJobs(DescribeTrainingJobsRequest(offset: offset, limit: limit, creationTimeAfter: creationTimeAfter, creationTimeBefore: creationTimeBefore, nameContains: nameContains, statusEquals: statusEquals, filters: filters), logger: logger, on: eventLoop)
    }

    /// 查询训练任务列表
    @inlinable
    public func describeTrainingJobs(offset: UInt64? = nil, limit: UInt64? = nil, creationTimeAfter: Date? = nil, creationTimeBefore: Date? = nil, nameContains: String? = nil, statusEquals: String? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingJobsResponse {
        try await self.describeTrainingJobs(DescribeTrainingJobsRequest(offset: offset, limit: limit, creationTimeAfter: creationTimeAfter, creationTimeBefore: creationTimeBefore, nameContains: nameContains, statusEquals: statusEquals, filters: filters), logger: logger, on: eventLoop)
    }
}
