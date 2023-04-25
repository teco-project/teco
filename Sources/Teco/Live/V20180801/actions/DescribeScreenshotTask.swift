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

extension Live {
    /// DescribeScreenshotTask请求参数结构体
    public struct DescribeScreenshotTaskRequest: TCPaginatedRequest {
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
        public func makeNextRequest(with response: DescribeScreenshotTaskResponse) -> DescribeScreenshotTaskRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeScreenshotTaskRequest(startTime: self.startTime, endTime: self.endTime, streamName: self.streamName, domainName: self.domainName, appName: self.appName, scrollToken: response.scrollToken)
        }
    }

    /// DescribeScreenshotTask返回参数结构体
    public struct DescribeScreenshotTaskResponse: TCPaginatedResponse {
        /// 翻页标识，当请求未返回所有数据，该字段表示下一条记录的 Token。当该字段为空，说明已无更多数据。
        public let scrollToken: String

        /// 截图任务列表。当该字段为空，说明已返回所有数据。
        public let taskList: [ScreenshotTask]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scrollToken = "ScrollToken"
            case taskList = "TaskList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ScreenshotTask] {
            self.taskList
        }
    }

    /// 查询截图任务列表
    ///
    /// 查询指定时间段范围内启动和结束的截图任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateScreenshotTask接口创建的截图任务。
    /// 2. 不能查询被 DeleteScreenshotTask接口删除以及已过期（平台侧保留3个月）的截图任务。
    @inlinable
    public func describeScreenshotTask(_ input: DescribeScreenshotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScreenshotTaskResponse> {
        self.client.execute(action: "DescribeScreenshotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询截图任务列表
    ///
    /// 查询指定时间段范围内启动和结束的截图任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateScreenshotTask接口创建的截图任务。
    /// 2. 不能查询被 DeleteScreenshotTask接口删除以及已过期（平台侧保留3个月）的截图任务。
    @inlinable
    public func describeScreenshotTask(_ input: DescribeScreenshotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScreenshotTaskResponse {
        try await self.client.execute(action: "DescribeScreenshotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询截图任务列表
    ///
    /// 查询指定时间段范围内启动和结束的截图任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateScreenshotTask接口创建的截图任务。
    /// 2. 不能查询被 DeleteScreenshotTask接口删除以及已过期（平台侧保留3个月）的截图任务。
    @inlinable
    public func describeScreenshotTask(startTime: UInt64, endTime: UInt64, streamName: String? = nil, domainName: String? = nil, appName: String? = nil, scrollToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScreenshotTaskResponse> {
        self.describeScreenshotTask(.init(startTime: startTime, endTime: endTime, streamName: streamName, domainName: domainName, appName: appName, scrollToken: scrollToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询截图任务列表
    ///
    /// 查询指定时间段范围内启动和结束的截图任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateScreenshotTask接口创建的截图任务。
    /// 2. 不能查询被 DeleteScreenshotTask接口删除以及已过期（平台侧保留3个月）的截图任务。
    @inlinable
    public func describeScreenshotTask(startTime: UInt64, endTime: UInt64, streamName: String? = nil, domainName: String? = nil, appName: String? = nil, scrollToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScreenshotTaskResponse {
        try await self.describeScreenshotTask(.init(startTime: startTime, endTime: endTime, streamName: streamName, domainName: domainName, appName: appName, scrollToken: scrollToken), region: region, logger: logger, on: eventLoop)
    }

    /// 查询截图任务列表
    ///
    /// 查询指定时间段范围内启动和结束的截图任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateScreenshotTask接口创建的截图任务。
    /// 2. 不能查询被 DeleteScreenshotTask接口删除以及已过期（平台侧保留3个月）的截图任务。
    @inlinable
    public func describeScreenshotTaskPaginated(_ input: DescribeScreenshotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ScreenshotTask])> {
        self.client.paginate(input: input, region: region, command: self.describeScreenshotTask, logger: logger, on: eventLoop)
    }

    /// 查询截图任务列表
    ///
    /// 查询指定时间段范围内启动和结束的截图任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateScreenshotTask接口创建的截图任务。
    /// 2. 不能查询被 DeleteScreenshotTask接口删除以及已过期（平台侧保留3个月）的截图任务。
    @inlinable @discardableResult
    public func describeScreenshotTaskPaginated(_ input: DescribeScreenshotTaskRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScreenshotTaskResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScreenshotTask, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询截图任务列表
    ///
    /// 查询指定时间段范围内启动和结束的截图任务列表。
    /// - 使用前提
    /// 1. 仅用于查询由 CreateScreenshotTask接口创建的截图任务。
    /// 2. 不能查询被 DeleteScreenshotTask接口删除以及已过期（平台侧保留3个月）的截图任务。
    ///
    /// - Returns: `AsyncSequence`s of `ScreenshotTask` and `DescribeScreenshotTaskResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScreenshotTaskPaginator(_ input: DescribeScreenshotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScreenshotTaskRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScreenshotTask, logger: logger, on: eventLoop)
    }
}
