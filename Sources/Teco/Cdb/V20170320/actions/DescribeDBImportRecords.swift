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

extension Cdb {
    /// DescribeDBImportRecords请求参数结构体
    public struct DescribeDBImportRecordsRequest: TCPaginatedRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 开始时间，时间格式如：2016-01-01 00:00:01。
        public let startTime: String?

        /// 结束时间，时间格式如：2016-01-01 23:59:59。
        public let endTime: String?

        /// 分页参数，偏移量，默认值为0。
        public let offset: Int64?

        /// 分页参数，单次请求返回的数量，默认值为20，最小值为1，最大值为100。
        public let limit: Int64?

        public init(instanceId: String, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDBImportRecordsResponse) -> DescribeDBImportRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDBImportRecordsRequest(instanceId: self.instanceId, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDBImportRecords返回参数结构体
    public struct DescribeDBImportRecordsResponse: TCPaginatedResponse {
        /// 符合查询条件的导入任务操作日志总数。
        public let totalCount: Int64

        /// 返回的导入操作记录列表。
        public let items: [ImportRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImportRecord] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询数据库导入任务记录
    ///
    /// 本接口(DescribeDBImportRecords)用于查询云数据库导入任务操作日志。
    @inlinable
    public func describeDBImportRecords(_ input: DescribeDBImportRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBImportRecordsResponse> {
        self.client.execute(action: "DescribeDBImportRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库导入任务记录
    ///
    /// 本接口(DescribeDBImportRecords)用于查询云数据库导入任务操作日志。
    @inlinable
    public func describeDBImportRecords(_ input: DescribeDBImportRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBImportRecordsResponse {
        try await self.client.execute(action: "DescribeDBImportRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库导入任务记录
    ///
    /// 本接口(DescribeDBImportRecords)用于查询云数据库导入任务操作日志。
    @inlinable
    public func describeDBImportRecords(instanceId: String, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBImportRecordsResponse> {
        self.describeDBImportRecords(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库导入任务记录
    ///
    /// 本接口(DescribeDBImportRecords)用于查询云数据库导入任务操作日志。
    @inlinable
    public func describeDBImportRecords(instanceId: String, startTime: String? = nil, endTime: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBImportRecordsResponse {
        try await self.describeDBImportRecords(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库导入任务记录
    ///
    /// 本接口(DescribeDBImportRecords)用于查询云数据库导入任务操作日志。
    @inlinable
    public func describeDBImportRecordsPaginated(_ input: DescribeDBImportRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ImportRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeDBImportRecords, logger: logger, on: eventLoop)
    }

    /// 查询数据库导入任务记录
    ///
    /// 本接口(DescribeDBImportRecords)用于查询云数据库导入任务操作日志。
    @inlinable @discardableResult
    public func describeDBImportRecordsPaginated(_ input: DescribeDBImportRecordsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBImportRecordsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBImportRecords, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据库导入任务记录
    ///
    /// 本接口(DescribeDBImportRecords)用于查询云数据库导入任务操作日志。
    ///
    /// - Returns: `AsyncSequence`s of `ImportRecord` and `DescribeDBImportRecordsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDBImportRecordsPaginator(_ input: DescribeDBImportRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDBImportRecordsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDBImportRecords, logger: logger, on: eventLoop)
    }
}
