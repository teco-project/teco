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

extension Gaap {
    /// CreateHTTPSListener请求参数结构体
    public struct CreateHTTPSListenerRequest: TCRequestModel {
        /// 监听器名称
        public let listenerName: String
        
        /// 监听器端口，基于同种传输层协议（TCP 或 UDP）的监听器，端口不可重复
        public let port: UInt64
        
        /// 服务器证书ID
        public let certificateId: String
        
        /// 加速通道转发到源站的协议类型：HTTP | HTTPS
        public let forwardProtocol: String
        
        /// 通道ID，与GroupId之间只能设置一个。表示创建通道的监听器。
        public let proxyId: String?
        
        /// 认证类型，其中：
        /// 0，单向认证；
        /// 1，双向认证。
        /// 默认使用单向认证。
        public let authType: UInt64?
        
        /// 客户端CA单证书ID，仅当双向认证时设置该参数或PolyClientCertificateIds参数
        public let clientCertificateId: String?
        
        /// 新的客户端多CA证书ID，仅当双向认证时设置该参数或设置ClientCertificateId参数
        public let polyClientCertificateIds: [String]?
        
        /// 通道组ID，与ProxyId之间只能设置一个。表示创建通道组的监听器。
        public let groupId: String?
        
        /// 支持Http3的开关，其中：
        /// 0，表示不需要支持Http3接入；
        /// 1，表示需要支持Http3接入。
        /// 注意：如果支持了Http3的功能，那么该监听器会占用对应的UDP接入端口，不可再创建相同端口的UDP监听器。
        /// 该功能的启停无法在监听器创建完毕后再修改。
        public let http3Supported: Int64?
        
        public init (listenerName: String, port: UInt64, certificateId: String, forwardProtocol: String, proxyId: String? = nil, authType: UInt64? = nil, clientCertificateId: String? = nil, polyClientCertificateIds: [String]? = nil, groupId: String? = nil, http3Supported: Int64? = nil) {
            self.listenerName = listenerName
            self.port = port
            self.certificateId = certificateId
            self.forwardProtocol = forwardProtocol
            self.proxyId = proxyId
            self.authType = authType
            self.clientCertificateId = clientCertificateId
            self.polyClientCertificateIds = polyClientCertificateIds
            self.groupId = groupId
            self.http3Supported = http3Supported
        }
        
        enum CodingKeys: String, CodingKey {
            case listenerName = "ListenerName"
            case port = "Port"
            case certificateId = "CertificateId"
            case forwardProtocol = "ForwardProtocol"
            case proxyId = "ProxyId"
            case authType = "AuthType"
            case clientCertificateId = "ClientCertificateId"
            case polyClientCertificateIds = "PolyClientCertificateIds"
            case groupId = "GroupId"
            case http3Supported = "Http3Supported"
        }
    }
    
    /// CreateHTTPSListener返回参数结构体
    public struct CreateHTTPSListenerResponse: TCResponseModel {
        /// 创建的监听器ID
        public let listenerId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建HTTPS监听器
    ///
    /// 该接口（CreateHTTPSListener）用于在通道实例下创建HTTPS协议类型的监听器。
    @inlinable
    public func createHTTPSListener(_ input: CreateHTTPSListenerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateHTTPSListenerResponse > {
        self.client.execute(action: "CreateHTTPSListener", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建HTTPS监听器
    ///
    /// 该接口（CreateHTTPSListener）用于在通道实例下创建HTTPS协议类型的监听器。
    @inlinable
    public func createHTTPSListener(_ input: CreateHTTPSListenerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHTTPSListenerResponse {
        try await self.client.execute(action: "CreateHTTPSListener", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
