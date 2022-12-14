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

extension Antiddos {
    /// DescribeOverviewDDoSTrend请求参数结构体
    public struct DescribeOverviewDDoSTrendRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp-multip表示高防包；basic表示DDoS基础防护）
        public let business: String

        /// 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        public let period: Int64

        /// 统计开始时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date

        /// 统计结束时间
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date

        /// 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        public let metricName: String

        /// 资源实例的IP列表
        public let ipList: [String]?

        /// 资源实例ID
        public let id: String?

        public init(business: String, period: Int64, startTime: Date, endTime: Date, metricName: String, ipList: [String]? = nil, id: String? = nil) {
            self.business = business
            self.period = period
            self.startTime = startTime
            self.endTime = endTime
            self.metricName = metricName
            self.ipList = ipList
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case ipList = "IpList"
            case id = "Id"
        }
    }

    /// DescribeOverviewDDoSTrend返回参数结构体
    public struct DescribeOverviewDDoSTrendResponse: TCResponseModel {
        /// 值个数
        public let count: UInt64

        /// 值数组，攻击流量带宽单位为Mbps，包速率单位为pps
        public let data: [UInt64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取防护概览DDoS攻击流量带宽和攻击包速率数据
    @inlinable
    public func describeOverviewDDoSTrend(_ input: DescribeOverviewDDoSTrendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOverviewDDoSTrendResponse > {
        self.client.execute(action: "DescribeOverviewDDoSTrend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取防护概览DDoS攻击流量带宽和攻击包速率数据
    @inlinable
    public func describeOverviewDDoSTrend(_ input: DescribeOverviewDDoSTrendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewDDoSTrendResponse {
        try await self.client.execute(action: "DescribeOverviewDDoSTrend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取防护概览DDoS攻击流量带宽和攻击包速率数据
    @inlinable
    public func describeOverviewDDoSTrend(business: String, period: Int64, startTime: Date, endTime: Date, metricName: String, ipList: [String]? = nil, id: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOverviewDDoSTrendResponse > {
        self.describeOverviewDDoSTrend(DescribeOverviewDDoSTrendRequest(business: business, period: period, startTime: startTime, endTime: endTime, metricName: metricName, ipList: ipList, id: id), logger: logger, on: eventLoop)
    }

    /// 获取防护概览DDoS攻击流量带宽和攻击包速率数据
    @inlinable
    public func describeOverviewDDoSTrend(business: String, period: Int64, startTime: Date, endTime: Date, metricName: String, ipList: [String]? = nil, id: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewDDoSTrendResponse {
        try await self.describeOverviewDDoSTrend(DescribeOverviewDDoSTrendRequest(business: business, period: period, startTime: startTime, endTime: endTime, metricName: metricName, ipList: ipList, id: id), logger: logger, on: eventLoop)
    }
}
