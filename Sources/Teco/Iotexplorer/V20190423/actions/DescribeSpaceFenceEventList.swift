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

extension Iotexplorer {
    /// DescribeSpaceFenceEventList请求参数结构体
    public struct DescribeSpaceFenceEventListRequest: TCPaginatedRequest {
        /// 位置空间Id
        public let spaceId: String

        /// 围栏告警信息的查询起始时间，Unix时间，单位为毫秒
        public let startTime: Int64

        /// 围栏告警信息的查询结束时间，Unix时间，单位为毫秒
        public let endTime: Int64

        /// 翻页偏移量，0起始
        public let offset: Int64?

        /// 最大返回结果数
        public let limit: Int64?

        public init(spaceId: String, startTime: Int64, endTime: Int64, offset: Int64? = nil, limit: Int64? = nil) {
            self.spaceId = spaceId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case spaceId = "SpaceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSpaceFenceEventListResponse) -> DescribeSpaceFenceEventListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(spaceId: self.spaceId, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeSpaceFenceEventList返回参数结构体
    public struct DescribeSpaceFenceEventListResponse: TCPaginatedResponse {
        /// 围栏告警事件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [FenceEventItem]?

        /// 围栏告警事件总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``FenceEventItem`` list from the paginated response.
        public func getItems() -> [FenceEventItem] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable
    public func describeSpaceFenceEventList(_ input: DescribeSpaceFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpaceFenceEventListResponse> {
        self.client.execute(action: "DescribeSpaceFenceEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable
    public func describeSpaceFenceEventList(_ input: DescribeSpaceFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpaceFenceEventListResponse {
        try await self.client.execute(action: "DescribeSpaceFenceEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable
    public func describeSpaceFenceEventList(spaceId: String, startTime: Int64, endTime: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpaceFenceEventListResponse> {
        self.describeSpaceFenceEventList(.init(spaceId: spaceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable
    public func describeSpaceFenceEventList(spaceId: String, startTime: Int64, endTime: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpaceFenceEventListResponse {
        try await self.describeSpaceFenceEventList(.init(spaceId: spaceId, startTime: startTime, endTime: endTime, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable
    public func describeSpaceFenceEventListPaginated(_ input: DescribeSpaceFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [FenceEventItem])> {
        self.client.paginate(input: input, region: region, command: self.describeSpaceFenceEventList, logger: logger, on: eventLoop)
    }

    /// 获取位置空间中围栏告警事件列表
    @inlinable @discardableResult
    public func describeSpaceFenceEventListPaginated(_ input: DescribeSpaceFenceEventListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSpaceFenceEventListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSpaceFenceEventList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取位置空间中围栏告警事件列表
    ///
    /// - Returns: `AsyncSequence`s of ``FenceEventItem`` and ``DescribeSpaceFenceEventListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSpaceFenceEventListPaginator(_ input: DescribeSpaceFenceEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSpaceFenceEventListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSpaceFenceEventList, logger: logger, on: eventLoop)
    }
}
