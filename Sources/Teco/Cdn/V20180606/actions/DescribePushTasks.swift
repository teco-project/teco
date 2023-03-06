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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Cdn {
    /// DescribePushTasks请求参数结构体
    public struct DescribePushTasksRequest: TCPaginatedRequest {
        /// 开始时间，如2018-08-08 00:00:00。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date?

        /// 结束时间，如2018-08-08 23:59:59。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 指定任务 ID 查询
        /// TaskId 和起始时间必须指定一项
        public let taskId: String?

        /// 查询关键字，请输入域名或 http(s):// 开头完整 URL
        public let keyword: String?

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为 20
        public let limit: Int64?

        /// 指定地区查询预热纪录
        /// mainland：境内
        /// overseas：境外
        /// global：全球
        public let area: String?

        /// 指定任务状态查询
        /// fail：预热失败
        /// done：预热成功
        /// process：预热中
        /// invalid: 预热无效(源站返回4xx或5xx状态码)
        public let status: String?

        public init(startTime: Date? = nil, endTime: Date? = nil, taskId: String? = nil, keyword: String? = nil, offset: Int64? = nil, limit: Int64? = nil, area: String? = nil, status: String? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.taskId = taskId
            self.keyword = keyword
            self.offset = offset
            self.limit = limit
            self.area = area
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case taskId = "TaskId"
            case keyword = "Keyword"
            case offset = "Offset"
            case limit = "Limit"
            case area = "Area"
            case status = "Status"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePushTasksResponse) -> DescribePushTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePushTasksRequest(startTime: self.startTime, endTime: self.endTime, taskId: self.taskId, keyword: self.keyword, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, area: self.area, status: self.status)
        }
    }

    /// DescribePushTasks返回参数结构体
    public struct DescribePushTasksResponse: TCPaginatedResponse {
        /// 预热历史记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pushLogs: [PushTask]?

        /// 任务总数，用于分页
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pushLogs = "PushLogs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PushTask] {
            self.pushLogs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 预热历史查询
    ///
    /// DescribePushTasks  用于查询预热任务提交历史记录及执行进度。
    @inlinable
    public func describePushTasks(_ input: DescribePushTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePushTasksResponse> {
        self.client.execute(action: "DescribePushTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 预热历史查询
    ///
    /// DescribePushTasks  用于查询预热任务提交历史记录及执行进度。
    @inlinable
    public func describePushTasks(_ input: DescribePushTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePushTasksResponse {
        try await self.client.execute(action: "DescribePushTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 预热历史查询
    ///
    /// DescribePushTasks  用于查询预热任务提交历史记录及执行进度。
    @inlinable
    public func describePushTasks(startTime: Date? = nil, endTime: Date? = nil, taskId: String? = nil, keyword: String? = nil, offset: Int64? = nil, limit: Int64? = nil, area: String? = nil, status: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePushTasksResponse> {
        let input = DescribePushTasksRequest(startTime: startTime, endTime: endTime, taskId: taskId, keyword: keyword, offset: offset, limit: limit, area: area, status: status)
        return self.client.execute(action: "DescribePushTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 预热历史查询
    ///
    /// DescribePushTasks  用于查询预热任务提交历史记录及执行进度。
    @inlinable
    public func describePushTasks(startTime: Date? = nil, endTime: Date? = nil, taskId: String? = nil, keyword: String? = nil, offset: Int64? = nil, limit: Int64? = nil, area: String? = nil, status: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePushTasksResponse {
        let input = DescribePushTasksRequest(startTime: startTime, endTime: endTime, taskId: taskId, keyword: keyword, offset: offset, limit: limit, area: area, status: status)
        return try await self.client.execute(action: "DescribePushTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
