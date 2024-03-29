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

extension Cdb {
    /// DescribeRollbackTaskDetail请求参数结构体
    public struct DescribeRollbackTaskDetailRequest: TCPaginatedRequest {
        /// 实例 ID。与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872)。
        public let instanceId: String

        /// 异步任务 ID。
        public let asyncRequestId: String?

        /// 分页参数，每次请求返回的记录数。默认值为 20，最大值为 100。
        public let limit: Int64?

        /// 分页偏移量。默认为 0。
        public let offset: Int64?

        public init(instanceId: String, asyncRequestId: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.instanceId = instanceId
            self.asyncRequestId = asyncRequestId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case asyncRequestId = "AsyncRequestId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRollbackTaskDetailResponse) -> DescribeRollbackTaskDetailRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, asyncRequestId: self.asyncRequestId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeRollbackTaskDetail返回参数结构体
    public struct DescribeRollbackTaskDetailResponse: TCPaginatedResponse {
        /// 符合条件的记录总数。
        public let totalCount: Int64

        /// 回档任务详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [RollbackTask]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RollbackTask`` list from the paginated response.
        public func getItems() -> [RollbackTask] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询回档任务详情
    ///
    /// 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。
    @inlinable
    public func describeRollbackTaskDetail(_ input: DescribeRollbackTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRollbackTaskDetailResponse> {
        self.client.execute(action: "DescribeRollbackTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询回档任务详情
    ///
    /// 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。
    @inlinable
    public func describeRollbackTaskDetail(_ input: DescribeRollbackTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRollbackTaskDetailResponse {
        try await self.client.execute(action: "DescribeRollbackTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询回档任务详情
    ///
    /// 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。
    @inlinable
    public func describeRollbackTaskDetail(instanceId: String, asyncRequestId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRollbackTaskDetailResponse> {
        self.describeRollbackTaskDetail(.init(instanceId: instanceId, asyncRequestId: asyncRequestId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询回档任务详情
    ///
    /// 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。
    @inlinable
    public func describeRollbackTaskDetail(instanceId: String, asyncRequestId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRollbackTaskDetailResponse {
        try await self.describeRollbackTaskDetail(.init(instanceId: instanceId, asyncRequestId: asyncRequestId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询回档任务详情
    ///
    /// 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。
    @inlinable
    public func describeRollbackTaskDetailPaginated(_ input: DescribeRollbackTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [RollbackTask])> {
        self.client.paginate(input: input, region: region, command: self.describeRollbackTaskDetail, logger: logger, on: eventLoop)
    }

    /// 查询回档任务详情
    ///
    /// 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。
    @inlinable @discardableResult
    public func describeRollbackTaskDetailPaginated(_ input: DescribeRollbackTaskDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRollbackTaskDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRollbackTaskDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询回档任务详情
    ///
    /// 本接口(DescribeRollbackTaskDetail)用于查询云数据库实例回档任务详情。
    ///
    /// - Returns: `AsyncSequence`s of ``RollbackTask`` and ``DescribeRollbackTaskDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRollbackTaskDetailPaginator(_ input: DescribeRollbackTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRollbackTaskDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRollbackTaskDetail, logger: logger, on: eventLoop)
    }
}
