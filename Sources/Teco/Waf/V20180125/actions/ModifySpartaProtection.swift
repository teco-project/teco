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

extension Waf {
    /// ModifySpartaProtection请求参数结构体
    public struct ModifySpartaProtectionRequest: TCRequestModel {
        /// 域名
        public let domain: String

        /// 域名ID
        public let domainId: String?

        /// 证书类型，0表示没有证书，CertType=1表示自有证书,2 为托管证书
        public let certType: Int64?

        /// CertType=1时，需要填次参数，表示证书内容
        public let cert: String?

        /// CertType=1时，需要填次参数，表示证书的私钥
        public let privateKey: String?

        /// CertType=2时，需要填次参数，表示证书的ID
        public let sslId: String?

        /// 表示是否开启了CDN代理
        public let isCdn: Int64?

        /// HTTPS回源协议
        public let upstreamScheme: String?

        /// HTTPS回源端口,仅UpstreamScheme为http时需要填当前字段
        public let httpsUpstreamPort: String?

        /// 表示是否强制跳转到HTTPS，1表示开启，0表示不开启
        public let httpsRewrite: UInt64?

        /// 回源类型，0表示通过IP回源,1 表示通过域名回源
        public let upstreamType: Int64?

        /// UpstreamType=1时，填次字段表示回源域名
        public let upstreamDomain: String?

        /// UpstreamType=0时，填次字段表示回源ip
        public let srcList: [String]?

        /// 是否开启HTTP2，1表示开启，0表示不开启http2。开启HTTP2需要HTTPS支持
        public let isHttp2: Int64?

        /// 是否开启WebSocket， 1：开启WebSocket，0：不开启WebSocket
        public let isWebsocket: Int64?

        /// 负载均衡策略，0表示轮徇，1表示IP hash
        public let loadBalance: Int64?

        /// 是否灰度
        public let isGray: Int64?

        /// WAF版本
        public let edition: String?

        /// 端口信息
        public let ports: [SpartaProtectionPort]?

        /// 长短连接标志，仅IP回源时有效
        public let isKeepAlive: String?

        /// 实例id
        public let instanceID: String?

        /// 是否为Anycast ip类型：1 Anycast 0 普通ip
        public let anycast: Int64?

        /// src的权重
        public let weights: [Int64]?

        /// 是否开启源站的主动健康检测，1表示开启，0表示不开启
        public let activeCheck: Int64?

        /// TLS版本信息
        public let tlsVersion: Int64?

        /// 加密套件信息
        public let ciphers: [Int64]?

        /// 0:不支持选择：默认模版  1:通用型模版 2:安全型模版 3:自定义模版
        public let cipherTemplate: Int64?

        /// 300s
        public let proxyReadTimeout: Int64?

        /// 300s
        public let proxySendTimeout: Int64?

        /// 0:关闭SNI；1:开启SNI，SNI=源请求host；2:开启SNI，SNI=修改为源站host；3：开启SNI，自定义host，SNI=SniHost；
        public let sniType: Int64?

        /// SniType=3时，需要填此参数，表示自定义的host；
        public let sniHost: String?

        /// IsCdn=3时，需要填此参数，表示自定义header
        public let ipHeaders: [String]?

        public init(domain: String, domainId: String? = nil, certType: Int64? = nil, cert: String? = nil, privateKey: String? = nil, sslId: String? = nil, isCdn: Int64? = nil, upstreamScheme: String? = nil, httpsUpstreamPort: String? = nil, httpsRewrite: UInt64? = nil, upstreamType: Int64? = nil, upstreamDomain: String? = nil, srcList: [String]? = nil, isHttp2: Int64? = nil, isWebsocket: Int64? = nil, loadBalance: Int64? = nil, isGray: Int64? = nil, edition: String? = nil, ports: [SpartaProtectionPort]? = nil, isKeepAlive: String? = nil, instanceID: String? = nil, anycast: Int64? = nil, weights: [Int64]? = nil, activeCheck: Int64? = nil, tlsVersion: Int64? = nil, ciphers: [Int64]? = nil, cipherTemplate: Int64? = nil, proxyReadTimeout: Int64? = nil, proxySendTimeout: Int64? = nil, sniType: Int64? = nil, sniHost: String? = nil, ipHeaders: [String]? = nil) {
            self.domain = domain
            self.domainId = domainId
            self.certType = certType
            self.cert = cert
            self.privateKey = privateKey
            self.sslId = sslId
            self.isCdn = isCdn
            self.upstreamScheme = upstreamScheme
            self.httpsUpstreamPort = httpsUpstreamPort
            self.httpsRewrite = httpsRewrite
            self.upstreamType = upstreamType
            self.upstreamDomain = upstreamDomain
            self.srcList = srcList
            self.isHttp2 = isHttp2
            self.isWebsocket = isWebsocket
            self.loadBalance = loadBalance
            self.isGray = isGray
            self.edition = edition
            self.ports = ports
            self.isKeepAlive = isKeepAlive
            self.instanceID = instanceID
            self.anycast = anycast
            self.weights = weights
            self.activeCheck = activeCheck
            self.tlsVersion = tlsVersion
            self.ciphers = ciphers
            self.cipherTemplate = cipherTemplate
            self.proxyReadTimeout = proxyReadTimeout
            self.proxySendTimeout = proxySendTimeout
            self.sniType = sniType
            self.sniHost = sniHost
            self.ipHeaders = ipHeaders
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
            case certType = "CertType"
            case cert = "Cert"
            case privateKey = "PrivateKey"
            case sslId = "SSLId"
            case isCdn = "IsCdn"
            case upstreamScheme = "UpstreamScheme"
            case httpsUpstreamPort = "HttpsUpstreamPort"
            case httpsRewrite = "HttpsRewrite"
            case upstreamType = "UpstreamType"
            case upstreamDomain = "UpstreamDomain"
            case srcList = "SrcList"
            case isHttp2 = "IsHttp2"
            case isWebsocket = "IsWebsocket"
            case loadBalance = "LoadBalance"
            case isGray = "IsGray"
            case edition = "Edition"
            case ports = "Ports"
            case isKeepAlive = "IsKeepAlive"
            case instanceID = "InstanceID"
            case anycast = "Anycast"
            case weights = "Weights"
            case activeCheck = "ActiveCheck"
            case tlsVersion = "TLSVersion"
            case ciphers = "Ciphers"
            case cipherTemplate = "CipherTemplate"
            case proxyReadTimeout = "ProxyReadTimeout"
            case proxySendTimeout = "ProxySendTimeout"
            case sniType = "SniType"
            case sniHost = "SniHost"
            case ipHeaders = "IpHeaders"
        }
    }

    /// ModifySpartaProtection返回参数结构体
    public struct ModifySpartaProtectionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改域名配置
    @inlinable @discardableResult
    public func modifySpartaProtection(_ input: ModifySpartaProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySpartaProtectionResponse> {
        self.client.execute(action: "ModifySpartaProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改域名配置
    @inlinable @discardableResult
    public func modifySpartaProtection(_ input: ModifySpartaProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySpartaProtectionResponse {
        try await self.client.execute(action: "ModifySpartaProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改域名配置
    @inlinable @discardableResult
    public func modifySpartaProtection(domain: String, domainId: String? = nil, certType: Int64? = nil, cert: String? = nil, privateKey: String? = nil, sslId: String? = nil, isCdn: Int64? = nil, upstreamScheme: String? = nil, httpsUpstreamPort: String? = nil, httpsRewrite: UInt64? = nil, upstreamType: Int64? = nil, upstreamDomain: String? = nil, srcList: [String]? = nil, isHttp2: Int64? = nil, isWebsocket: Int64? = nil, loadBalance: Int64? = nil, isGray: Int64? = nil, edition: String? = nil, ports: [SpartaProtectionPort]? = nil, isKeepAlive: String? = nil, instanceID: String? = nil, anycast: Int64? = nil, weights: [Int64]? = nil, activeCheck: Int64? = nil, tlsVersion: Int64? = nil, ciphers: [Int64]? = nil, cipherTemplate: Int64? = nil, proxyReadTimeout: Int64? = nil, proxySendTimeout: Int64? = nil, sniType: Int64? = nil, sniHost: String? = nil, ipHeaders: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySpartaProtectionResponse> {
        self.modifySpartaProtection(.init(domain: domain, domainId: domainId, certType: certType, cert: cert, privateKey: privateKey, sslId: sslId, isCdn: isCdn, upstreamScheme: upstreamScheme, httpsUpstreamPort: httpsUpstreamPort, httpsRewrite: httpsRewrite, upstreamType: upstreamType, upstreamDomain: upstreamDomain, srcList: srcList, isHttp2: isHttp2, isWebsocket: isWebsocket, loadBalance: loadBalance, isGray: isGray, edition: edition, ports: ports, isKeepAlive: isKeepAlive, instanceID: instanceID, anycast: anycast, weights: weights, activeCheck: activeCheck, tlsVersion: tlsVersion, ciphers: ciphers, cipherTemplate: cipherTemplate, proxyReadTimeout: proxyReadTimeout, proxySendTimeout: proxySendTimeout, sniType: sniType, sniHost: sniHost, ipHeaders: ipHeaders), region: region, logger: logger, on: eventLoop)
    }

    /// 修改域名配置
    @inlinable @discardableResult
    public func modifySpartaProtection(domain: String, domainId: String? = nil, certType: Int64? = nil, cert: String? = nil, privateKey: String? = nil, sslId: String? = nil, isCdn: Int64? = nil, upstreamScheme: String? = nil, httpsUpstreamPort: String? = nil, httpsRewrite: UInt64? = nil, upstreamType: Int64? = nil, upstreamDomain: String? = nil, srcList: [String]? = nil, isHttp2: Int64? = nil, isWebsocket: Int64? = nil, loadBalance: Int64? = nil, isGray: Int64? = nil, edition: String? = nil, ports: [SpartaProtectionPort]? = nil, isKeepAlive: String? = nil, instanceID: String? = nil, anycast: Int64? = nil, weights: [Int64]? = nil, activeCheck: Int64? = nil, tlsVersion: Int64? = nil, ciphers: [Int64]? = nil, cipherTemplate: Int64? = nil, proxyReadTimeout: Int64? = nil, proxySendTimeout: Int64? = nil, sniType: Int64? = nil, sniHost: String? = nil, ipHeaders: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySpartaProtectionResponse {
        try await self.modifySpartaProtection(.init(domain: domain, domainId: domainId, certType: certType, cert: cert, privateKey: privateKey, sslId: sslId, isCdn: isCdn, upstreamScheme: upstreamScheme, httpsUpstreamPort: httpsUpstreamPort, httpsRewrite: httpsRewrite, upstreamType: upstreamType, upstreamDomain: upstreamDomain, srcList: srcList, isHttp2: isHttp2, isWebsocket: isWebsocket, loadBalance: loadBalance, isGray: isGray, edition: edition, ports: ports, isKeepAlive: isKeepAlive, instanceID: instanceID, anycast: anycast, weights: weights, activeCheck: activeCheck, tlsVersion: tlsVersion, ciphers: ciphers, cipherTemplate: cipherTemplate, proxyReadTimeout: proxyReadTimeout, proxySendTimeout: proxySendTimeout, sniType: sniType, sniHost: sniHost, ipHeaders: ipHeaders), region: region, logger: logger, on: eventLoop)
    }
}
