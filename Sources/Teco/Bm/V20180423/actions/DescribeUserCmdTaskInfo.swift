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

import TecoPaginationHelpers

extension Bm {
    /// DescribeUserCmdTaskInfo请求参数结构体
    public struct DescribeUserCmdTaskInfoRequest: TCPaginatedRequest {
        /// 任务ID
        public let taskId: String

        /// 偏移量
        public let offset: UInt64?

        /// 数量限制
        public let limit: UInt64?

        /// 排序字段，支持： RunBeginTime,RunEndTime,Status
        public let orderField: String?

        /// 排序方式，取值: 1倒序，0顺序；默认倒序
        public let order: UInt64?

        /// 关键字搜索，可搜索ID或别名，支持模糊搜索
        public let searchKey: String?

        public init(taskId: String, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, order: UInt64? = nil, searchKey: String? = nil) {
            self.taskId = taskId
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.order = order
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case order = "Order"
            case searchKey = "SearchKey"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeUserCmdTaskInfoResponse) -> DescribeUserCmdTaskInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUserCmdTaskInfoRequest(taskId: self.taskId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, order: self.order, searchKey: self.searchKey)
        }
    }

    /// DescribeUserCmdTaskInfo返回参数结构体
    public struct DescribeUserCmdTaskInfoResponse: TCPaginatedResponse {
        /// 返回数量
        public let totalCount: UInt64

        /// 自定义脚本任务详细信息列表
        public let userCmdTaskInfoSet: [UserCmdTaskInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userCmdTaskInfoSet = "UserCmdTaskInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UserCmdTaskInfo] {
            self.userCmdTaskInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取自定义脚本任务详细信息
    @inlinable
    public func describeUserCmdTaskInfo(_ input: DescribeUserCmdTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserCmdTaskInfoResponse> {
        self.client.execute(action: "DescribeUserCmdTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本任务详细信息
    @inlinable
    public func describeUserCmdTaskInfo(_ input: DescribeUserCmdTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserCmdTaskInfoResponse {
        try await self.client.execute(action: "DescribeUserCmdTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取自定义脚本任务详细信息
    @inlinable
    public func describeUserCmdTaskInfo(taskId: String, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, order: UInt64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserCmdTaskInfoResponse> {
        let input = DescribeUserCmdTaskInfoRequest(taskId: taskId, offset: offset, limit: limit, orderField: orderField, order: order, searchKey: searchKey)
        return self.client.execute(action: "DescribeUserCmdTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本任务详细信息
    @inlinable
    public func describeUserCmdTaskInfo(taskId: String, offset: UInt64? = nil, limit: UInt64? = nil, orderField: String? = nil, order: UInt64? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserCmdTaskInfoResponse {
        let input = DescribeUserCmdTaskInfoRequest(taskId: taskId, offset: offset, limit: limit, orderField: orderField, order: order, searchKey: searchKey)
        return try await self.client.execute(action: "DescribeUserCmdTaskInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取自定义脚本任务详细信息
    @inlinable
    public func describeUserCmdTaskInfoPaginated(_ input: DescribeUserCmdTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UserCmdTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeUserCmdTaskInfo, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本任务详细信息
    @inlinable @discardableResult
    public func describeUserCmdTaskInfoPaginated(_ input: DescribeUserCmdTaskInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUserCmdTaskInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUserCmdTaskInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本任务详细信息
    @inlinable
    public func describeUserCmdTaskInfoPaginator(_ input: DescribeUserCmdTaskInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeUserCmdTaskInfoRequest, DescribeUserCmdTaskInfoResponse>.ResultSequence, responses: TCClient.Paginator<DescribeUserCmdTaskInfoRequest, DescribeUserCmdTaskInfoResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUserCmdTaskInfo, logger: logger, on: eventLoop)
    }
}
