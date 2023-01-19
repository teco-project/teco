//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Dayu {
    /// DescribeDDoSCount请求参数结构体
    public struct DescribeDDoSCountRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 资源的IP
        public let ip: String

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

        /// 指标，取值[traffic（攻击协议流量, 单位KB）, pkg（攻击协议报文数）, classnum（攻击事件次数）]
        public let metricName: String

        public init(business: String, id: String, ip: String, startTime: Date, endTime: Date, metricName: String) {
            self.business = business
            self.id = id
            self.ip = ip
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.metricName = metricName
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ip = "Ip"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
        }
    }

    /// DescribeDDoSCount返回参数结构体
    public struct DescribeDDoSCountResponse: TCResponseModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 资源的IP
        public let ip: String

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

        /// 指标，取值[traffic（攻击协议流量, 单位KB）, pkg（攻击协议报文数）, classnum（攻击事件次数）]
        public let metricName: String

        /// Key-Value值数组，Key说明如下，
        /// 当MetricName为traffic时：
        /// key为"TcpKBSum"，表示TCP报文流量，单位KB
        /// key为"UdpKBSum"，表示UDP报文流量，单位KB
        /// key为"IcmpKBSum"，表示ICMP报文流量，单位KB
        /// key为"OtherKBSum"，表示其他报文流量，单位KB
        /// 当MetricName为pkg时：
        /// key为"TcpPacketSum"，表示TCP报文个数，单位个
        /// key为"UdpPacketSum"，表示UDP报文个数，单位个
        /// key为"IcmpPacketSum"，表示ICMP报文个数，单位个
        /// key为"OtherPacketSum"，表示其他报文个数，单位个
        /// 当MetricName为classnum时：
        /// key的值表示攻击事件类型，其中Key为"UNKNOWNFLOOD"，表示未知的攻击事件
        public let data: [KeyValue]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ip = "Ip"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case metricName = "MetricName"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取DDoS攻击占比分析
    @inlinable
    public func describeDDoSCount(_ input: DescribeDDoSCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSCountResponse> {
        self.client.execute(action: "DescribeDDoSCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS攻击占比分析
    @inlinable
    public func describeDDoSCount(_ input: DescribeDDoSCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSCountResponse {
        try await self.client.execute(action: "DescribeDDoSCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS攻击占比分析
    @inlinable
    public func describeDDoSCount(business: String, id: String, ip: String, startTime: Date, endTime: Date, metricName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSCountResponse> {
        self.describeDDoSCount(DescribeDDoSCountRequest(business: business, id: id, ip: ip, startTime: startTime, endTime: endTime, metricName: metricName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS攻击占比分析
    @inlinable
    public func describeDDoSCount(business: String, id: String, ip: String, startTime: Date, endTime: Date, metricName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSCountResponse {
        try await self.describeDDoSCount(DescribeDDoSCountRequest(business: business, id: id, ip: ip, startTime: startTime, endTime: endTime, metricName: metricName), region: region, logger: logger, on: eventLoop)
    }
}
