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
    /// 创建SSL-VPN Server端
    ///
    /// 创建 Server端
    @inlinable
    public func createVpnGatewaySslServer(_ input: CreateVpnGatewaySslServerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateVpnGatewaySslServerResponse > {
        self.client.execute(action: "CreateVpnGatewaySslServer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建SSL-VPN Server端
    ///
    /// 创建 Server端
    @inlinable
    public func createVpnGatewaySslServer(_ input: CreateVpnGatewaySslServerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpnGatewaySslServerResponse {
        try await self.client.execute(action: "CreateVpnGatewaySslServer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateVpnGatewaySslServer请求参数结构体
    public struct CreateVpnGatewaySslServerRequest: TCRequestModel {
        /// VPN实例ID
        public let vpnGatewayId: String
        
        /// SSL_VPN_SERVER 实例名
        public let sslVpnServerName: String
        
        /// 本端地址网段
        public let localAddress: [String]
        
        /// 客户端地址网段
        public let remoteAddress: String
        
        /// SSL VPN服务端监听协议。当前仅支持 UDP。默认UDP
        public let sslVpnProtocol: String?
        
        /// SSL VPN服务端监听协议端口。默认1194。
        public let sslVpnPort: Int64?
        
        /// 认证算法。可选 'SHA1', 'MD5', 'NONE'。默认NONE
        public let integrityAlgorithm: String?
        
        /// 加密算法。可选 'AES-128-CBC', 'AES-192-CBC', 'AES-256-CBC', 'NONE'。默认NONE
        public let encryptAlgorithm: String?
        
        /// 是否支持压缩。当前仅支持不支持压缩。默认False
        public let compress: Bool?
        
        /// 是否开启SSO认证
        public let ssoEnabled: Bool?
        
        /// 是否开启策略访问控制
        public let accessPolicyEnabled: Bool?
        
        /// SAML-DATA
        public let samlData: String?
        
        public init (vpnGatewayId: String, sslVpnServerName: String, localAddress: [String], remoteAddress: String, sslVpnProtocol: String?, sslVpnPort: Int64?, integrityAlgorithm: String?, encryptAlgorithm: String?, compress: Bool?, ssoEnabled: Bool?, accessPolicyEnabled: Bool?, samlData: String?) {
            self.vpnGatewayId = vpnGatewayId
            self.sslVpnServerName = sslVpnServerName
            self.localAddress = localAddress
            self.remoteAddress = remoteAddress
            self.sslVpnProtocol = sslVpnProtocol
            self.sslVpnPort = sslVpnPort
            self.integrityAlgorithm = integrityAlgorithm
            self.encryptAlgorithm = encryptAlgorithm
            self.compress = compress
            self.ssoEnabled = ssoEnabled
            self.accessPolicyEnabled = accessPolicyEnabled
            self.samlData = samlData
        }
        
        enum CodingKeys: String, CodingKey {
            case vpnGatewayId = "VpnGatewayId"
            case sslVpnServerName = "SslVpnServerName"
            case localAddress = "LocalAddress"
            case remoteAddress = "RemoteAddress"
            case sslVpnProtocol = "SslVpnProtocol"
            case sslVpnPort = "SslVpnPort"
            case integrityAlgorithm = "IntegrityAlgorithm"
            case encryptAlgorithm = "EncryptAlgorithm"
            case compress = "Compress"
            case ssoEnabled = "SsoEnabled"
            case accessPolicyEnabled = "AccessPolicyEnabled"
            case samlData = "SamlData"
        }
    }
    
    /// CreateVpnGatewaySslServer返回参数结构体
    public struct CreateVpnGatewaySslServerResponse: TCResponseModel {
        /// 创建SSL-VPN server 异步任务ID
        public let taskId: Int64
        
        /// SSL-VPN server 唯一ID
        public let sslVpnServerId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case sslVpnServerId = "SslVpnServerId"
            case requestId = "RequestId"
        }
    }
}