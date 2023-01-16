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
    /// DescribeOverviewCCTrend请求参数结构体
    public struct DescribeOverviewCCTrendRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp-multip表示共享包；basic表示DDoS基础防护）
        public let business: String

        /// 统计粒度，取值[300(5分钟)，3600(小时)，86400(天)]
        public let period: Int64

        /// 统计开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 统计结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 指标，取值[inqps(总请求峰值，dropqps(攻击请求峰值))，incount(请求次数), dropcount(攻击次数)]
        public let metricName: String

        /// 资源的IP
        public let ipList: [String]?

        /// 资源实例ID
        public let id: String?

        public init(business: String, period: Int64, startTime: Date, endTime: Date, metricName: String, ipList: [String]? = nil, id: String? = nil) {
            self.business = business
            self.period = period
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
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

    /// DescribeOverviewCCTrend返回参数结构体
    public struct DescribeOverviewCCTrendResponse: TCResponseModel {
        /// 值个数
        public let count: UInt64

        /// 值数组
        public let data: [UInt64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取防护概览趋势图
    ///
    /// 获取防护概览总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数
    @inlinable
    public func describeOverviewCCTrend(_ input: DescribeOverviewCCTrendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOverviewCCTrendResponse> {
        self.client.execute(action: "DescribeOverviewCCTrend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取防护概览趋势图
    ///
    /// 获取防护概览总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数
    @inlinable
    public func describeOverviewCCTrend(_ input: DescribeOverviewCCTrendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewCCTrendResponse {
        try await self.client.execute(action: "DescribeOverviewCCTrend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取防护概览趋势图
    ///
    /// 获取防护概览总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数
    @inlinable
    public func describeOverviewCCTrend(business: String, period: Int64, startTime: Date, endTime: Date, metricName: String, ipList: [String]? = nil, id: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOverviewCCTrendResponse> {
        self.describeOverviewCCTrend(DescribeOverviewCCTrendRequest(business: business, period: period, startTime: startTime, endTime: endTime, metricName: metricName, ipList: ipList, id: id), logger: logger, on: eventLoop)
    }

    /// 获取防护概览趋势图
    ///
    /// 获取防护概览总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数
    @inlinable
    public func describeOverviewCCTrend(business: String, period: Int64, startTime: Date, endTime: Date, metricName: String, ipList: [String]? = nil, id: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOverviewCCTrendResponse {
        try await self.describeOverviewCCTrend(DescribeOverviewCCTrendRequest(business: business, period: period, startTime: startTime, endTime: endTime, metricName: metricName, ipList: ipList, id: id), logger: logger, on: eventLoop)
    }
}
