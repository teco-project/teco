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

extension Cat {
    /// DescribeProbeTasks请求参数结构体
    public struct DescribeProbeTasksRequest: TCPaginatedRequest {
        /// 任务 ID  列表
        public let taskIDs: [String]?

        /// 任务名
        public let taskName: String?

        /// 拨测目标
        public let targetAddress: String?

        /// 任务状态列表
        /// - 1 = 创建中
        /// - 2 = 运行中
        /// - 3 = 运行异常
        /// - 4 = 暂停中
        /// - 5 = 暂停异常
        /// - 6 = 任务暂停
        /// - 7 = 任务删除中
        /// - 8 = 任务删除异常
        /// - 9 = 任务删除
        /// - 10 = 定时任务暂停中
        public let taskStatus: [Int64]?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100
        public let limit: Int64?

        /// 付费模式
        /// - 1 = 试用版本
        /// - 2 = 付费版本
        public let payMode: Int64?

        /// 订单状态
        /// - 1 = 正常
        /// - 2 = 欠费
        public let orderState: Int64?

        /// 拨测类型
        /// - 1 = 页面浏览
        /// - 2 =文件上传
        /// - 3 = 文件下载
        /// - 4 = 端口性能
        /// - 5 = 网络质量
        /// - 6 =流媒体
        ///
        /// 即使拨测只支持页面浏览，网络质量，文件下载
        public let taskType: [Int64]?

        /// 节点类型
        public let taskCategory: [Int64]?

        /// 排序的列
        public let orderBy: String?

        /// 是否正序
        public let ascend: Bool?

        /// 资源标签值
        public let tagFilters: [KeyValuePair]?

        public init(taskIDs: [String]? = nil, taskName: String? = nil, targetAddress: String? = nil, taskStatus: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, payMode: Int64? = nil, orderState: Int64? = nil, taskType: [Int64]? = nil, taskCategory: [Int64]? = nil, orderBy: String? = nil, ascend: Bool? = nil, tagFilters: [KeyValuePair]? = nil) {
            self.taskIDs = taskIDs
            self.taskName = taskName
            self.targetAddress = targetAddress
            self.taskStatus = taskStatus
            self.offset = offset
            self.limit = limit
            self.payMode = payMode
            self.orderState = orderState
            self.taskType = taskType
            self.taskCategory = taskCategory
            self.orderBy = orderBy
            self.ascend = ascend
            self.tagFilters = tagFilters
        }

        enum CodingKeys: String, CodingKey {
            case taskIDs = "TaskIDs"
            case taskName = "TaskName"
            case targetAddress = "TargetAddress"
            case taskStatus = "TaskStatus"
            case offset = "Offset"
            case limit = "Limit"
            case payMode = "PayMode"
            case orderState = "OrderState"
            case taskType = "TaskType"
            case taskCategory = "TaskCategory"
            case orderBy = "OrderBy"
            case ascend = "Ascend"
            case tagFilters = "TagFilters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeProbeTasksResponse) -> DescribeProbeTasksRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(taskIDs: self.taskIDs, taskName: self.taskName, targetAddress: self.targetAddress, taskStatus: self.taskStatus, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, payMode: self.payMode, orderState: self.orderState, taskType: self.taskType, taskCategory: self.taskCategory, orderBy: self.orderBy, ascend: self.ascend, tagFilters: self.tagFilters)
        }
    }

    /// DescribeProbeTasks返回参数结构体
    public struct DescribeProbeTasksResponse: TCPaginatedResponse {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskSet: [ProbeTask]?

        /// 任务总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskSet = "TaskSet"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ProbeTask`` list from the paginated response.
        public func getItems() -> [ProbeTask] {
            self.taskSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 分页查询拨测任务列表
    ///
    /// 查询拨测任务列表
    @inlinable
    public func describeProbeTasks(_ input: DescribeProbeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProbeTasksResponse> {
        self.client.execute(action: "DescribeProbeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询拨测任务列表
    ///
    /// 查询拨测任务列表
    @inlinable
    public func describeProbeTasks(_ input: DescribeProbeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProbeTasksResponse {
        try await self.client.execute(action: "DescribeProbeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询拨测任务列表
    ///
    /// 查询拨测任务列表
    @inlinable
    public func describeProbeTasks(taskIDs: [String]? = nil, taskName: String? = nil, targetAddress: String? = nil, taskStatus: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, payMode: Int64? = nil, orderState: Int64? = nil, taskType: [Int64]? = nil, taskCategory: [Int64]? = nil, orderBy: String? = nil, ascend: Bool? = nil, tagFilters: [KeyValuePair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProbeTasksResponse> {
        self.describeProbeTasks(.init(taskIDs: taskIDs, taskName: taskName, targetAddress: targetAddress, taskStatus: taskStatus, offset: offset, limit: limit, payMode: payMode, orderState: orderState, taskType: taskType, taskCategory: taskCategory, orderBy: orderBy, ascend: ascend, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询拨测任务列表
    ///
    /// 查询拨测任务列表
    @inlinable
    public func describeProbeTasks(taskIDs: [String]? = nil, taskName: String? = nil, targetAddress: String? = nil, taskStatus: [Int64]? = nil, offset: Int64? = nil, limit: Int64? = nil, payMode: Int64? = nil, orderState: Int64? = nil, taskType: [Int64]? = nil, taskCategory: [Int64]? = nil, orderBy: String? = nil, ascend: Bool? = nil, tagFilters: [KeyValuePair]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProbeTasksResponse {
        try await self.describeProbeTasks(.init(taskIDs: taskIDs, taskName: taskName, targetAddress: targetAddress, taskStatus: taskStatus, offset: offset, limit: limit, payMode: payMode, orderState: orderState, taskType: taskType, taskCategory: taskCategory, orderBy: orderBy, ascend: ascend, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询拨测任务列表
    ///
    /// 查询拨测任务列表
    @inlinable
    public func describeProbeTasksPaginated(_ input: DescribeProbeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ProbeTask])> {
        self.client.paginate(input: input, region: region, command: self.describeProbeTasks, logger: logger, on: eventLoop)
    }

    /// 分页查询拨测任务列表
    ///
    /// 查询拨测任务列表
    @inlinable @discardableResult
    public func describeProbeTasksPaginated(_ input: DescribeProbeTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeProbeTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeProbeTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 分页查询拨测任务列表
    ///
    /// 查询拨测任务列表
    ///
    /// - Returns: `AsyncSequence`s of ``ProbeTask`` and ``DescribeProbeTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeProbeTasksPaginator(_ input: DescribeProbeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeProbeTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeProbeTasks, logger: logger, on: eventLoop)
    }
}
