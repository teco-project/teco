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

extension Teo {
    /// CreateApplicationProxy请求参数结构体
    public struct CreateApplicationProxyRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        /// 站点名称。
        public let zoneName: String

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
        public let sessionPersist: Bool

        /// 字段已经废弃。
        public let forwardClientIp: String

        /// 规则详细信息。
        public let rule: [ApplicationProxyRule]?

        /// 四层代理模式，取值有：
        /// <li>hostname：表示子域名模式；</li>
        /// <li>instance：表示实例模式。</li>不填写使用默认值instance。
        public let proxyType: String?

        /// 会话保持时间，取值范围：30-3600，单位：秒。
        /// 不填写使用默认值600。
        public let sessionPersistTime: UInt64?

        /// Ipv6访问配置。
        /// 不填写表示关闭Ipv6访问。
        public let ipv6: Ipv6Access?

        public init(zoneId: String, zoneName: String, proxyName: String, platType: String, securityType: Int64, accelerateType: Int64, sessionPersist: Bool, forwardClientIp: String, rule: [ApplicationProxyRule]? = nil, proxyType: String? = nil, sessionPersistTime: UInt64? = nil, ipv6: Ipv6Access? = nil) {
            self.zoneId = zoneId
            self.zoneName = zoneName
            self.proxyName = proxyName
            self.platType = platType
            self.securityType = securityType
            self.accelerateType = accelerateType
            self.sessionPersist = sessionPersist
            self.forwardClientIp = forwardClientIp
            self.rule = rule
            self.proxyType = proxyType
            self.sessionPersistTime = sessionPersistTime
            self.ipv6 = ipv6
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
            case proxyName = "ProxyName"
            case platType = "PlatType"
            case securityType = "SecurityType"
            case accelerateType = "AccelerateType"
            case sessionPersist = "SessionPersist"
            case forwardClientIp = "ForwardClientIp"
            case rule = "Rule"
            case proxyType = "ProxyType"
            case sessionPersistTime = "SessionPersistTime"
            case ipv6 = "Ipv6"
        }
    }

    /// CreateApplicationProxy返回参数结构体
    public struct CreateApplicationProxyResponse: TCResponseModel {
        /// 新增的四层代理应用ID。
        public let proxyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case requestId = "RequestId"
        }
    }

    /// 创建应用代理
    @inlinable
    public func createApplicationProxy(_ input: CreateApplicationProxyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateApplicationProxyResponse > {
        self.client.execute(action: "CreateApplicationProxy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建应用代理
    @inlinable
    public func createApplicationProxy(_ input: CreateApplicationProxyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationProxyResponse {
        try await self.client.execute(action: "CreateApplicationProxy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建应用代理
    @inlinable
    public func createApplicationProxy(zoneId: String, zoneName: String, proxyName: String, platType: String, securityType: Int64, accelerateType: Int64, sessionPersist: Bool, forwardClientIp: String, rule: [ApplicationProxyRule]? = nil, proxyType: String? = nil, sessionPersistTime: UInt64? = nil, ipv6: Ipv6Access? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateApplicationProxyResponse > {
        self.createApplicationProxy(CreateApplicationProxyRequest(zoneId: zoneId, zoneName: zoneName, proxyName: proxyName, platType: platType, securityType: securityType, accelerateType: accelerateType, sessionPersist: sessionPersist, forwardClientIp: forwardClientIp, rule: rule, proxyType: proxyType, sessionPersistTime: sessionPersistTime, ipv6: ipv6), logger: logger, on: eventLoop)
    }

    /// 创建应用代理
    @inlinable
    public func createApplicationProxy(zoneId: String, zoneName: String, proxyName: String, platType: String, securityType: Int64, accelerateType: Int64, sessionPersist: Bool, forwardClientIp: String, rule: [ApplicationProxyRule]? = nil, proxyType: String? = nil, sessionPersistTime: UInt64? = nil, ipv6: Ipv6Access? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationProxyResponse {
        try await self.createApplicationProxy(CreateApplicationProxyRequest(zoneId: zoneId, zoneName: zoneName, proxyName: proxyName, platType: platType, securityType: securityType, accelerateType: accelerateType, sessionPersist: sessionPersist, forwardClientIp: forwardClientIp, rule: rule, proxyType: proxyType, sessionPersistTime: sessionPersistTime, ipv6: ipv6), logger: logger, on: eventLoop)
    }
}
