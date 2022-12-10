//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Vpc {
    /// 下载SSL-VPN-CLIENT 客户端证书
    ///
    /// 下载SSL-VPN-CLIENT 客户端证书
    @inlinable
    public func downloadVpnGatewaySslClientCert(_ input: DownloadVpnGatewaySslClientCertRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DownloadVpnGatewaySslClientCertResponse > {
        self.client.execute(action: "DownloadVpnGatewaySslClientCert", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 下载SSL-VPN-CLIENT 客户端证书
    ///
    /// 下载SSL-VPN-CLIENT 客户端证书
    @inlinable
    public func downloadVpnGatewaySslClientCert(_ input: DownloadVpnGatewaySslClientCertRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadVpnGatewaySslClientCertResponse {
        try await self.client.execute(action: "DownloadVpnGatewaySslClientCert", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DownloadVpnGatewaySslClientCert请求参数结构体
    public struct DownloadVpnGatewaySslClientCertRequest: TCRequestModel {
        /// SSL-VPN-CLIENT 实例ID。
        public let sslVpnClientId: String
        
        /// SAML-TOKEN
        public let samlToken: String?
        
        /// VPN门户网站使用。默认Flase
        public let isVpnPortal: Bool?
        
        public init (sslVpnClientId: String, samlToken: String?, isVpnPortal: Bool?) {
            self.sslVpnClientId = sslVpnClientId
            self.samlToken = samlToken
            self.isVpnPortal = isVpnPortal
        }
        
        enum CodingKeys: String, CodingKey {
            case sslVpnClientId = "SslVpnClientId"
            case samlToken = "SamlToken"
            case isVpnPortal = "IsVpnPortal"
        }
    }
    
    /// DownloadVpnGatewaySslClientCert返回参数结构体
    public struct DownloadVpnGatewaySslClientCertResponse: TCResponseModel {
        /// 无
        public let sslClientConfigsSet: String
        
        /// SSL-VPN client配置
        public let sslClientConfig: [SslClientConfig]
        
        /// 是否鉴权成功 只有传入SamlToken 才生效
        public let authenticated: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sslClientConfigsSet = "SslClientConfigsSet"
            case sslClientConfig = "SslClientConfig"
            case authenticated = "Authenticated"
            case requestId = "RequestId"
        }
    }
}