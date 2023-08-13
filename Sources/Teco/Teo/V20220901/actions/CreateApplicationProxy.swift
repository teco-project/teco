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

import Logging
import NIOCore
import TecoCore

extension Teo {
    /// CreateApplicationProxy请求参数结构体
    public struct CreateApplicationProxyRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 当 ProxyType=hostname 时，表示域名或子域名；
        /// 当 ProxyType=instance 时，表示代理名称。
        public let proxyName: String

        /// 调度模式，取值有：
        /// - ip：表示Anycast IP调度；
        /// - domain：表示CNAME调度。
        public let platType: String

        /// 是否开启安全，取值有：
        /// - 0：关闭安全；
        /// - 1：开启安全。
        public let securityType: Int64

        /// 是否开启加速，取值有：
        /// - 0：关闭加速；
        /// - 1：开启加速。
        public let accelerateType: Int64

        /// 四层代理模式，取值有：
        /// - hostname：表示子域名模式；
        /// - instance：表示实例模式。不填写使用默认值instance。
        public let proxyType: String?

        /// 会话保持时间，取值范围：30-3600，单位：秒。
        /// 不填写使用默认值600。
        public let sessionPersistTime: UInt64?

        /// Ipv6 访问配置。
        /// 不填写表示关闭 Ipv6 访问。
        public let ipv6: Ipv6?

        /// 规则详细信息。
        /// 不填写则不创建规则。
        public let applicationProxyRules: [ApplicationProxyRule]?

        /// 中国大陆加速优化配置。不填写表示关闭中国大陆加速优化。
        public let accelerateMainland: AccelerateMainland?

        public init(zoneId: String, proxyName: String, platType: String, securityType: Int64, accelerateType: Int64, proxyType: String? = nil, sessionPersistTime: UInt64? = nil, ipv6: Ipv6? = nil, applicationProxyRules: [ApplicationProxyRule]? = nil, accelerateMainland: AccelerateMainland? = nil) {
            self.zoneId = zoneId
            self.proxyName = proxyName
            self.platType = platType
            self.securityType = securityType
            self.accelerateType = accelerateType
            self.proxyType = proxyType
            self.sessionPersistTime = sessionPersistTime
            self.ipv6 = ipv6
            self.applicationProxyRules = applicationProxyRules
            self.accelerateMainland = accelerateMainland
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyName = "ProxyName"
            case platType = "PlatType"
            case securityType = "SecurityType"
            case accelerateType = "AccelerateType"
            case proxyType = "ProxyType"
            case sessionPersistTime = "SessionPersistTime"
            case ipv6 = "Ipv6"
            case applicationProxyRules = "ApplicationProxyRules"
            case accelerateMainland = "AccelerateMainland"
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
    public func createApplicationProxy(_ input: CreateApplicationProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationProxyResponse> {
        self.client.execute(action: "CreateApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建应用代理
    @inlinable
    public func createApplicationProxy(_ input: CreateApplicationProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationProxyResponse {
        try await self.client.execute(action: "CreateApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建应用代理
    @inlinable
    public func createApplicationProxy(zoneId: String, proxyName: String, platType: String, securityType: Int64, accelerateType: Int64, proxyType: String? = nil, sessionPersistTime: UInt64? = nil, ipv6: Ipv6? = nil, applicationProxyRules: [ApplicationProxyRule]? = nil, accelerateMainland: AccelerateMainland? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationProxyResponse> {
        self.createApplicationProxy(.init(zoneId: zoneId, proxyName: proxyName, platType: platType, securityType: securityType, accelerateType: accelerateType, proxyType: proxyType, sessionPersistTime: sessionPersistTime, ipv6: ipv6, applicationProxyRules: applicationProxyRules, accelerateMainland: accelerateMainland), region: region, logger: logger, on: eventLoop)
    }

    /// 创建应用代理
    @inlinable
    public func createApplicationProxy(zoneId: String, proxyName: String, platType: String, securityType: Int64, accelerateType: Int64, proxyType: String? = nil, sessionPersistTime: UInt64? = nil, ipv6: Ipv6? = nil, applicationProxyRules: [ApplicationProxyRule]? = nil, accelerateMainland: AccelerateMainland? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApplicationProxyResponse {
        try await self.createApplicationProxy(.init(zoneId: zoneId, proxyName: proxyName, platType: platType, securityType: securityType, accelerateType: accelerateType, proxyType: proxyType, sessionPersistTime: sessionPersistTime, ipv6: ipv6, applicationProxyRules: applicationProxyRules, accelerateMainland: accelerateMainland), region: region, logger: logger, on: eventLoop)
    }
}
