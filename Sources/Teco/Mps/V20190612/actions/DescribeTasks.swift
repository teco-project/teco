//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Mps {
    /// DescribeTasks请求参数结构体
    public struct DescribeTasksRequest: TCRequestModel {
        /// 过滤条件：任务状态，可选值：WAITING（等待中）、PROCESSING（处理中）、FINISH（已完成）。
        public let status: String

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        /// 翻页标识，分批拉取时使用：当单次请求无法拉取所有数据，接口将会返回 ScrollToken，下一次请求携带该 Token，将会从下一条记录开始获取。
        public let scrollToken: String?

        public init(status: String, limit: UInt64? = nil, scrollToken: String? = nil) {
            self.status = status
            self.limit = limit
            self.scrollToken = scrollToken
        }

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case limit = "Limit"
            case scrollToken = "ScrollToken"
        }
    }

    /// DescribeTasks返回参数结构体
    public struct DescribeTasksResponse: TCResponseModel {
        /// 任务概要列表。
        public let taskSet: [TaskSimpleInfo]

        /// 翻页标识，当请求未返回所有数据，该字段表示下一条记录的 ID。当该字段为空字符串，说明已无更多数据。
        public let scrollToken: String

        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskSet = "TaskSet"
            case scrollToken = "ScrollToken"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取任务列表
    ///
    /// * 该接口用于查询任务列表；
    /// * 当列表数据比较多时，单次接口调用无法拉取整个列表，可通过 ScrollToken 参数，分批拉取；
    /// * 只能查询到最近七天（168小时）内的任务。
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务列表
    ///
    /// * 该接口用于查询任务列表；
    /// * 当列表数据比较多时，单次接口调用无法拉取整个列表，可通过 ScrollToken 参数，分批拉取；
    /// * 只能查询到最近七天（168小时）内的任务。
    @inlinable
    public func describeTasks(_ input: DescribeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.client.execute(action: "DescribeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务列表
    ///
    /// * 该接口用于查询任务列表；
    /// * 当列表数据比较多时，单次接口调用无法拉取整个列表，可通过 ScrollToken 参数，分批拉取；
    /// * 只能查询到最近七天（168小时）内的任务。
    @inlinable
    public func describeTasks(status: String, limit: UInt64? = nil, scrollToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTasksResponse> {
        self.describeTasks(DescribeTasksRequest(status: status, limit: limit, scrollToken: scrollToken), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务列表
    ///
    /// * 该接口用于查询任务列表；
    /// * 当列表数据比较多时，单次接口调用无法拉取整个列表，可通过 ScrollToken 参数，分批拉取；
    /// * 只能查询到最近七天（168小时）内的任务。
    @inlinable
    public func describeTasks(status: String, limit: UInt64? = nil, scrollToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTasksResponse {
        try await self.describeTasks(DescribeTasksRequest(status: status, limit: limit, scrollToken: scrollToken), region: region, logger: logger, on: eventLoop)
    }
}
