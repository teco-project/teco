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

extension Iotvideoindustry {
    /// DescribeChannelsByLiveRecordPlan请求参数结构体
    public struct DescribeChannelsByLiveRecordPlanRequest: TCPaginatedRequest {
        /// 录制计划ID
        public let planId: String

        /// 分页偏移量
        public let offset: Int64?

        /// 分页大小
        public let limit: Int64?

        public init(planId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.planId = planId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case planId = "PlanId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeChannelsByLiveRecordPlanResponse) -> DescribeChannelsByLiveRecordPlanRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(planId: self.planId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeChannelsByLiveRecordPlan返回参数结构体
    public struct DescribeChannelsByLiveRecordPlanResponse: TCPaginatedResponse {
        /// 总个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 通道详情数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveChannels: [LiveChannelItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case liveChannels = "LiveChannels"
            case requestId = "RequestId"
        }

        /// Extract the returned ``LiveChannelItem`` list from the paginated response.
        public func getItems() -> [LiveChannelItem] {
            self.liveChannels ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 根据直播录制计划获取频道列表
    @inlinable
    public func describeChannelsByLiveRecordPlan(_ input: DescribeChannelsByLiveRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelsByLiveRecordPlanResponse> {
        self.client.execute(action: "DescribeChannelsByLiveRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据直播录制计划获取频道列表
    @inlinable
    public func describeChannelsByLiveRecordPlan(_ input: DescribeChannelsByLiveRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelsByLiveRecordPlanResponse {
        try await self.client.execute(action: "DescribeChannelsByLiveRecordPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据直播录制计划获取频道列表
    @inlinable
    public func describeChannelsByLiveRecordPlan(planId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelsByLiveRecordPlanResponse> {
        self.describeChannelsByLiveRecordPlan(.init(planId: planId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 根据直播录制计划获取频道列表
    @inlinable
    public func describeChannelsByLiveRecordPlan(planId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelsByLiveRecordPlanResponse {
        try await self.describeChannelsByLiveRecordPlan(.init(planId: planId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 根据直播录制计划获取频道列表
    @inlinable
    public func describeChannelsByLiveRecordPlanPaginated(_ input: DescribeChannelsByLiveRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LiveChannelItem])> {
        self.client.paginate(input: input, region: region, command: self.describeChannelsByLiveRecordPlan, logger: logger, on: eventLoop)
    }

    /// 根据直播录制计划获取频道列表
    @inlinable @discardableResult
    public func describeChannelsByLiveRecordPlanPaginated(_ input: DescribeChannelsByLiveRecordPlanRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeChannelsByLiveRecordPlanResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeChannelsByLiveRecordPlan, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 根据直播录制计划获取频道列表
    ///
    /// - Returns: `AsyncSequence`s of ``LiveChannelItem`` and ``DescribeChannelsByLiveRecordPlanResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeChannelsByLiveRecordPlanPaginator(_ input: DescribeChannelsByLiveRecordPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeChannelsByLiveRecordPlanRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeChannelsByLiveRecordPlan, logger: logger, on: eventLoop)
    }
}
