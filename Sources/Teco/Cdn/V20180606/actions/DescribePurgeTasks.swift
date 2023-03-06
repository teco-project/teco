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
    /// DescribePurgeTasks请求参数结构体
    public struct DescribePurgeTasksRequest: TCPaginatedRequest {
        /// 指定刷新类型查询
        /// url：url 刷新记录
        /// path：目录刷新记录
        public let purgeType: String?

        /// 根据时间区间查询时，填充开始时间，如 2018-08-08 00:00:00
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date?

        /// 根据时间区间查询时，填充结束时间，如 2018-08-08 23:59:59
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 根据任务 ID 查询时，填充任务 ID
        /// 查询时任务 ID 与起始时间必须填充一项
        public let taskId: String?

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为 20
        public let limit: Int64?

        /// 支持域名过滤，或 http(s):// 开头完整 URL 过滤
        public let keyword: String?

        /// 指定任务状态查询
        /// fail：刷新失败
        /// done：刷新成功
        /// process：刷新中
        public let status: String?

        /// 指定刷新地域查询
        /// mainland：境内
        /// overseas：境外
        /// global：全球
        public let area: String?

        public init(purgeType: String? = nil, startTime: Date? = nil, endTime: Date? = nil, taskId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, keyword: String? = nil, status: String? = nil, area: String? = nil) {
            self.purgeType = purgeType
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.taskId = taskId
            self.offset = offset
            self.limit = limit
            self.keyword = keyword
            self.status = status
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case purgeType = "PurgeType"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case taskId = "TaskId"
            case offset = "Offset"
            case limit = "Limit"
            case keyword = "Keyword"
            case status = "Status"
            case area = "Area"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePurgeTasksResponse) -> DescribePurgeTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePurgeTasksRequest(purgeType: self.purgeType, startTime: self.startTime, endTime: self.endTime, taskId: self.taskId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, keyword: self.keyword, status: self.status, area: self.area)
        }
    }

    /// DescribePurgeTasks返回参数结构体
    public struct DescribePurgeTasksResponse: TCPaginatedResponse {
        /// 详细刷新记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let purgeLogs: [PurgeTask]?

        /// 任务总数，用于分页
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case purgeLogs = "PurgeLogs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PurgeTask] {
            self.purgeLogs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 PurgePathCache 与 PurgeUrlsCache 接口提交的任务均可通过此接口进行查询。
    @inlinable
    public func describePurgeTasks(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePurgeTasksResponse> {
        self.client.execute(action: "DescribePurgeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 PurgePathCache 与 PurgeUrlsCache 接口提交的任务均可通过此接口进行查询。
    @inlinable
    public func describePurgeTasks(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeTasksResponse {
        try await self.client.execute(action: "DescribePurgeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 PurgePathCache 与 PurgeUrlsCache 接口提交的任务均可通过此接口进行查询。
    @inlinable
    public func describePurgeTasks(purgeType: String? = nil, startTime: Date? = nil, endTime: Date? = nil, taskId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, keyword: String? = nil, status: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePurgeTasksResponse> {
        let input = DescribePurgeTasksRequest(purgeType: purgeType, startTime: startTime, endTime: endTime, taskId: taskId, offset: offset, limit: limit, keyword: keyword, status: status, area: area)
        return self.client.execute(action: "DescribePurgeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 PurgePathCache 与 PurgeUrlsCache 接口提交的任务均可通过此接口进行查询。
    @inlinable
    public func describePurgeTasks(purgeType: String? = nil, startTime: Date? = nil, endTime: Date? = nil, taskId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, keyword: String? = nil, status: String? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeTasksResponse {
        let input = DescribePurgeTasksRequest(purgeType: purgeType, startTime: startTime, endTime: endTime, taskId: taskId, offset: offset, limit: limit, keyword: keyword, status: status, area: area)
        return try await self.client.execute(action: "DescribePurgeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 PurgePathCache 与 PurgeUrlsCache 接口提交的任务均可通过此接口进行查询。
    @inlinable
    public func describePurgeTasksPaginated(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PurgeTask])> {
        self.client.paginate(input: input, region: region, command: self.describePurgeTasks, logger: logger, on: eventLoop)
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 PurgePathCache 与 PurgeUrlsCache 接口提交的任务均可通过此接口进行查询。
    @inlinable @discardableResult
    public func describePurgeTasksPaginated(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePurgeTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePurgeTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 PurgePathCache 与 PurgeUrlsCache 接口提交的任务均可通过此接口进行查询。
    @inlinable
    public func describePurgeTasksPaginator(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribePurgeTasksRequest, DescribePurgeTasksResponse>.ResultSequence, responses: TCClient.Paginator<DescribePurgeTasksRequest, DescribePurgeTasksResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePurgeTasks, logger: logger, on: eventLoop)
    }
}
