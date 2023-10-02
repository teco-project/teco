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

extension Iecp {
    /// DescribeEdgeOperationLogs请求参数结构体
    public struct DescribeEdgeOperationLogsRequest: TCPaginatedRequest {
        /// 开始时间
        public let beginTime: String

        /// 结束时间
        public let endTime: String

        /// 偏移量
        public let offset: UInt64

        /// 翻页大小
        public let limit: UInt64

        /// 排序字段
        public let sort: [FieldSort]?

        /// 模块
        public let module: String?

        /// 过滤条件
        public let condition: OperationLogsCondition?

        public init(beginTime: String, endTime: String, offset: UInt64, limit: UInt64, sort: [FieldSort]? = nil, module: String? = nil, condition: OperationLogsCondition? = nil) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
            self.sort = sort
            self.module = module
            self.condition = condition
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case sort = "Sort"
            case module = "Module"
            case condition = "Condition"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEdgeOperationLogsResponse) -> DescribeEdgeOperationLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(beginTime: self.beginTime, endTime: self.endTime, offset: self.offset + .init(response.getItems().count), limit: self.limit, sort: self.sort, module: self.module, condition: self.condition)
        }
    }

    /// DescribeEdgeOperationLogs返回参数结构体
    public struct DescribeEdgeOperationLogsResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 操作日志列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operationLogSet: [OperationLog]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case operationLogSet = "OperationLogSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``OperationLog`` list from the paginated response.
        public func getItems() -> [OperationLog] {
            self.operationLogSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询边缘操作日志
    @inlinable
    public func describeEdgeOperationLogs(_ input: DescribeEdgeOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeOperationLogsResponse> {
        self.client.execute(action: "DescribeEdgeOperationLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘操作日志
    @inlinable
    public func describeEdgeOperationLogs(_ input: DescribeEdgeOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeOperationLogsResponse {
        try await self.client.execute(action: "DescribeEdgeOperationLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘操作日志
    @inlinable
    public func describeEdgeOperationLogs(beginTime: String, endTime: String, offset: UInt64, limit: UInt64, sort: [FieldSort]? = nil, module: String? = nil, condition: OperationLogsCondition? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeOperationLogsResponse> {
        self.describeEdgeOperationLogs(.init(beginTime: beginTime, endTime: endTime, offset: offset, limit: limit, sort: sort, module: module, condition: condition), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘操作日志
    @inlinable
    public func describeEdgeOperationLogs(beginTime: String, endTime: String, offset: UInt64, limit: UInt64, sort: [FieldSort]? = nil, module: String? = nil, condition: OperationLogsCondition? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeOperationLogsResponse {
        try await self.describeEdgeOperationLogs(.init(beginTime: beginTime, endTime: endTime, offset: offset, limit: limit, sort: sort, module: module, condition: condition), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘操作日志
    @inlinable
    public func describeEdgeOperationLogsPaginated(_ input: DescribeEdgeOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [OperationLog])> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeOperationLogs, logger: logger, on: eventLoop)
    }

    /// 查询边缘操作日志
    @inlinable @discardableResult
    public func describeEdgeOperationLogsPaginated(_ input: DescribeEdgeOperationLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEdgeOperationLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEdgeOperationLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询边缘操作日志
    ///
    /// - Returns: `AsyncSequence`s of ``OperationLog`` and ``DescribeEdgeOperationLogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEdgeOperationLogsPaginator(_ input: DescribeEdgeOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEdgeOperationLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEdgeOperationLogs, logger: logger, on: eventLoop)
    }
}
