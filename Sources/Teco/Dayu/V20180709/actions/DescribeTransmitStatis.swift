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

extension Dayu {
    /// DescribeTransmitStatis请求参数结构体
    public struct DescribeTransmitStatisRequest: TCRequest {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版；bgp表示独享包；bgp-multip表示共享包）
        public let business: String

        /// 资源实例ID
        public let id: String

        /// 指标名，取值：
        /// traffic表示流量带宽；
        /// pkg表示包速率；
        public let metricName: String

        /// 统计时间粒度（300表示5分钟；3600表示小时；86400表示天）
        public let period: UInt64

        /// 统计开始时间，秒部分保持为0，分钟部分为5的倍数
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 统计结束时间，秒部分保持为0，分钟部分为5的倍数
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 资源的IP（当Business为bgp-multip时必填，且仅支持一个IP）；当不填写时，默认统计资源实例的所有IP；资源实例有多个IP（比如高防IP专业版）时，统计方式是求和；
        public let ipList: [String]?

        public init(business: String, id: String, metricName: String, period: UInt64, startTime: Date, endTime: Date, ipList: [String]? = nil) {
            self.business = business
            self.id = id
            self.metricName = metricName
            self.period = period
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.ipList = ipList
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case metricName = "MetricName"
            case period = "Period"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case ipList = "IpList"
        }
    }

    /// DescribeTransmitStatis返回参数结构体
    public struct DescribeTransmitStatisResponse: TCResponse {
        /// 当MetricName=traffic时，表示入流量带宽，单位bps；
        /// 当MetricName=pkg时，表示入包速率，单位pps；
        public let inDataList: [Float]

        /// 当MetricName=traffic时，表示出流量带宽，单位bps；
        /// 当MetricName=pkg时，表示出包速率，单位pps；
        public let outDataList: [Float]

        /// 指标名：
        /// traffic表示流量带宽；
        /// pkg表示包速率；
        public let metricName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case inDataList = "InDataList"
            case outDataList = "OutDataList"
            case metricName = "MetricName"
            case requestId = "RequestId"
        }
    }

    /// 获取业务转发统计数据
    ///
    /// 获取业务转发统计数据，支持转发流量和转发包速率
    @inlinable
    public func describeTransmitStatis(_ input: DescribeTransmitStatisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTransmitStatisResponse> {
        self.client.execute(action: "DescribeTransmitStatis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取业务转发统计数据
    ///
    /// 获取业务转发统计数据，支持转发流量和转发包速率
    @inlinable
    public func describeTransmitStatis(_ input: DescribeTransmitStatisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTransmitStatisResponse {
        try await self.client.execute(action: "DescribeTransmitStatis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取业务转发统计数据
    ///
    /// 获取业务转发统计数据，支持转发流量和转发包速率
    @inlinable
    public func describeTransmitStatis(business: String, id: String, metricName: String, period: UInt64, startTime: Date, endTime: Date, ipList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTransmitStatisResponse> {
        self.describeTransmitStatis(.init(business: business, id: id, metricName: metricName, period: period, startTime: startTime, endTime: endTime, ipList: ipList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取业务转发统计数据
    ///
    /// 获取业务转发统计数据，支持转发流量和转发包速率
    @inlinable
    public func describeTransmitStatis(business: String, id: String, metricName: String, period: UInt64, startTime: Date, endTime: Date, ipList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTransmitStatisResponse {
        try await self.describeTransmitStatis(.init(business: business, id: id, metricName: metricName, period: period, startTime: startTime, endTime: endTime, ipList: ipList), region: region, logger: logger, on: eventLoop)
    }
}
