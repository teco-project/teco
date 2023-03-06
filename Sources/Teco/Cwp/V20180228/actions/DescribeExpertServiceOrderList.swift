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

extension Cwp {
    /// DescribeExpertServiceOrderList请求参数结构体
    public struct DescribeExpertServiceOrderListRequest: TCPaginatedRequest {
        /// <li>InquireType- String - 是否必填：否 - 订单类型过滤，</li>
        public let filters: [Filters]?

        /// 分页条数 最大100条
        public let limit: UInt64?

        /// 分页步长
        public let offset: UInt64?

        public init(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeExpertServiceOrderListResponse) -> DescribeExpertServiceOrderListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeExpertServiceOrderListRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeExpertServiceOrderList返回参数结构体
    public struct DescribeExpertServiceOrderListResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: UInt64

        /// 订单列表
        public let list: [ExpertServiceOrderInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ExpertServiceOrderInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 专家服务订单列表
    ///
    /// 专家服务-专家服务订单列表
    @inlinable
    public func describeExpertServiceOrderList(_ input: DescribeExpertServiceOrderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExpertServiceOrderListResponse> {
        self.client.execute(action: "DescribeExpertServiceOrderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 专家服务订单列表
    ///
    /// 专家服务-专家服务订单列表
    @inlinable
    public func describeExpertServiceOrderList(_ input: DescribeExpertServiceOrderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExpertServiceOrderListResponse {
        try await self.client.execute(action: "DescribeExpertServiceOrderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 专家服务订单列表
    ///
    /// 专家服务-专家服务订单列表
    @inlinable
    public func describeExpertServiceOrderList(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExpertServiceOrderListResponse> {
        let input = DescribeExpertServiceOrderListRequest(filters: filters, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeExpertServiceOrderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 专家服务订单列表
    ///
    /// 专家服务-专家服务订单列表
    @inlinable
    public func describeExpertServiceOrderList(filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExpertServiceOrderListResponse {
        let input = DescribeExpertServiceOrderListRequest(filters: filters, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeExpertServiceOrderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 专家服务订单列表
    ///
    /// 专家服务-专家服务订单列表
    @inlinable
    public func describeExpertServiceOrderListPaginated(_ input: DescribeExpertServiceOrderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ExpertServiceOrderInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeExpertServiceOrderList, logger: logger, on: eventLoop)
    }

    /// 专家服务订单列表
    ///
    /// 专家服务-专家服务订单列表
    @inlinable
    public func describeExpertServiceOrderListPaginated(_ input: DescribeExpertServiceOrderListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeExpertServiceOrderListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeExpertServiceOrderList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 专家服务订单列表
    ///
    /// 专家服务-专家服务订单列表
    @inlinable
    public func describeExpertServiceOrderListPaginator(_ input: DescribeExpertServiceOrderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeExpertServiceOrderListRequest, DescribeExpertServiceOrderListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeExpertServiceOrderListRequest, DescribeExpertServiceOrderListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeExpertServiceOrderListRequest, DescribeExpertServiceOrderListResponse>.ResultSequence(input: input, region: region, command: self.describeExpertServiceOrderList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeExpertServiceOrderListRequest, DescribeExpertServiceOrderListResponse>.ResponseSequence(input: input, region: region, command: self.describeExpertServiceOrderList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
