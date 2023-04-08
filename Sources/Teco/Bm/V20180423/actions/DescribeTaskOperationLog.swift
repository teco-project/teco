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

extension Bm {
    /// DescribeTaskOperationLog请求参数结构体
    public struct DescribeTaskOperationLogRequest: TCRequestModel {
        /// 维修任务ID
        public let taskId: String

        /// 排序字段，目前支持：OperationTime
        public let orderField: String?

        /// 排序方式 0:递增(默认) 1:递减
        public let order: UInt64?

        public init(taskId: String, orderField: String? = nil, order: UInt64? = nil) {
            self.taskId = taskId
            self.orderField = orderField
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case orderField = "OrderField"
            case order = "Order"
        }
    }

    /// DescribeTaskOperationLog返回参数结构体
    public struct DescribeTaskOperationLogResponse: TCResponseModel {
        /// 操作日志
        public let taskOperationLogSet: [TaskOperationLog]

        /// 日志条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskOperationLogSet = "TaskOperationLogSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 维修任务操作日志获取
    ///
    /// 获取维修任务操作日志
    @inlinable
    public func describeTaskOperationLog(_ input: DescribeTaskOperationLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskOperationLogResponse> {
        self.client.execute(action: "DescribeTaskOperationLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 维修任务操作日志获取
    ///
    /// 获取维修任务操作日志
    @inlinable
    public func describeTaskOperationLog(_ input: DescribeTaskOperationLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskOperationLogResponse {
        try await self.client.execute(action: "DescribeTaskOperationLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 维修任务操作日志获取
    ///
    /// 获取维修任务操作日志
    @inlinable
    public func describeTaskOperationLog(taskId: String, orderField: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskOperationLogResponse> {
        self.describeTaskOperationLog(.init(taskId: taskId, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 维修任务操作日志获取
    ///
    /// 获取维修任务操作日志
    @inlinable
    public func describeTaskOperationLog(taskId: String, orderField: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskOperationLogResponse {
        try await self.describeTaskOperationLog(.init(taskId: taskId, orderField: orderField, order: order), region: region, logger: logger, on: eventLoop)
    }
}
