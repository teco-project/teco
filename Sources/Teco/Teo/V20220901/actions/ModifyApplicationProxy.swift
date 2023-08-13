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
    /// ModifyApplicationProxy请求参数结构体
    public struct ModifyApplicationProxyRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 代理 ID。
        public let proxyId: String

        /// 当 ProxyType=hostname 时，表示域名或子域名；
        /// 当 ProxyType=instance 时，表示代理名称。
        public let proxyName: String

        /// 会话保持时间，取值范围：30-3600，单位：秒。
        /// 不填写保持原有配置。
        public let sessionPersistTime: UInt64?

        /// 四层代理模式，取值有：
        /// - hostname：表示子域名模式；
        /// - instance：表示实例模式。不填写保持原有配置。
        public let proxyType: String?

        /// Ipv6 访问配置，不填写保持原有配置。
        public let ipv6: Ipv6?

        /// 中国大陆加速优化配置。 不填写表示保持原有配置。
        public let accelerateMainland: AccelerateMainland?

        public init(zoneId: String, proxyId: String, proxyName: String, sessionPersistTime: UInt64? = nil, proxyType: String? = nil, ipv6: Ipv6? = nil, accelerateMainland: AccelerateMainland? = nil) {
            self.zoneId = zoneId
            self.proxyId = proxyId
            self.proxyName = proxyName
            self.sessionPersistTime = sessionPersistTime
            self.proxyType = proxyType
            self.ipv6 = ipv6
            self.accelerateMainland = accelerateMainland
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case proxyId = "ProxyId"
            case proxyName = "ProxyName"
            case sessionPersistTime = "SessionPersistTime"
            case proxyType = "ProxyType"
            case ipv6 = "Ipv6"
            case accelerateMainland = "AccelerateMainland"
        }
    }

    /// ModifyApplicationProxy返回参数结构体
    public struct ModifyApplicationProxyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改应用代理
    @inlinable @discardableResult
    public func modifyApplicationProxy(_ input: ModifyApplicationProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyResponse> {
        self.client.execute(action: "ModifyApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用代理
    @inlinable @discardableResult
    public func modifyApplicationProxy(_ input: ModifyApplicationProxyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyResponse {
        try await self.client.execute(action: "ModifyApplicationProxy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用代理
    @inlinable @discardableResult
    public func modifyApplicationProxy(zoneId: String, proxyId: String, proxyName: String, sessionPersistTime: UInt64? = nil, proxyType: String? = nil, ipv6: Ipv6? = nil, accelerateMainland: AccelerateMainland? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationProxyResponse> {
        self.modifyApplicationProxy(.init(zoneId: zoneId, proxyId: proxyId, proxyName: proxyName, sessionPersistTime: sessionPersistTime, proxyType: proxyType, ipv6: ipv6, accelerateMainland: accelerateMainland), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用代理
    @inlinable @discardableResult
    public func modifyApplicationProxy(zoneId: String, proxyId: String, proxyName: String, sessionPersistTime: UInt64? = nil, proxyType: String? = nil, ipv6: Ipv6? = nil, accelerateMainland: AccelerateMainland? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationProxyResponse {
        try await self.modifyApplicationProxy(.init(zoneId: zoneId, proxyId: proxyId, proxyName: proxyName, sessionPersistTime: sessionPersistTime, proxyType: proxyType, ipv6: ipv6, accelerateMainland: accelerateMainland), region: region, logger: logger, on: eventLoop)
    }
}
