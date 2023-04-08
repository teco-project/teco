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

extension Cfw {
    /// DescribeNatAcRule请求参数结构体
    public struct DescribeNatAcRuleRequest: TCPaginatedRequest {
        /// 每页条数
        public let limit: UInt64

        /// 偏移值
        public let offset: UInt64

        /// 需要查询的索引，特定场景使用，可不填
        public let index: String?

        /// 过滤条件组合
        public let filters: [CommonFilter]?

        /// 检索的起始时间，可不传
        public let startTime: String?

        /// 检索的截止时间，可不传
        public let endTime: String?

        /// desc：降序；asc：升序。根据By字段的值进行排序，这里传参的话则By也必须有值
        public let order: String?

        /// 排序所用到的字段
        public let by: String?

        public init(limit: UInt64, offset: UInt64, index: String? = nil, filters: [CommonFilter]? = nil, startTime: String? = nil, endTime: String? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.index = index
            self.filters = filters
            self.startTime = startTime
            self.endTime = endTime
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case index = "Index"
            case filters = "Filters"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNatAcRuleResponse) -> DescribeNatAcRuleRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNatAcRuleRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), index: self.index, filters: self.filters, startTime: self.startTime, endTime: self.endTime, order: self.order, by: self.by)
        }
    }

    /// DescribeNatAcRule返回参数结构体
    public struct DescribeNatAcRuleResponse: TCPaginatedResponse {
        /// 总条数
        public let total: UInt64

        /// nat访问控制列表数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DescAcItem]?

        /// 未过滤的总条数
        public let allTotal: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case data = "Data"
            case allTotal = "AllTotal"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DescAcItem] {
            self.data ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询NAT访问控制列表
    @inlinable
    public func describeNatAcRule(_ input: DescribeNatAcRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatAcRuleResponse> {
        self.client.execute(action: "DescribeNatAcRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询NAT访问控制列表
    @inlinable
    public func describeNatAcRule(_ input: DescribeNatAcRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatAcRuleResponse {
        try await self.client.execute(action: "DescribeNatAcRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询NAT访问控制列表
    @inlinable
    public func describeNatAcRule(limit: UInt64, offset: UInt64, index: String? = nil, filters: [CommonFilter]? = nil, startTime: String? = nil, endTime: String? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatAcRuleResponse> {
        self.describeNatAcRule(.init(limit: limit, offset: offset, index: index, filters: filters, startTime: startTime, endTime: endTime, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询NAT访问控制列表
    @inlinable
    public func describeNatAcRule(limit: UInt64, offset: UInt64, index: String? = nil, filters: [CommonFilter]? = nil, startTime: String? = nil, endTime: String? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatAcRuleResponse {
        try await self.describeNatAcRule(.init(limit: limit, offset: offset, index: index, filters: filters, startTime: startTime, endTime: endTime, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询NAT访问控制列表
    @inlinable
    public func describeNatAcRulePaginated(_ input: DescribeNatAcRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DescAcItem])> {
        self.client.paginate(input: input, region: region, command: self.describeNatAcRule, logger: logger, on: eventLoop)
    }

    /// 查询NAT访问控制列表
    @inlinable @discardableResult
    public func describeNatAcRulePaginated(_ input: DescribeNatAcRuleRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNatAcRuleResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNatAcRule, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询NAT访问控制列表
    ///
    /// - Returns: `AsyncSequence`s of `DescAcItem` and `DescribeNatAcRuleResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNatAcRulePaginator(_ input: DescribeNatAcRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNatAcRuleRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNatAcRule, logger: logger, on: eventLoop)
    }
}
