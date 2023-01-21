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

extension Tcss {
    /// DescribeRiskSyscallEvents请求参数结构体
    public struct DescribeRiskSyscallEventsRequest: TCRequestModel {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        public let filters: [RunTimeFilters]?

        /// 升序降序,asc desc
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }
    }

    /// DescribeRiskSyscallEvents返回参数结构体
    public struct DescribeRiskSyscallEventsResponse: TCResponseModel {
        /// 事件总数量
        public let totalCount: UInt64

        /// 高危系统调用数组
        public let eventSet: [RiskSyscallEventInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case eventSet = "EventSet"
            case requestId = "RequestId"
        }
    }

    /// 运行时高危系统调用列表
    ///
    /// 查询运行时运行时高危系统调用列表信息
    @inlinable
    public func describeRiskSyscallEvents(_ input: DescribeRiskSyscallEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskSyscallEventsResponse> {
        self.client.execute(action: "DescribeRiskSyscallEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用列表
    ///
    /// 查询运行时运行时高危系统调用列表信息
    @inlinable
    public func describeRiskSyscallEvents(_ input: DescribeRiskSyscallEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskSyscallEventsResponse {
        try await self.client.execute(action: "DescribeRiskSyscallEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时高危系统调用列表
    ///
    /// 查询运行时运行时高危系统调用列表信息
    @inlinable
    public func describeRiskSyscallEvents(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskSyscallEventsResponse> {
        self.describeRiskSyscallEvents(DescribeRiskSyscallEventsRequest(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用列表
    ///
    /// 查询运行时运行时高危系统调用列表信息
    @inlinable
    public func describeRiskSyscallEvents(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskSyscallEventsResponse {
        try await self.describeRiskSyscallEvents(DescribeRiskSyscallEventsRequest(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
