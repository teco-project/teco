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

extension Teo {
    /// DescribeApplicationProxyDetail请求参数结构体
    public struct DescribeApplicationProxyDetailRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        /// 实例ID。
        public let proxyId: String

        public init(zoneId: String, proxyId: String) {
            self.zoneId = zoneId
            self.proxyId = proxyId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
        }
    }

    /// DescribeApplicationProxyDetail返回参数结构体
    public struct DescribeApplicationProxyDetailResponse: TCResponseModel {
        /// 实例ID。
        public let proxyId: String

        /// 当ProxyType=hostname时，表示域名或子域名；
        /// 当ProxyType=instance时，表示代理名称。
        public let proxyName: String

        /// 调度模式，取值有：
        /// <li>ip：表示Anycast IP调度；</li>
        /// <li>domain：表示CNAME调度。</li>
        public let platType: String

        /// 是否开启安全，取值有：
        /// <li>0：关闭安全；</li>
        /// <li>1：开启安全。</li>
        public let securityType: Int64

        /// 是否开启加速，取值有：
        /// <li>0：关闭加速；</li>
        /// <li>1：开启加速。</li>
        public let accelerateType: Int64

        /// 字段已经废弃。
        public let forwardClientIp: String

        /// 字段已经废弃。
        public let sessionPersist: Bool

        /// 规则列表。
        public let rule: [ApplicationProxyRule]

        /// 状态，取值有：
        /// <li>online：启用；</li>
        /// <li>offline：停用；</li>
        /// <li>progress：部署中。</li>
        public let status: String

        /// 调度信息。
        public let scheduleValue: [String]

        /// 更新时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updateTime: Date

        /// 站点ID。
        public let zoneId: String

        /// 站点名称。
        public let zoneName: String

        /// 会话保持时间。
        public let sessionPersistTime: UInt64

        /// 四层代理模式，取值有：
        /// <li>hostname：表示子域名模式；</li>
        /// <li>instance：表示实例模式。</li>
        public let proxyType: String

        /// 当ProxyType=hostname时：
        /// 表示代理加速唯一标识。
        public let hostId: String

        /// IPv6访问配置。
        public let ipv6: Ipv6Access

        /// 加速区域，取值有：
        /// <li>mainland：中国大陆境内;</li>
        /// <li>overseas：全球（不含中国大陆）。</li>
        public let area: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case proxyName = "ProxyName"
            case platType = "PlatType"
            case securityType = "SecurityType"
            case accelerateType = "AccelerateType"
            case forwardClientIp = "ForwardClientIp"
            case sessionPersist = "SessionPersist"
            case rule = "Rule"
            case status = "Status"
            case scheduleValue = "ScheduleValue"
            case updateTime = "UpdateTime"
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
            case sessionPersistTime = "SessionPersistTime"
            case proxyType = "ProxyType"
            case hostId = "HostId"
            case ipv6 = "Ipv6"
            case area = "Area"
            case requestId = "RequestId"
        }
    }

    /// 获取应用代理详细信息
    @inlinable
    public func describeApplicationProxyDetail(_ input: DescribeApplicationProxyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationProxyDetailResponse> {
        self.client.execute(action: "DescribeApplicationProxyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用代理详细信息
    @inlinable
    public func describeApplicationProxyDetail(_ input: DescribeApplicationProxyDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationProxyDetailResponse {
        try await self.client.execute(action: "DescribeApplicationProxyDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用代理详细信息
    @inlinable
    public func describeApplicationProxyDetail(zoneId: String, proxyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationProxyDetailResponse> {
        self.describeApplicationProxyDetail(DescribeApplicationProxyDetailRequest(zoneId: zoneId, proxyId: proxyId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用代理详细信息
    @inlinable
    public func describeApplicationProxyDetail(zoneId: String, proxyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationProxyDetailResponse {
        try await self.describeApplicationProxyDetail(DescribeApplicationProxyDetailRequest(zoneId: zoneId, proxyId: proxyId), region: region, logger: logger, on: eventLoop)
    }
}
