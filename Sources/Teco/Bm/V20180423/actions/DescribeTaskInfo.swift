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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Bm {
    /// DescribeTaskInfo请求参数结构体
    public struct DescribeTaskInfoRequest: TCPaginatedRequest {
        /// 开始位置
        public let offset: UInt64

        /// 数据条数
        public let limit: UInt64

        /// 时间过滤下限
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date?

        /// 时间过滤上限
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date?

        /// 任务状态ID过滤
        public let taskStatus: [UInt64]?

        /// 排序字段，目前支持：CreateTime，AuthTime，EndTime
        public let orderField: String?

        /// 排序方式 0:递增(默认) 1:递减
        public let order: UInt64?

        /// 任务ID过滤
        public let taskIds: [String]?

        /// 实例ID过滤
        public let instanceIds: [String]?

        /// 实例别名过滤
        public let aliases: [String]?

        /// 故障类型ID过滤
        public let taskTypeIds: [UInt64]?

        public init(offset: UInt64, limit: UInt64, startDate: Date? = nil, endDate: Date? = nil, taskStatus: [UInt64]? = nil, orderField: String? = nil, order: UInt64? = nil, taskIds: [String]? = nil, instanceIds: [String]? = nil, aliases: [String]? = nil, taskTypeIds: [UInt64]? = nil) {
            self.offset = offset
            self.limit = limit
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.taskStatus = taskStatus
            self.orderField = orderField
            self.order = order
            self.taskIds = taskIds
            self.instanceIds = instanceIds
            self.aliases = aliases
            self.taskTypeIds = taskTypeIds
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case taskStatus = "TaskStatus"
            case orderField = "OrderField"
            case order = "Order"
            case taskIds = "TaskIds"
            case instanceIds = "InstanceIds"
            case aliases = "Aliases"
            case taskTypeIds = "TaskTypeIds"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTaskInfoResponse) -> DescribeTaskInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTaskInfoRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, startDate: self.startDate, endDate: self.endDate, taskStatus: self.taskStatus, orderField: self.orderField, order: self.order, taskIds: self.taskIds, instanceIds: self.instanceIds, aliases: self.aliases, taskTypeIds: self.taskTypeIds)
        }
    }

    /// DescribeTaskInfo返回参数结构体
    public struct DescribeTaskInfoResponse: TCPaginatedResponse {
        /// 返回任务总数量
        public let totalCount: Int64

        /// 任务信息列表
        public let taskInfoSet: [TaskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case taskInfoSet = "TaskInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TaskInfo`` list from the paginated response.
        public func getItems() -> [TaskInfo] {
            self.taskInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 维修任务信息获取
    ///
    /// 获取用户维修任务列表及详细信息<br>
    /// <br>
    /// TaskStatus（任务状态ID）与状态中文名的对应关系如下：<br>
    /// 1：未授权<br>
    /// 2：处理中<br>
    /// 3：待确认<br>
    /// 4：未授权-暂不处理<br>
    /// 5：已恢复<br>
    /// 6：待确认-未恢复<br>
    @inlinable
    public func describeTaskInfo(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInfoResponse> {
        self.client.execute(action: "DescribeTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 维修任务信息获取
    ///
    /// 获取用户维修任务列表及详细信息<br>
    /// <br>
    /// TaskStatus（任务状态ID）与状态中文名的对应关系如下：<br>
    /// 1：未授权<br>
    /// 2：处理中<br>
    /// 3：待确认<br>
    /// 4：未授权-暂不处理<br>
    /// 5：已恢复<br>
    /// 6：待确认-未恢复<br>
    @inlinable
    public func describeTaskInfo(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInfoResponse {
        try await self.client.execute(action: "DescribeTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 维修任务信息获取
    ///
    /// 获取用户维修任务列表及详细信息<br>
    /// <br>
    /// TaskStatus（任务状态ID）与状态中文名的对应关系如下：<br>
    /// 1：未授权<br>
    /// 2：处理中<br>
    /// 3：待确认<br>
    /// 4：未授权-暂不处理<br>
    /// 5：已恢复<br>
    /// 6：待确认-未恢复<br>
    @inlinable
    public func describeTaskInfo(offset: UInt64, limit: UInt64, startDate: Date? = nil, endDate: Date? = nil, taskStatus: [UInt64]? = nil, orderField: String? = nil, order: UInt64? = nil, taskIds: [String]? = nil, instanceIds: [String]? = nil, aliases: [String]? = nil, taskTypeIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskInfoResponse> {
        self.describeTaskInfo(.init(offset: offset, limit: limit, startDate: startDate, endDate: endDate, taskStatus: taskStatus, orderField: orderField, order: order, taskIds: taskIds, instanceIds: instanceIds, aliases: aliases, taskTypeIds: taskTypeIds), region: region, logger: logger, on: eventLoop)
    }

    /// 维修任务信息获取
    ///
    /// 获取用户维修任务列表及详细信息<br>
    /// <br>
    /// TaskStatus（任务状态ID）与状态中文名的对应关系如下：<br>
    /// 1：未授权<br>
    /// 2：处理中<br>
    /// 3：待确认<br>
    /// 4：未授权-暂不处理<br>
    /// 5：已恢复<br>
    /// 6：待确认-未恢复<br>
    @inlinable
    public func describeTaskInfo(offset: UInt64, limit: UInt64, startDate: Date? = nil, endDate: Date? = nil, taskStatus: [UInt64]? = nil, orderField: String? = nil, order: UInt64? = nil, taskIds: [String]? = nil, instanceIds: [String]? = nil, aliases: [String]? = nil, taskTypeIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskInfoResponse {
        try await self.describeTaskInfo(.init(offset: offset, limit: limit, startDate: startDate, endDate: endDate, taskStatus: taskStatus, orderField: orderField, order: order, taskIds: taskIds, instanceIds: instanceIds, aliases: aliases, taskTypeIds: taskTypeIds), region: region, logger: logger, on: eventLoop)
    }

    /// 维修任务信息获取
    ///
    /// 获取用户维修任务列表及详细信息<br>
    /// <br>
    /// TaskStatus（任务状态ID）与状态中文名的对应关系如下：<br>
    /// 1：未授权<br>
    /// 2：处理中<br>
    /// 3：待确认<br>
    /// 4：未授权-暂不处理<br>
    /// 5：已恢复<br>
    /// 6：待确认-未恢复<br>
    @inlinable
    public func describeTaskInfoPaginated(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskInfo, logger: logger, on: eventLoop)
    }

    /// 维修任务信息获取
    ///
    /// 获取用户维修任务列表及详细信息<br>
    /// <br>
    /// TaskStatus（任务状态ID）与状态中文名的对应关系如下：<br>
    /// 1：未授权<br>
    /// 2：处理中<br>
    /// 3：待确认<br>
    /// 4：未授权-暂不处理<br>
    /// 5：已恢复<br>
    /// 6：待确认-未恢复<br>
    @inlinable @discardableResult
    public func describeTaskInfoPaginated(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 维修任务信息获取
    ///
    /// 获取用户维修任务列表及详细信息<br>
    /// <br>
    /// TaskStatus（任务状态ID）与状态中文名的对应关系如下：<br>
    /// 1：未授权<br>
    /// 2：处理中<br>
    /// 3：待确认<br>
    /// 4：未授权-暂不处理<br>
    /// 5：已恢复<br>
    /// 6：待确认-未恢复<br>
    ///
    /// - Returns: `AsyncSequence`s of ``TaskInfo`` and ``DescribeTaskInfoResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTaskInfoPaginator(_ input: DescribeTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskInfo, logger: logger, on: eventLoop)
    }
}
