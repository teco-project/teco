//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Essbasic {
    /// DescribeUsage请求参数结构体
    public struct DescribeUsageRequest: TCRequestModel {
        /// 应用信息，此接口Agent.AppId必填
        public let agent: Agent

        /// 开始时间，例如：2021-03-21
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var startDate: Date

        /// 结束时间，例如：2021-06-21；
        /// 开始时间到结束时间的区间长度小于等于90天。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCDateEncoding public var endDate: Date

        /// 是否汇总数据，默认不汇总。
        /// 不汇总：返回在统计区间内渠道下所有企业的每日明细，即每个企业N条数据，N为统计天数；
        /// 汇总：返回在统计区间内渠道下所有企业的汇总后数据，即每个企业一条数据；
        public let needAggregate: Bool?

        /// 单次返回的最多条目数量。默认为1000，且不能超过1000。
        public let limit: UInt64?

        /// 偏移量，默认是0。
        public let offset: UInt64?

        /// 操作者的信息
        public let `operator`: UserInfo?

        public init(agent: Agent, startDate: Date, endDate: Date, needAggregate: Bool? = nil, limit: UInt64? = nil, offset: UInt64? = nil, operator: UserInfo? = nil) {
            self.agent = agent
            self.startDate = startDate
            self.endDate = endDate
            self.needAggregate = needAggregate
            self.limit = limit
            self.offset = offset
            self.`operator` = `operator`
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
    }

    /// DescribeUsage返回参数结构体
    public struct DescribeUsageResponse: TCResponseModel {
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
    }

    /// 渠道用量查询
    ///
    /// 此接口（DescribeUsage）用于获取渠道所有合作企业流量消耗情况。
    ///  注: 此接口每日限频2次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable
    public func describeUsage(_ input: DescribeUsageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUsageResponse > {
        self.client.execute(action: "DescribeUsage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 渠道用量查询
    ///
    /// 此接口（DescribeUsage）用于获取渠道所有合作企业流量消耗情况。
    ///  注: 此接口每日限频2次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable
    public func describeUsage(_ input: DescribeUsageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsageResponse {
        try await self.client.execute(action: "DescribeUsage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 渠道用量查询
    ///
    /// 此接口（DescribeUsage）用于获取渠道所有合作企业流量消耗情况。
    ///  注: 此接口每日限频2次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable
    public func describeUsage(agent: Agent, startDate: Date, endDate: Date, needAggregate: Bool? = nil, limit: UInt64? = nil, offset: UInt64? = nil, operator: UserInfo? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUsageResponse > {
        self.describeUsage(DescribeUsageRequest(agent: agent, startDate: startDate, endDate: endDate, needAggregate: needAggregate, limit: limit, offset: offset, operator: `operator`), logger: logger, on: eventLoop)
    }

    /// 渠道用量查询
    ///
    /// 此接口（DescribeUsage）用于获取渠道所有合作企业流量消耗情况。
    ///  注: 此接口每日限频2次，若要扩大限制次数,请提前与客服经理或邮件至e-contract@tencent.com进行联系。
    @inlinable
    public func describeUsage(agent: Agent, startDate: Date, endDate: Date, needAggregate: Bool? = nil, limit: UInt64? = nil, offset: UInt64? = nil, operator: UserInfo? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsageResponse {
        try await self.describeUsage(DescribeUsageRequest(agent: agent, startDate: startDate, endDate: endDate, needAggregate: needAggregate, limit: limit, offset: offset, operator: `operator`), logger: logger, on: eventLoop)
    }
}
