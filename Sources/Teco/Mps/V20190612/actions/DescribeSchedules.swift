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

extension Mps {
    /// DescribeSchedules请求参数结构体
    public struct DescribeSchedulesRequest: TCPaginatedRequest {
        /// 编排 ID 过滤条件，数组长度限制：100。
        public let scheduleIds: [Int64]?

        /// 编排触发类型，可选值：
        /// <li>CosFileUpload： 腾讯云 COS 文件上传触发</li>
        /// <li>AwsS3FileUpload：Aws S3 文件上传触发。</li>
        /// 不填或者为空表示全部。
        public let triggerType: String?

        /// 状态，取值范围：
        /// <li>Enabled：已启用，</li>
        /// <li>Disabled：已禁用。</li>
        /// 不填此参数，则不区编排状态。
        public let status: String?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        public init(scheduleIds: [Int64]? = nil, triggerType: String? = nil, status: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.scheduleIds = scheduleIds
            self.triggerType = triggerType
            self.status = status
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case scheduleIds = "ScheduleIds"
            case triggerType = "TriggerType"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSchedulesResponse) -> DescribeSchedulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSchedulesRequest(scheduleIds: self.scheduleIds, triggerType: self.triggerType, status: self.status, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSchedules返回参数结构体
    public struct DescribeSchedulesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 编排信息数组。
        public let scheduleInfoSet: [SchedulesInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case scheduleInfoSet = "ScheduleInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SchedulesInfo] {
            self.scheduleInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询编排
    ///
    /// 查询编排。
    @inlinable
    public func describeSchedules(_ input: DescribeSchedulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchedulesResponse> {
        self.client.execute(action: "DescribeSchedules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询编排
    ///
    /// 查询编排。
    @inlinable
    public func describeSchedules(_ input: DescribeSchedulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSchedulesResponse {
        try await self.client.execute(action: "DescribeSchedules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询编排
    ///
    /// 查询编排。
    @inlinable
    public func describeSchedules(scheduleIds: [Int64]? = nil, triggerType: String? = nil, status: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchedulesResponse> {
        self.describeSchedules(.init(scheduleIds: scheduleIds, triggerType: triggerType, status: status, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询编排
    ///
    /// 查询编排。
    @inlinable
    public func describeSchedules(scheduleIds: [Int64]? = nil, triggerType: String? = nil, status: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSchedulesResponse {
        try await self.describeSchedules(.init(scheduleIds: scheduleIds, triggerType: triggerType, status: status, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询编排
    ///
    /// 查询编排。
    @inlinable
    public func describeSchedulesPaginated(_ input: DescribeSchedulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SchedulesInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSchedules, logger: logger, on: eventLoop)
    }

    /// 查询编排
    ///
    /// 查询编排。
    @inlinable @discardableResult
    public func describeSchedulesPaginated(_ input: DescribeSchedulesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSchedulesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSchedules, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询编排
    ///
    /// 查询编排。
    ///
    /// - Returns: `AsyncSequence`s of `SchedulesInfo` and `DescribeSchedulesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSchedulesPaginator(_ input: DescribeSchedulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSchedulesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSchedules, logger: logger, on: eventLoop)
    }
}
