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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Antiddos {
    /// DescribeDDoSTrend请求参数结构体
    public struct DescribeDDoSTrendRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版；basic表示DDoS基础防护）
        public let business: String

        /// 资源实例的IP
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

        /// 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
        public let metricName: String

        /// 资源实例ID，当Business为basic时，此字段不用填写（因为基础防护没有资源实例）
        public let id: String?

        public init(business: String, ip: String, period: Int64, startTime: Date, endTime: Date, metricName: String, id: String? = nil) {
            self.business = business
            self.ip = ip
            self.period = period
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricName = metricName
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case ip = "Ip"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case id = "Id"
        }
    }

    /// DescribeDDoSTrend返回参数结构体
    public struct DescribeDDoSTrendResponse: TCResponseModel {
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

        /// 值数组，攻击流量带宽单位为Mbps，包速率单位为pps
        public let data: [UInt64]

        /// 资源ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: String?

        /// 指标，取值[bps(攻击流量带宽，pps(攻击包速率))]
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

    /// 获取DDoS攻击指标曲线
    ///
    /// 获取DDoS攻击流量带宽和攻击包速率数据
    @inlinable
    public func describeDDoSTrend(_ input: DescribeDDoSTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSTrendResponse> {
        self.client.execute(action: "DescribeDDoSTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS攻击指标曲线
    ///
    /// 获取DDoS攻击流量带宽和攻击包速率数据
    @inlinable
    public func describeDDoSTrend(_ input: DescribeDDoSTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSTrendResponse {
        try await self.client.execute(action: "DescribeDDoSTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS攻击指标曲线
    ///
    /// 获取DDoS攻击流量带宽和攻击包速率数据
    @inlinable
    public func describeDDoSTrend(business: String, ip: String, period: Int64, startTime: Date, endTime: Date, metricName: String, id: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSTrendResponse> {
        let input = DescribeDDoSTrendRequest(business: business, ip: ip, period: period, startTime: startTime, endTime: endTime, metricName: metricName, id: id)
        return self.client.execute(action: "DescribeDDoSTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS攻击指标曲线
    ///
    /// 获取DDoS攻击流量带宽和攻击包速率数据
    @inlinable
    public func describeDDoSTrend(business: String, ip: String, period: Int64, startTime: Date, endTime: Date, metricName: String, id: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSTrendResponse {
        let input = DescribeDDoSTrendRequest(business: business, ip: ip, period: period, startTime: startTime, endTime: endTime, metricName: metricName, id: id)
        return try await self.client.execute(action: "DescribeDDoSTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
