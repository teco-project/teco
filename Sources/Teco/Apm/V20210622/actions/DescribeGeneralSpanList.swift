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

extension Apm {
    /// DescribeGeneralSpanList请求参数结构体
    public struct DescribeGeneralSpanListRequest: TCPaginatedRequest {
        /// 分页
        public let offset: Int64

        /// 列表项个数
        public let limit: Int64

        /// 排序
        public let orderBy: OrderBy?

        /// span查询开始时间戳（单位:秒）
        public let startTime: Int64?

        /// 实例名
        public let instanceId: String?

        /// 通用过滤参数
        public let filters: [Filter]?

        /// 业务自身服务名
        public let businessName: String?

        /// span查询结束时间戳（单位:秒）
        public let endTime: Int64?

        public init(offset: Int64, limit: Int64, orderBy: OrderBy? = nil, startTime: Int64? = nil, instanceId: String? = nil, filters: [Filter]? = nil, businessName: String? = nil, endTime: Int64? = nil) {
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.startTime = startTime
            self.instanceId = instanceId
            self.filters = filters
            self.businessName = businessName
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case startTime = "StartTime"
            case instanceId = "InstanceId"
            case filters = "Filters"
            case businessName = "BusinessName"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGeneralSpanListResponse) -> DescribeGeneralSpanListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy, startTime: self.startTime, instanceId: self.instanceId, filters: self.filters, businessName: self.businessName, endTime: self.endTime)
        }
    }

    /// DescribeGeneralSpanList返回参数结构体
    public struct DescribeGeneralSpanListResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: Int64

        /// Span分页列表
        public let spans: [Span]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case spans = "Spans"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Span`` list from the paginated response.
        public func getItems() -> [Span] {
            self.spans
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 通用查询调用链列表
    @inlinable
    public func describeGeneralSpanList(_ input: DescribeGeneralSpanListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGeneralSpanListResponse> {
        self.client.execute(action: "DescribeGeneralSpanList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通用查询调用链列表
    @inlinable
    public func describeGeneralSpanList(_ input: DescribeGeneralSpanListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGeneralSpanListResponse {
        try await self.client.execute(action: "DescribeGeneralSpanList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通用查询调用链列表
    @inlinable
    public func describeGeneralSpanList(offset: Int64, limit: Int64, orderBy: OrderBy? = nil, startTime: Int64? = nil, instanceId: String? = nil, filters: [Filter]? = nil, businessName: String? = nil, endTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGeneralSpanListResponse> {
        self.describeGeneralSpanList(.init(offset: offset, limit: limit, orderBy: orderBy, startTime: startTime, instanceId: instanceId, filters: filters, businessName: businessName, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 通用查询调用链列表
    @inlinable
    public func describeGeneralSpanList(offset: Int64, limit: Int64, orderBy: OrderBy? = nil, startTime: Int64? = nil, instanceId: String? = nil, filters: [Filter]? = nil, businessName: String? = nil, endTime: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGeneralSpanListResponse {
        try await self.describeGeneralSpanList(.init(offset: offset, limit: limit, orderBy: orderBy, startTime: startTime, instanceId: instanceId, filters: filters, businessName: businessName, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 通用查询调用链列表
    @inlinable
    public func describeGeneralSpanListPaginated(_ input: DescribeGeneralSpanListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Span])> {
        self.client.paginate(input: input, region: region, command: self.describeGeneralSpanList, logger: logger, on: eventLoop)
    }

    /// 通用查询调用链列表
    @inlinable @discardableResult
    public func describeGeneralSpanListPaginated(_ input: DescribeGeneralSpanListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGeneralSpanListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGeneralSpanList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 通用查询调用链列表
    ///
    /// - Returns: `AsyncSequence`s of ``Span`` and ``DescribeGeneralSpanListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGeneralSpanListPaginator(_ input: DescribeGeneralSpanListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGeneralSpanListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGeneralSpanList, logger: logger, on: eventLoop)
    }
}
