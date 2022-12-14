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

extension Gaap {
    /// DescribeProxyStatistics请求参数结构体
    public struct DescribeProxyStatisticsRequest: TCRequestModel {
        /// 通道ID
        public let proxyId: String

        /// 起始时间(2019-03-25 12:00:00)
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间(2019-03-25 12:00:00)
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date

        /// 统计指标名称列表，支持: 入带宽:InBandwidth, 出带宽:OutBandwidth, 并发:Concurrent, 入包量:InPackets, 出包量:OutPackets, 丢包率:PacketLoss, 延迟:Latency，http请求量：HttpQPS, Https请求量：HttpsQPS
        public let metricNames: [String]

        /// 监控粒度，目前支持60，300，3600，86400，单位：秒。
        /// 当时间范围不超过3天，支持最小粒度60秒；
        /// 当时间范围不超过7天，支持最小粒度300秒；
        /// 当时间范围不超过30天，支持最小粒度3600秒。
        public let granularity: UInt64

        /// 运营商（通道为三网通道时有效），支持CMCC，CUCC，CTCC，传空值或不传则合并三个运营商数据
        public let isp: String?

        public init(proxyId: String, startTime: Date, endTime: Date, metricNames: [String], granularity: UInt64, isp: String? = nil) {
            self.proxyId = proxyId
            self.startTime = startTime
            self.endTime = endTime
            self.metricNames = metricNames
            self.granularity = granularity
            self.isp = isp
        }

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricNames = "MetricNames"
            case granularity = "Granularity"
            case isp = "Isp"
        }
    }

    /// DescribeProxyStatistics返回参数结构体
    public struct DescribeProxyStatisticsResponse: TCResponseModel {
        /// 通道统计数据
        public let statisticsData: [MetricStatisticsInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case statisticsData = "StatisticsData"
            case requestId = "RequestId"
        }
    }

    /// 查询通道统计数据
    ///
    /// 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发，丢包和时延数据。支持300, 3600和86400的细粒度，取值为细粒度范围内最大值。
    @inlinable
    public func describeProxyStatistics(_ input: DescribeProxyStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProxyStatisticsResponse > {
        self.client.execute(action: "DescribeProxyStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询通道统计数据
    ///
    /// 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发，丢包和时延数据。支持300, 3600和86400的细粒度，取值为细粒度范围内最大值。
    @inlinable
    public func describeProxyStatistics(_ input: DescribeProxyStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyStatisticsResponse {
        try await self.client.execute(action: "DescribeProxyStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询通道统计数据
    ///
    /// 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发，丢包和时延数据。支持300, 3600和86400的细粒度，取值为细粒度范围内最大值。
    @inlinable
    public func describeProxyStatistics(proxyId: String, startTime: Date, endTime: Date, metricNames: [String], granularity: UInt64, isp: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProxyStatisticsResponse > {
        self.describeProxyStatistics(DescribeProxyStatisticsRequest(proxyId: proxyId, startTime: startTime, endTime: endTime, metricNames: metricNames, granularity: granularity, isp: isp), logger: logger, on: eventLoop)
    }

    /// 查询通道统计数据
    ///
    /// 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发，丢包和时延数据。支持300, 3600和86400的细粒度，取值为细粒度范围内最大值。
    @inlinable
    public func describeProxyStatistics(proxyId: String, startTime: Date, endTime: Date, metricNames: [String], granularity: UInt64, isp: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyStatisticsResponse {
        try await self.describeProxyStatistics(DescribeProxyStatisticsRequest(proxyId: proxyId, startTime: startTime, endTime: endTime, metricNames: metricNames, granularity: granularity, isp: isp), logger: logger, on: eventLoop)
    }
}
