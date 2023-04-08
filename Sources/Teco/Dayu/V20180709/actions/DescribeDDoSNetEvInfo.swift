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

extension Dayu {
    /// DescribeDDoSNetEvInfo请求参数结构体
    public struct DescribeDDoSNetEvInfoRequest: TCRequestModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 攻击开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 攻击结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        public init(business: String, id: String, startTime: Date, endTime: Date) {
            self.business = business
            self.id = id
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeDDoSNetEvInfo返回参数结构体
    public struct DescribeDDoSNetEvInfoResponse: TCResponseModel {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 攻击开始时间
        public let startTime: String

        /// 攻击结束时间
        public let endTime: String

        /// TCP报文攻击包数
        public let tcpPacketSum: UInt64

        /// TCP报文攻击流量，单位KB
        public let tcpKBSum: UInt64

        /// UDP报文攻击包数
        public let udpPacketSum: UInt64

        /// UDP报文攻击流量，单位KB
        public let udpKBSum: UInt64

        /// ICMP报文攻击包数
        public let icmpPacketSum: UInt64

        /// ICMP报文攻击流量，单位KB
        public let icmpKBSum: UInt64

        /// 其他报文攻击包数
        public let otherPacketSum: UInt64

        /// 其他报文攻击流量，单位KB
        public let otherKBSum: UInt64

        /// 累计攻击流量，单位KB
        public let totalTraffic: UInt64

        /// 攻击流量带宽峰值
        public let mbps: UInt64

        /// 攻击包速率峰值
        public let pps: UInt64

        /// PCAP文件下载链接
        public let pcapUrl: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case tcpPacketSum = "TcpPacketSum"
            case tcpKBSum = "TcpKBSum"
            case udpPacketSum = "UdpPacketSum"
            case udpKBSum = "UdpKBSum"
            case icmpPacketSum = "IcmpPacketSum"
            case icmpKBSum = "IcmpKBSum"
            case otherPacketSum = "OtherPacketSum"
            case otherKBSum = "OtherKBSum"
            case totalTraffic = "TotalTraffic"
            case mbps = "Mbps"
            case pps = "Pps"
            case pcapUrl = "PcapUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取高防IP专业版资源的DDoS攻击事件详情
    @inlinable
    public func describeDDoSNetEvInfo(_ input: DescribeDDoSNetEvInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSNetEvInfoResponse> {
        self.client.execute(action: "DescribeDDoSNetEvInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoS攻击事件详情
    @inlinable
    public func describeDDoSNetEvInfo(_ input: DescribeDDoSNetEvInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSNetEvInfoResponse {
        try await self.client.execute(action: "DescribeDDoSNetEvInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防IP专业版资源的DDoS攻击事件详情
    @inlinable
    public func describeDDoSNetEvInfo(business: String, id: String, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSNetEvInfoResponse> {
        self.describeDDoSNetEvInfo(.init(business: business, id: id, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoS攻击事件详情
    @inlinable
    public func describeDDoSNetEvInfo(business: String, id: String, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSNetEvInfoResponse {
        try await self.describeDDoSNetEvInfo(.init(business: business, id: id, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
