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

extension Dts {
    /// DescribeMigrateJobs请求参数结构体
    public struct DescribeMigrateJobsRequest: TCPaginatedRequest {
        /// 数据迁移任务ID
        public let jobId: String?

        /// 数据迁移任务名称
        public let jobName: String?

        /// 排序字段，可以取值为JobId、Status、JobName、MigrateType、RunMode、CreateTime
        public let order: String?

        /// 排序方式，升序为ASC，降序为DESC
        public let orderSeq: String?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回实例数量，默认20，有效区间[1,100]
        public let limit: UInt64?

        /// 标签过滤条件
        public let tagFilters: [TagFilter]?

        public init(jobId: String? = nil, jobName: String? = nil, order: String? = nil, orderSeq: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagFilters: [TagFilter]? = nil) {
            self.jobId = jobId
            self.jobName = jobName
            self.order = order
            self.orderSeq = orderSeq
            self.offset = offset
            self.limit = limit
            self.tagFilters = tagFilters
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobName = "JobName"
            case order = "Order"
            case orderSeq = "OrderSeq"
            case offset = "Offset"
            case limit = "Limit"
            case tagFilters = "TagFilters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMigrateJobsResponse) -> DescribeMigrateJobsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(jobId: self.jobId, jobName: self.jobName, order: self.order, orderSeq: self.orderSeq, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, tagFilters: self.tagFilters)
        }
    }

    /// DescribeMigrateJobs返回参数结构体
    public struct DescribeMigrateJobsResponse: TCPaginatedResponse {
        /// 任务数目
        public let totalCount: UInt64

        /// 任务详情数组
        public let jobList: [MigrateJobInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case jobList = "JobList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MigrateJobInfo`` list from the paginated response.
        public func getItems() -> [MigrateJobInfo] {
            self.jobList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询数据迁移任务
    ///
    /// 查询数据迁移任务.
    /// 如果是金融区链路, 请使用域名: https://dts.ap-shenzhen-fsi.tencentcloudapi.com
    @inlinable
    public func describeMigrateJobs(_ input: DescribeMigrateJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrateJobsResponse> {
        self.client.execute(action: "DescribeMigrateJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据迁移任务
    ///
    /// 查询数据迁移任务.
    /// 如果是金融区链路, 请使用域名: https://dts.ap-shenzhen-fsi.tencentcloudapi.com
    @inlinable
    public func describeMigrateJobs(_ input: DescribeMigrateJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrateJobsResponse {
        try await self.client.execute(action: "DescribeMigrateJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据迁移任务
    ///
    /// 查询数据迁移任务.
    /// 如果是金融区链路, 请使用域名: https://dts.ap-shenzhen-fsi.tencentcloudapi.com
    @inlinable
    public func describeMigrateJobs(jobId: String? = nil, jobName: String? = nil, order: String? = nil, orderSeq: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMigrateJobsResponse> {
        self.describeMigrateJobs(.init(jobId: jobId, jobName: jobName, order: order, orderSeq: orderSeq, offset: offset, limit: limit, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据迁移任务
    ///
    /// 查询数据迁移任务.
    /// 如果是金融区链路, 请使用域名: https://dts.ap-shenzhen-fsi.tencentcloudapi.com
    @inlinable
    public func describeMigrateJobs(jobId: String? = nil, jobName: String? = nil, order: String? = nil, orderSeq: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMigrateJobsResponse {
        try await self.describeMigrateJobs(.init(jobId: jobId, jobName: jobName, order: order, orderSeq: orderSeq, offset: offset, limit: limit, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据迁移任务
    ///
    /// 查询数据迁移任务.
    /// 如果是金融区链路, 请使用域名: https://dts.ap-shenzhen-fsi.tencentcloudapi.com
    @inlinable
    public func describeMigrateJobsPaginated(_ input: DescribeMigrateJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [MigrateJobInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeMigrateJobs, logger: logger, on: eventLoop)
    }

    /// 查询数据迁移任务
    ///
    /// 查询数据迁移任务.
    /// 如果是金融区链路, 请使用域名: https://dts.ap-shenzhen-fsi.tencentcloudapi.com
    @inlinable @discardableResult
    public func describeMigrateJobsPaginated(_ input: DescribeMigrateJobsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMigrateJobsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMigrateJobs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据迁移任务
    ///
    /// 查询数据迁移任务.
    /// 如果是金融区链路, 请使用域名: https://dts.ap-shenzhen-fsi.tencentcloudapi.com
    ///
    /// - Returns: `AsyncSequence`s of ``MigrateJobInfo`` and ``DescribeMigrateJobsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMigrateJobsPaginator(_ input: DescribeMigrateJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMigrateJobsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMigrateJobs, logger: logger, on: eventLoop)
    }
}
