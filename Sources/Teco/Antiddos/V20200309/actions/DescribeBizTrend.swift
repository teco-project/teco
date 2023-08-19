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

extension Antiddos {
    /// DescribeBizTrend请求参数结构体
    public struct DescribeBizTrendRequest: TCRequest {
        /// 统计方式，可取值max, min, avg, sum, 如统计纬度是流量速率或包量速率，仅可取值max
        public let statistics: String

        /// DDoS防护子产品代号（bgpip表示高防IP）
        public let business: String

        /// 统计周期，可取值60，300，1800，3600，21600，86400，单位秒
        public let period: UInt64

        /// 统计开始时间。 例：“2020-09-22 00:00:00”
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 统计结束时间。 例：“2020-09-22 00:00:00”
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 资源实例ID
        public let id: String

        /// 统计纬度，可取值connum, new_conn, inactive_conn, intraffic, outtraffic, inpkg, outpkg, qps
        public let metricName: String

        /// 统计纬度为qps时，可选特定域名查询
        public let domain: String?

        /// 协议及端口列表，协议可取值TCP, UDP, HTTP, HTTPS，仅统计纬度为连接数时有效
        public let protoInfo: [ProtocolPort]?

        /// 业务类型可取值domain, port
        /// port：端口业务
        /// domain：域名业务
        public let businessType: String?

        public init(statistics: String, business: String, period: UInt64, startTime: Date, endTime: Date, id: String, metricName: String, domain: String? = nil, protoInfo: [ProtocolPort]? = nil, businessType: String? = nil) {
            self.statistics = statistics
            self.business = business
            self.period = period
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.id = id
            self.metricName = metricName
            self.domain = domain
            self.protoInfo = protoInfo
            self.businessType = businessType
        }

        enum CodingKeys: String, CodingKey {
            case statistics = "Statistics"
            case business = "Business"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case id = "Id"
            case metricName = "MetricName"
            case domain = "Domain"
            case protoInfo = "ProtoInfo"
            case businessType = "BusinessType"
        }
    }

    /// DescribeBizTrend返回参数结构体
    public struct DescribeBizTrendResponse: TCResponse {
        /// 曲线图各个时间点的值
        public let dataList: [Float]

        /// 统计纬度
        public let metricName: String

        /// 返回DataList中的最大值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxData: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataList = "DataList"
            case metricName = "MetricName"
            case maxData = "MaxData"
            case requestId = "RequestId"
        }
    }

    /// 获取高防IP业务流量曲线
    ///
    /// 获取业务流量曲线
    @inlinable
    public func describeBizTrend(_ input: DescribeBizTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizTrendResponse> {
        self.client.execute(action: "DescribeBizTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防IP业务流量曲线
    ///
    /// 获取业务流量曲线
    @inlinable
    public func describeBizTrend(_ input: DescribeBizTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizTrendResponse {
        try await self.client.execute(action: "DescribeBizTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防IP业务流量曲线
    ///
    /// 获取业务流量曲线
    @inlinable
    public func describeBizTrend(statistics: String, business: String, period: UInt64, startTime: Date, endTime: Date, id: String, metricName: String, domain: String? = nil, protoInfo: [ProtocolPort]? = nil, businessType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBizTrendResponse> {
        self.describeBizTrend(.init(statistics: statistics, business: business, period: period, startTime: startTime, endTime: endTime, id: id, metricName: metricName, domain: domain, protoInfo: protoInfo, businessType: businessType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高防IP业务流量曲线
    ///
    /// 获取业务流量曲线
    @inlinable
    public func describeBizTrend(statistics: String, business: String, period: UInt64, startTime: Date, endTime: Date, id: String, metricName: String, domain: String? = nil, protoInfo: [ProtocolPort]? = nil, businessType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBizTrendResponse {
        try await self.describeBizTrend(.init(statistics: statistics, business: business, period: period, startTime: startTime, endTime: endTime, id: id, metricName: metricName, domain: domain, protoInfo: protoInfo, businessType: businessType), region: region, logger: logger, on: eventLoop)
    }
}
