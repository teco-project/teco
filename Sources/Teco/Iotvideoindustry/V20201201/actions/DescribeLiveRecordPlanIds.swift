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

import TecoCore
import TecoPaginationHelpers

extension Iotvideoindustry {
    /// DescribeLiveRecordPlanIds请求参数结构体
    public struct DescribeLiveRecordPlanIdsRequest: TCPaginatedRequest {
        /// 时间模板ID
        public let templateId: String?

        /// 分页偏移量
        public let offset: Int64?

        /// 分页大小
        public let limit: Int64?

        public init(templateId: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.templateId = templateId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeLiveRecordPlanIdsResponse) -> DescribeLiveRecordPlanIdsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLiveRecordPlanIdsRequest(templateId: self.templateId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeLiveRecordPlanIds返回参数结构体
    public struct DescribeLiveRecordPlanIdsResponse: TCPaginatedResponse {
        /// 总个数
        public let totalCount: Int64

        /// 计划数组
        public let plans: [LiveRecordPlanItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case plans = "Plans"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LiveRecordPlanItem] {
            self.plans
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取直播录制计划列表
    @inlinable
    public func describeLiveRecordPlanIds(_ input: DescribeLiveRecordPlanIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveRecordPlanIdsResponse> {
        self.client.execute(action: "DescribeLiveRecordPlanIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取直播录制计划列表
    @inlinable
    public func describeLiveRecordPlanIds(_ input: DescribeLiveRecordPlanIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveRecordPlanIdsResponse {
        try await self.client.execute(action: "DescribeLiveRecordPlanIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取直播录制计划列表
    @inlinable
    public func describeLiveRecordPlanIds(templateId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveRecordPlanIdsResponse> {
        self.describeLiveRecordPlanIds(.init(templateId: templateId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取直播录制计划列表
    @inlinable
    public func describeLiveRecordPlanIds(templateId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveRecordPlanIdsResponse {
        try await self.describeLiveRecordPlanIds(.init(templateId: templateId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取直播录制计划列表
    @inlinable
    public func describeLiveRecordPlanIdsPaginated(_ input: DescribeLiveRecordPlanIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LiveRecordPlanItem])> {
        self.client.paginate(input: input, region: region, command: self.describeLiveRecordPlanIds, logger: logger, on: eventLoop)
    }

    /// 获取直播录制计划列表
    @inlinable @discardableResult
    public func describeLiveRecordPlanIdsPaginated(_ input: DescribeLiveRecordPlanIdsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLiveRecordPlanIdsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLiveRecordPlanIds, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取直播录制计划列表
    ///
    /// - Returns: `AsyncSequence`s of `LiveRecordPlanItem` and `DescribeLiveRecordPlanIdsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeLiveRecordPlanIdsPaginator(_ input: DescribeLiveRecordPlanIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLiveRecordPlanIdsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLiveRecordPlanIds, logger: logger, on: eventLoop)
    }
}
