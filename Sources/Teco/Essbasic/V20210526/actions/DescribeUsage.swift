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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Essbasic {
    /// DescribeUsage请求参数结构体
    public struct DescribeUsageRequest: TCPaginatedRequest {
        /// 应用信息，此接口Agent.AppId必填
        public let agent: Agent

        /// 开始时间，例如：2021-03-21
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 结束时间，例如：2021-06-21；
        /// 开始时间到结束时间的区间长度小于等于90天。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        /// 是否汇总数据，默认不汇总。
        /// 不汇总：返回在统计区间内第三方平台下所有企业的每日明细，即每个企业N条数据，N为统计天数；
        /// 汇总：返回在统计区间内第三方平台下所有企业的汇总后数据，即每个企业一条数据；
        public let needAggregate: Bool?

        /// 单次返回的最多条目数量。默认为1000，且不能超过1000。
        public let limit: UInt64?

        /// 偏移量，默认是0。
        public let offset: UInt64?

        /// 暂未开放
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(agent: Agent, startDate: Date, endDate: Date, needAggregate: Bool? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.agent = agent
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.needAggregate = needAggregate
            self.limit = limit
            self.offset = offset
        }

        @available(*, deprecated, renamed: "init(agent:startDate:endDate:needAggregate:limit:offset:)", message: "'operator' is deprecated in 'DescribeUsageRequest'. Setting this parameter has no effect.")
        public init(agent: Agent, startDate: Date, endDate: Date, needAggregate: Bool? = nil, limit: UInt64? = nil, offset: UInt64? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.needAggregate = needAggregate
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case needAggregate = "NeedAggregate"
            case limit = "Limit"
            case offset = "Offset"
            case `operator` = "Operator"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUsageResponse) -> DescribeUsageRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(agent: self.agent, startDate: self.startDate, endDate: self.endDate, needAggregate: self.needAggregate, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeUsage返回参数结构体
    public struct DescribeUsageResponse: TCPaginatedResponse {
        /// 用量明细条数
        public let total: UInt64

        /// 用量明细
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let details: [UsageDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case details = "Details"
            case requestId = "RequestId"
        }

        /// Extract the returned ``UsageDetail`` list from the paginated response.
        public func getItems() -> [UsageDetail] {
            self.details ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 合同用量查询
    ///
    /// 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
    ///  注: 此接口每日限频50次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable
    public func describeUsage(_ input: DescribeUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsageResponse> {
        self.client.execute(action: "DescribeUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合同用量查询
    ///
    /// 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
    ///  注: 此接口每日限频50次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable
    public func describeUsage(_ input: DescribeUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsageResponse {
        try await self.client.execute(action: "DescribeUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合同用量查询
    ///
    /// 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
    ///  注: 此接口每日限频50次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable
    public func describeUsage(agent: Agent, startDate: Date, endDate: Date, needAggregate: Bool? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsageResponse> {
        self.describeUsage(.init(agent: agent, startDate: startDate, endDate: endDate, needAggregate: needAggregate, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 合同用量查询
    ///
    /// 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
    ///  注: 此接口每日限频50次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @available(*, deprecated, renamed: "describeUsage(agent:startDate:endDate:needAggregate:limit:offset:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func describeUsage(agent: Agent, startDate: Date, endDate: Date, needAggregate: Bool? = nil, limit: UInt64? = nil, offset: UInt64? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsageResponse> {
        self.describeUsage(.init(agent: agent, startDate: startDate, endDate: endDate, needAggregate: needAggregate, limit: limit, offset: offset, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 合同用量查询
    ///
    /// 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
    ///  注: 此接口每日限频50次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable
    public func describeUsage(agent: Agent, startDate: Date, endDate: Date, needAggregate: Bool? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsageResponse {
        try await self.describeUsage(.init(agent: agent, startDate: startDate, endDate: endDate, needAggregate: needAggregate, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 合同用量查询
    ///
    /// 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
    ///  注: 此接口每日限频50次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @available(*, deprecated, renamed: "describeUsage(agent:startDate:endDate:needAggregate:limit:offset:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func describeUsage(agent: Agent, startDate: Date, endDate: Date, needAggregate: Bool? = nil, limit: UInt64? = nil, offset: UInt64? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsageResponse {
        try await self.describeUsage(.init(agent: agent, startDate: startDate, endDate: endDate, needAggregate: needAggregate, limit: limit, offset: offset, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 合同用量查询
    ///
    /// 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
    ///  注: 此接口每日限频50次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable
    public func describeUsagePaginated(_ input: DescribeUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UsageDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeUsage, logger: logger, on: eventLoop)
    }

    /// 合同用量查询
    ///
    /// 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
    ///  注: 此接口每日限频50次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable @discardableResult
    public func describeUsagePaginated(_ input: DescribeUsageRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUsageResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUsage, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 合同用量查询
    ///
    /// 此接口（DescribeUsage）用于获取第三方平台所有合作企业流量消耗情况。
    ///  注: 此接口每日限频50次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    ///
    /// - Returns: `AsyncSequence`s of ``UsageDetail`` and ``DescribeUsageResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUsagePaginator(_ input: DescribeUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUsageRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUsage, logger: logger, on: eventLoop)
    }
}
