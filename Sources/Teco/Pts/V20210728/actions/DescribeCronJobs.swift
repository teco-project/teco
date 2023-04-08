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

extension Pts {
    /// DescribeCronJobs请求参数结构体
    public struct DescribeCronJobsRequest: TCPaginatedRequest {
        /// 项目ID数组
        public let projectIds: [String]

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量
        public let limit: Int64?

        /// 定时任务ID数组
        public let cronJobIds: [String]?

        /// 定时任务名字，模糊查询
        public let cronJobName: String?

        /// 定时任务状态数组
        public let cronJobStatus: [Int64]?

        /// 排序的列
        public let orderBy: String?

        /// 是否正序
        public let ascend: Bool?

        public init(projectIds: [String], offset: Int64? = nil, limit: Int64? = nil, cronJobIds: [String]? = nil, cronJobName: String? = nil, cronJobStatus: [Int64]? = nil, orderBy: String? = nil, ascend: Bool? = nil) {
            self.projectIds = projectIds
            self.offset = offset
            self.limit = limit
            self.cronJobIds = cronJobIds
            self.cronJobName = cronJobName
            self.cronJobStatus = cronJobStatus
            self.orderBy = orderBy
            self.ascend = ascend
        }

        enum CodingKeys: String, CodingKey {
            case projectIds = "ProjectIds"
            case offset = "Offset"
            case limit = "Limit"
            case cronJobIds = "CronJobIds"
            case cronJobName = "CronJobName"
            case cronJobStatus = "CronJobStatus"
            case orderBy = "OrderBy"
            case ascend = "Ascend"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCronJobsResponse) -> DescribeCronJobsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCronJobsRequest(projectIds: self.projectIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, cronJobIds: self.cronJobIds, cronJobName: self.cronJobName, cronJobStatus: self.cronJobStatus, orderBy: self.orderBy, ascend: self.ascend)
        }
    }

    /// DescribeCronJobs返回参数结构体
    public struct DescribeCronJobsResponse: TCPaginatedResponse {
        /// 定时任务总数
        public let total: Int64

        /// 定时任务信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cronJobSet: [CronJob]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case cronJobSet = "CronJobSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CronJob] {
            self.cronJobSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 列出定时任务
    ///
    /// 列出定时任务，非必填数组为空就默认全选
    @inlinable
    public func describeCronJobs(_ input: DescribeCronJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCronJobsResponse> {
        self.client.execute(action: "DescribeCronJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出定时任务
    ///
    /// 列出定时任务，非必填数组为空就默认全选
    @inlinable
    public func describeCronJobs(_ input: DescribeCronJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCronJobsResponse {
        try await self.client.execute(action: "DescribeCronJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出定时任务
    ///
    /// 列出定时任务，非必填数组为空就默认全选
    @inlinable
    public func describeCronJobs(projectIds: [String], offset: Int64? = nil, limit: Int64? = nil, cronJobIds: [String]? = nil, cronJobName: String? = nil, cronJobStatus: [Int64]? = nil, orderBy: String? = nil, ascend: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCronJobsResponse> {
        self.describeCronJobs(.init(projectIds: projectIds, offset: offset, limit: limit, cronJobIds: cronJobIds, cronJobName: cronJobName, cronJobStatus: cronJobStatus, orderBy: orderBy, ascend: ascend), region: region, logger: logger, on: eventLoop)
    }

    /// 列出定时任务
    ///
    /// 列出定时任务，非必填数组为空就默认全选
    @inlinable
    public func describeCronJobs(projectIds: [String], offset: Int64? = nil, limit: Int64? = nil, cronJobIds: [String]? = nil, cronJobName: String? = nil, cronJobStatus: [Int64]? = nil, orderBy: String? = nil, ascend: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCronJobsResponse {
        try await self.describeCronJobs(.init(projectIds: projectIds, offset: offset, limit: limit, cronJobIds: cronJobIds, cronJobName: cronJobName, cronJobStatus: cronJobStatus, orderBy: orderBy, ascend: ascend), region: region, logger: logger, on: eventLoop)
    }

    /// 列出定时任务
    ///
    /// 列出定时任务，非必填数组为空就默认全选
    @inlinable
    public func describeCronJobsPaginated(_ input: DescribeCronJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CronJob])> {
        self.client.paginate(input: input, region: region, command: self.describeCronJobs, logger: logger, on: eventLoop)
    }

    /// 列出定时任务
    ///
    /// 列出定时任务，非必填数组为空就默认全选
    @inlinable @discardableResult
    public func describeCronJobsPaginated(_ input: DescribeCronJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCronJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCronJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 列出定时任务
    ///
    /// 列出定时任务，非必填数组为空就默认全选
    ///
    /// - Returns: `AsyncSequence`s of `CronJob` and `DescribeCronJobsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCronJobsPaginator(_ input: DescribeCronJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCronJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCronJobs, logger: logger, on: eventLoop)
    }
}
