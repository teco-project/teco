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
    /// ModifyApplicationProxy请求参数结构体
    public struct ModifyApplicationProxyRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        /// 代理ID。
        public let proxyId: String

        /// 当ProxyType=hostname时，表示域名或子域名；
        /// 当ProxyType=instance时，表示代理名称。
        public let proxyName: String

        /// 参数已经废弃。
        public let forwardClientIp: String

        /// 参数已经废弃。
        public let sessionPersist: Bool

        /// 会话保持时间，不填写保持原有配置。取值范围：30-3600，单位：秒。
        public let sessionPersistTime: UInt64?

        /// 四层代理模式，取值有：
        /// <li>hostname：表示子域名模式；</li>
        /// <li>instance：表示实例模式。</li>不填写保持原有配置。
        public let proxyType: String?

        /// Ipv6访问配置，不填写保持原有配置。
        public let ipv6: Ipv6Access?

        public init(zoneId: String, proxyId: String, proxyName: String, forwardClientIp: String, sessionPersist: Bool, sessionPersistTime: UInt64? = nil, proxyType: String? = nil, ipv6: Ipv6Access? = nil) {
            self.zoneId = zoneId
            self.proxyId = proxyId
            self.proxyName = proxyName
            self.forwardClientIp = forwardClientIp
            self.sessionPersist = sessionPersist
            self.sessionPersistTime = sessionPersistTime
            self.proxyType = proxyType
            self.ipv6 = ipv6
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
            case proxyName = "ProxyName"
            case forwardClientIp = "ForwardClientIp"
            case sessionPersist = "SessionPersist"
            case sessionPersistTime = "SessionPersistTime"
            case proxyType = "ProxyType"
            case ipv6 = "Ipv6"
        }
    }

    /// ModifyApplicationProxy返回参数结构体
    public struct ModifyApplicationProxyResponse: TCResponseModel {
        /// 代理ID。
        public let proxyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case requestId = "RequestId"
        }
    }

    /// 修改应用代理
    @inlinable
    public func modifyApplicationProxy(_ input: ModifyApplicationProxyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyApplicationProxyResponse > {
        self.client.execute(action: "ModifyApplicationProxy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用代理
    @inlinable
    public func modifyApplicationProxy(_ input: ModifyApplicationProxyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyResponse {
        try await self.client.execute(action: "ModifyApplicationProxy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用代理
    @inlinable
    public func modifyApplicationProxy(zoneId: String, proxyId: String, proxyName: String, forwardClientIp: String, sessionPersist: Bool, sessionPersistTime: UInt64? = nil, proxyType: String? = nil, ipv6: Ipv6Access? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyApplicationProxyResponse > {
        self.modifyApplicationProxy(ModifyApplicationProxyRequest(zoneId: zoneId, proxyId: proxyId, proxyName: proxyName, forwardClientIp: forwardClientIp, sessionPersist: sessionPersist, sessionPersistTime: sessionPersistTime, proxyType: proxyType, ipv6: ipv6), logger: logger, on: eventLoop)
    }

    /// 修改应用代理
    @inlinable
    public func modifyApplicationProxy(zoneId: String, proxyId: String, proxyName: String, forwardClientIp: String, sessionPersist: Bool, sessionPersistTime: UInt64? = nil, proxyType: String? = nil, ipv6: Ipv6Access? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyResponse {
        try await self.modifyApplicationProxy(ModifyApplicationProxyRequest(zoneId: zoneId, proxyId: proxyId, proxyName: proxyName, forwardClientIp: forwardClientIp, sessionPersist: sessionPersist, sessionPersistTime: sessionPersistTime, proxyType: proxyType, ipv6: ipv6), logger: logger, on: eventLoop)
    }
}
