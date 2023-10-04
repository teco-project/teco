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

extension Ecdn {
    /// DescribePurgeTasks请求参数结构体
    public struct DescribePurgeTasksRequest: TCPaginatedRequest {
        /// 查询刷新类型。url：查询 url 刷新记录；path：查询目录刷新记录。
        public let purgeType: String?

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

        /// 提交时返回的任务 Id，查询时 TaskId 和起始时间必须指定一项。
        public let taskId: String?

        /// 分页查询偏移量，默认为0（从第0条开始）。
        public let offset: Int64?

        /// 分页查询限制数目，默认为20。
        public let limit: Int64?

        /// 查询关键字，请输入域名或 http(s):// 开头完整 URL。
        public let keyword: String?

        /// 查询指定任务状态，fail表示失败，done表示成功，process表示刷新中。
        public let status: String?

        public init(purgeType: String? = nil, startTime: Date? = nil, endTime: Date? = nil, taskId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, keyword: String? = nil, status: String? = nil) {
            self.purgeType = purgeType
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.taskId = taskId
            self.offset = offset
            self.limit = limit
            self.keyword = keyword
            self.status = status
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
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePurgeTasksResponse) -> DescribePurgeTasksRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(purgeType: self.purgeType, startTime: self.startTime, endTime: self.endTime, taskId: self.taskId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, keyword: self.keyword, status: self.status)
        }
    }

    /// DescribePurgeTasks返回参数结构体
    public struct DescribePurgeTasksResponse: TCPaginatedResponse {
        /// 刷新历史记录。
        public let purgeLogs: [PurgeTask]

        /// 任务总数，用于分页。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case purgeLogs = "PurgeLogs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PurgeTask`` list from the paginated response.
        public func getItems() -> [PurgeTask] {
            self.purgeLogs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询刷新任务提交历史记录及执行进度。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/37873)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describePurgeTasks(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePurgeTasksResponse> {
        self.client.execute(action: "DescribePurgeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询刷新任务提交历史记录及执行进度。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/37873)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describePurgeTasks(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeTasksResponse {
        try await self.client.execute(action: "DescribePurgeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询刷新任务提交历史记录及执行进度。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/37873)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describePurgeTasks(purgeType: String? = nil, startTime: Date? = nil, endTime: Date? = nil, taskId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, keyword: String? = nil, status: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePurgeTasksResponse> {
        self.describePurgeTasks(.init(purgeType: purgeType, startTime: startTime, endTime: endTime, taskId: taskId, offset: offset, limit: limit, keyword: keyword, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询刷新任务提交历史记录及执行进度。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/37873)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describePurgeTasks(purgeType: String? = nil, startTime: Date? = nil, endTime: Date? = nil, taskId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, keyword: String? = nil, status: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePurgeTasksResponse {
        try await self.describePurgeTasks(.init(purgeType: purgeType, startTime: startTime, endTime: endTime, taskId: taskId, offset: offset, limit: limit, keyword: keyword, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询刷新任务提交历史记录及执行进度。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/37873)，使用  CDN 相关API 进行操作。
    @inlinable
    public func describePurgeTasksPaginated(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PurgeTask])> {
        self.client.paginate(input: input, region: region, command: self.describePurgeTasks, logger: logger, on: eventLoop)
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询刷新任务提交历史记录及执行进度。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/37873)，使用  CDN 相关API 进行操作。
    @inlinable @discardableResult
    public func describePurgeTasksPaginated(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePurgeTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePurgeTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 刷新历史查询
    ///
    /// DescribePurgeTasks 用于查询刷新任务提交历史记录及执行进度。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/37873)，使用  CDN 相关API 进行操作。
    ///
    /// - Returns: `AsyncSequence`s of ``PurgeTask`` and ``DescribePurgeTasksResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePurgeTasksPaginator(_ input: DescribePurgeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePurgeTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePurgeTasks, logger: logger, on: eventLoop)
    }
}
