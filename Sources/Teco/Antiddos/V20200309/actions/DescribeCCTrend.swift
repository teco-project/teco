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
    /// DescribeCCTrend请求参数结构体
    public struct DescribeCCTrendRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        public let business: String

        /// 资源的IP
        public let ip: String

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

        /// 域名，可选
        public let domain: String?

        /// 资源实例ID，当Business为basic时，此字段不用填写（因为基础防护没有资源实例）
        public let id: String?

        public init(business: String, ip: String, period: Int64, startTime: Date, endTime: Date, metricName: String, domain: String? = nil, id: String? = nil) {
            self.business = business
            self.ip = ip
            self.period = period
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricName = metricName
            self.domain = domain
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case ip = "Ip"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case domain = "Domain"
            case id = "Id"
        }
    }

    /// DescribeCCTrend返回参数结构体
    public struct DescribeCCTrendResponse: TCResponseModel {
        /// 值个数
        public let count: UInt64

        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        public let business: String

        /// 资源的IP
        public let ip: String

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

        /// 值数组
        public let data: [UInt64]

        /// 资源ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: String?

        /// 指标，取值[inqps(总请求峰值，dropqps(攻击请求峰值))，incount(请求次数), dropcount(攻击次数)]
        public let metricName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case business = "Business"
            case ip = "Ip"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case data = "Data"
            case id = "Id"
            case metricName = "MetricName"
            case requestId = "RequestId"
        }
    }

    /// 获取CC攻击指标曲线
    ///
    /// 获取CC攻击指标数据，包括总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数
    @inlinable
    public func describeCCTrend(_ input: DescribeCCTrendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCTrendResponse> {
        self.client.execute(action: "DescribeCCTrend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC攻击指标曲线
    ///
    /// 获取CC攻击指标数据，包括总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数
    @inlinable
    public func describeCCTrend(_ input: DescribeCCTrendRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCTrendResponse {
        try await self.client.execute(action: "DescribeCCTrend", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC攻击指标曲线
    ///
    /// 获取CC攻击指标数据，包括总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数
    @inlinable
    public func describeCCTrend(business: String, ip: String, period: Int64, startTime: Date, endTime: Date, metricName: String, domain: String? = nil, id: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCTrendResponse> {
        self.describeCCTrend(DescribeCCTrendRequest(business: business, ip: ip, period: period, startTime: startTime, endTime: endTime, metricName: metricName, domain: domain, id: id), logger: logger, on: eventLoop)
    }

    /// 获取CC攻击指标曲线
    ///
    /// 获取CC攻击指标数据，包括总请求峰值(QPS)和攻击请求(QPS)以及总请求次数和攻击请求次数
    @inlinable
    public func describeCCTrend(business: String, ip: String, period: Int64, startTime: Date, endTime: Date, metricName: String, domain: String? = nil, id: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCTrendResponse {
        try await self.describeCCTrend(DescribeCCTrendRequest(business: business, ip: ip, period: period, startTime: startTime, endTime: endTime, metricName: metricName, domain: domain, id: id), logger: logger, on: eventLoop)
    }
}
