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

extension Dts {
    /// DescribeCompareTasks请求参数结构体
    public struct DescribeCompareTasksRequest: TCPaginatedRequest {
        /// 迁移任务 Id
        public let jobId: String

        /// 分页设置，表示每页显示多少条任务，默认为 20
        public let limit: UInt64?

        /// 分页偏移量
        public let offset: UInt64?

        /// 校验任务 ID
        public let compareTaskId: String?

        /// 任务状态过滤，可能的值：created - 创建完成；readyRun - 等待运行；running - 运行中；success - 成功；stopping - 结束中；failed - 失败；canceled - 已终止
        public let status: [String]?

        public init(jobId: String, limit: UInt64? = nil, offset: UInt64? = nil, compareTaskId: String? = nil, status: [String]? = nil) {
            self.jobId = jobId
            self.limit = limit
            self.offset = offset
            self.compareTaskId = compareTaskId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case limit = "Limit"
            case offset = "Offset"
            case compareTaskId = "CompareTaskId"
            case status = "Status"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCompareTasksResponse) -> DescribeCompareTasksRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCompareTasksRequest(jobId: self.jobId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), compareTaskId: self.compareTaskId, status: self.status)
        }
    }

    /// DescribeCompareTasks返回参数结构体
    public struct DescribeCompareTasksResponse: TCPaginatedResponse {
        /// 数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 一致性校验列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [CompareTaskItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CompareTaskItem`` list from the paginated response.
        public func getItems() -> [CompareTaskItem] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询一致性校验任务列表
    ///
    /// 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。
    @inlinable
    public func describeCompareTasks(_ input: DescribeCompareTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompareTasksResponse> {
        self.client.execute(action: "DescribeCompareTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询一致性校验任务列表
    ///
    /// 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。
    @inlinable
    public func describeCompareTasks(_ input: DescribeCompareTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompareTasksResponse {
        try await self.client.execute(action: "DescribeCompareTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询一致性校验任务列表
    ///
    /// 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。
    @inlinable
    public func describeCompareTasks(jobId: String, limit: UInt64? = nil, offset: UInt64? = nil, compareTaskId: String? = nil, status: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompareTasksResponse> {
        self.describeCompareTasks(.init(jobId: jobId, limit: limit, offset: offset, compareTaskId: compareTaskId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 查询一致性校验任务列表
    ///
    /// 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。
    @inlinable
    public func describeCompareTasks(jobId: String, limit: UInt64? = nil, offset: UInt64? = nil, compareTaskId: String? = nil, status: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompareTasksResponse {
        try await self.describeCompareTasks(.init(jobId: jobId, limit: limit, offset: offset, compareTaskId: compareTaskId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 查询一致性校验任务列表
    ///
    /// 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。
    @inlinable
    public func describeCompareTasksPaginated(_ input: DescribeCompareTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CompareTaskItem])> {
        self.client.paginate(input: input, region: region, command: self.describeCompareTasks, logger: logger, on: eventLoop)
    }

    /// 查询一致性校验任务列表
    ///
    /// 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。
    @inlinable @discardableResult
    public func describeCompareTasksPaginated(_ input: DescribeCompareTasksRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCompareTasksResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCompareTasks, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询一致性校验任务列表
    ///
    /// 查询一致性校验任务列表，调用该接口后可通过接口`DescribeCompareTasks` 查询一致性校验任务列表来获得启动后的状态。
    ///
    /// - Returns: `AsyncSequence`s of `CompareTaskItem` and `DescribeCompareTasksResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCompareTasksPaginator(_ input: DescribeCompareTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCompareTasksRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCompareTasks, logger: logger, on: eventLoop)
    }
}
