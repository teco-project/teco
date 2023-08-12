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
import TecoPaginationHelpers

extension Live {
    /// DescribeRecordTask请求参数结构体
    public struct DescribeRecordTaskRequest: TCPaginatedRequest {
        /// 查询任务开始时间，Unix 时间戳。设置时间不早于当前时间之前90天的时间，且查询时间跨度不超过一周。
        public let startTime: UInt64

        /// 查询任务结束时间，Unix 时间戳。EndTime 必须大于 StartTime，设置时间不早于当前时间之前90天的时间，且查询时间跨度不超过一周。（注意：任务开始结束时间必须在查询时间范围内）。
        public let endTime: UInt64

        /// 流名称。
        public let streamName: String?

        /// 推流域名。
        public let domainName: String?

        /// 推流路径。
        public let appName: String?

        /// 翻页标识，分批拉取时使用：当单次请求无法拉取所有数据，接口将会返回 ScrollToken，下一次请求携带该 Token，将会从下一条记录开始获取。
        public let scrollToken: String?

        public init(startTime: UInt64, endTime: UInt64, streamName: String? = nil, domainName: String? = nil, appName: String? = nil, scrollToken: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.streamName = streamName
            self.domainName = domainName
            self.appName = appName
            self.scrollToken = scrollToken
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case streamName = "StreamName"
            case domainName = "DomainName"
            case appName = "AppName"
            case scrollToken = "ScrollToken"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRecordTaskResponse) -> DescribeRecordTaskRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRecordTaskRequest(startTime: self.startTime, endTime: self.endTime, streamName: self.streamName, domainName: self.domainName, appName: self.appName, scrollToken: response.scrollToken)
        }
    }

    /// DescribeRecordTask返回参数结构体
    public struct DescribeRecordTaskResponse: TCPaginatedResponse {
        /// 翻页标识，当请求未返回所有数据，该字段表示下一条记录的 Token。当该字段为空，说明已无更多数据。
        public let scrollToken: String

        /// 录制任务列表。当该字段为空，说明已返回所有数据。
        public let taskList: [RecordTask]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scrollToken = "ScrollToken"
            case taskList = "TaskList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RecordTask`` list from the paginated response.
        public func getItems() -> [RecordTask] {
            self.taskList
        }
    }

    /// 查询录制任务列表（新）
    ///
    /// 查询指定时间段范围内启动和结束的录制任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateRecordTask 接口创建的录制任务。
    /// 2. 不能查询被 DeleteRecordTask 接口删除以及已过期（平台侧保留3个月）的录制任务。
    @inlinable
    public func describeRecordTask(_ input: DescribeRecordTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordTaskResponse> {
        self.client.execute(action: "DescribeRecordTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询录制任务列表（新）
    ///
    /// 查询指定时间段范围内启动和结束的录制任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateRecordTask 接口创建的录制任务。
    /// 2. 不能查询被 DeleteRecordTask 接口删除以及已过期（平台侧保留3个月）的录制任务。
    @inlinable
    public func describeRecordTask(_ input: DescribeRecordTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordTaskResponse {
        try await self.client.execute(action: "DescribeRecordTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询录制任务列表（新）
    ///
    /// 查询指定时间段范围内启动和结束的录制任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateRecordTask 接口创建的录制任务。
    /// 2. 不能查询被 DeleteRecordTask 接口删除以及已过期（平台侧保留3个月）的录制任务。
    @inlinable
    public func describeRecordTask(startTime: UInt64, endTime: UInt64, streamName: String? = nil, domainName: String? = nil, appName: String? = nil, scrollToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordTaskResponse> {
        self.describeRecordTask(.init(startTime: startTime, endTime: endTime, streamName: streamName, domainName: domainName, appName: appName, scrollToken: scrollToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询录制任务列表（新）
    ///
    /// 查询指定时间段范围内启动和结束的录制任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateRecordTask 接口创建的录制任务。
    /// 2. 不能查询被 DeleteRecordTask 接口删除以及已过期（平台侧保留3个月）的录制任务。
    @inlinable
    public func describeRecordTask(startTime: UInt64, endTime: UInt64, streamName: String? = nil, domainName: String? = nil, appName: String? = nil, scrollToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordTaskResponse {
        try await self.describeRecordTask(.init(startTime: startTime, endTime: endTime, streamName: streamName, domainName: domainName, appName: appName, scrollToken: scrollToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询录制任务列表（新）
    ///
    /// 查询指定时间段范围内启动和结束的录制任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateRecordTask 接口创建的录制任务。
    /// 2. 不能查询被 DeleteRecordTask 接口删除以及已过期（平台侧保留3个月）的录制任务。
    @inlinable
    public func describeRecordTaskPaginated(_ input: DescribeRecordTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [RecordTask])> {
        self.client.paginate(input: input, region: region, command: self.describeRecordTask, logger: logger, on: eventLoop)
    }

    /// 查询录制任务列表（新）
    ///
    /// 查询指定时间段范围内启动和结束的录制任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateRecordTask 接口创建的录制任务。
    /// 2. 不能查询被 DeleteRecordTask 接口删除以及已过期（平台侧保留3个月）的录制任务。
    @inlinable @discardableResult
    public func describeRecordTaskPaginated(_ input: DescribeRecordTaskRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRecordTaskResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRecordTask, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询录制任务列表（新）
    ///
    /// 查询指定时间段范围内启动和结束的录制任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateRecordTask 接口创建的录制任务。
    /// 2. 不能查询被 DeleteRecordTask 接口删除以及已过期（平台侧保留3个月）的录制任务。
    ///
    /// - Returns: `AsyncSequence`s of `RecordTask` and `DescribeRecordTaskResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRecordTaskPaginator(_ input: DescribeRecordTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRecordTaskRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRecordTask, logger: logger, on: eventLoop)
    }
}
