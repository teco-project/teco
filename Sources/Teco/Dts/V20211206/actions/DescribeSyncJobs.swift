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

extension Dts {
    /// DescribeSyncJobs请求参数结构体
    public struct DescribeSyncJobsRequest: TCPaginatedRequest {
        /// 同步任务id，如sync-werwfs23
        public let jobId: String?

        /// 同步任务名
        public let jobName: String?

        /// 排序字段，可以取值为CreateTime
        public let order: String?

        /// 排序方式，升序为ASC，降序为DESC，默认为CreateTime降序
        public let orderSeq: String?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回同步任务实例数量，默认20，有效区间[1,100]
        public let limit: UInt64?

        /// 状态集合，如Initialized,CheckPass,Running,ResumableErr,Stopped
        public let status: [String]?

        /// 运行模式，如Immediate:立即运行，Timed:定时运行
        public let runMode: String?

        /// 任务类型，如mysql2mysql：msyql同步到mysql
        public let jobType: String?

        /// 付费类型，PrePay：预付费，PostPay：后付费
        public let payMode: String?

        /// tag
        public let tagFilters: [TagFilter]?

        public init(jobId: String? = nil, jobName: String? = nil, order: String? = nil, orderSeq: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, status: [String]? = nil, runMode: String? = nil, jobType: String? = nil, payMode: String? = nil, tagFilters: [TagFilter]? = nil) {
            self.jobId = jobId
            self.jobName = jobName
            self.order = order
            self.orderSeq = orderSeq
            self.offset = offset
            self.limit = limit
            self.status = status
            self.runMode = runMode
            self.jobType = jobType
            self.payMode = payMode
            self.tagFilters = tagFilters
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobName = "JobName"
            case order = "Order"
            case orderSeq = "OrderSeq"
            case offset = "Offset"
            case limit = "Limit"
            case status = "Status"
            case runMode = "RunMode"
            case jobType = "JobType"
            case payMode = "PayMode"
            case tagFilters = "TagFilters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeSyncJobsResponse) -> DescribeSyncJobsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSyncJobsRequest(jobId: self.jobId, jobName: self.jobName, order: self.order, orderSeq: self.orderSeq, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, status: self.status, runMode: self.runMode, jobType: self.jobType, payMode: self.payMode, tagFilters: self.tagFilters)
        }
    }

    /// DescribeSyncJobs返回参数结构体
    public struct DescribeSyncJobsResponse: TCPaginatedResponse {
        /// 任务数目
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 任务详情数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobList: [SyncJobInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case jobList = "JobList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SyncJobInfo] {
            self.jobList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询同步任务信息
    @inlinable
    public func describeSyncJobs(_ input: DescribeSyncJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSyncJobsResponse> {
        self.client.execute(action: "DescribeSyncJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询同步任务信息
    @inlinable
    public func describeSyncJobs(_ input: DescribeSyncJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSyncJobsResponse {
        try await self.client.execute(action: "DescribeSyncJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询同步任务信息
    @inlinable
    public func describeSyncJobs(jobId: String? = nil, jobName: String? = nil, order: String? = nil, orderSeq: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, status: [String]? = nil, runMode: String? = nil, jobType: String? = nil, payMode: String? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSyncJobsResponse> {
        let input = DescribeSyncJobsRequest(jobId: jobId, jobName: jobName, order: order, orderSeq: orderSeq, offset: offset, limit: limit, status: status, runMode: runMode, jobType: jobType, payMode: payMode, tagFilters: tagFilters)
        return self.client.execute(action: "DescribeSyncJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询同步任务信息
    @inlinable
    public func describeSyncJobs(jobId: String? = nil, jobName: String? = nil, order: String? = nil, orderSeq: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, status: [String]? = nil, runMode: String? = nil, jobType: String? = nil, payMode: String? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSyncJobsResponse {
        let input = DescribeSyncJobsRequest(jobId: jobId, jobName: jobName, order: order, orderSeq: orderSeq, offset: offset, limit: limit, status: status, runMode: runMode, jobType: jobType, payMode: payMode, tagFilters: tagFilters)
        return try await self.client.execute(action: "DescribeSyncJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询同步任务信息
    @inlinable
    public func describeSyncJobsPaginated(_ input: DescribeSyncJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SyncJobInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSyncJobs, logger: logger, on: eventLoop)
    }

    /// 查询同步任务信息
    @inlinable @discardableResult
    public func describeSyncJobsPaginated(_ input: DescribeSyncJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSyncJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSyncJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询同步任务信息
    ///
    /// - Returns: `AsyncSequence`s of `SyncJobInfo` and `DescribeSyncJobsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSyncJobsPaginator(_ input: DescribeSyncJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSyncJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSyncJobs, logger: logger, on: eventLoop)
    }
}
