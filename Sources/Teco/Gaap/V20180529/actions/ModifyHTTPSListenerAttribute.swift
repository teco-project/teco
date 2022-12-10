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

extension Gaap {
    /// 修改HTTPS监听器配置
    ///
    /// 该接口（ModifyHTTPSListenerAttribute）用于修改HTTPS监听器配置，当前不支持通道组和v1版本通道。
    @inlinable
    public func modifyHTTPSListenerAttribute(_ input: ModifyHTTPSListenerAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyHTTPSListenerAttributeResponse > {
        self.client.execute(action: "ModifyHTTPSListenerAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改HTTPS监听器配置
    ///
    /// 该接口（ModifyHTTPSListenerAttribute）用于修改HTTPS监听器配置，当前不支持通道组和v1版本通道。
    @inlinable
    public func modifyHTTPSListenerAttribute(_ input: ModifyHTTPSListenerAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHTTPSListenerAttributeResponse {
        try await self.client.execute(action: "ModifyHTTPSListenerAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyHTTPSListenerAttribute请求参数结构体
    public struct ModifyHTTPSListenerAttributeRequest: TCRequestModel {
        /// 监听器ID
        public let listenerId: String
        
        /// 通道ID， 若为单通道监听器，此项必须填写
        public let proxyId: String?
        
        /// 修改后的监听器名称
        public let listenerName: String?
        
        /// 监听器后端转发与源站之间的协议类型
        public let forwardProtocol: String?
        
        /// 修改后的监听器服务器证书ID
        public let certificateId: String?
        
        /// 修改后的监听器客户端证书ID，不支持多客户端证书，多客户端证书新采用PolyClientCertificateIds字段
        public let clientCertificateId: String?
        
        /// 新字段,修改后的监听器客户端证书ID
        public let polyClientCertificateIds: [String]?
        
        public init (listenerId: String, proxyId: String?, listenerName: String?, forwardProtocol: String?, certificateId: String?, clientCertificateId: String?, polyClientCertificateIds: [String]?) {
            self.listenerId = listenerId
            self.proxyId = proxyId
            self.listenerName = listenerName
            self.forwardProtocol = forwardProtocol
            self.certificateId = certificateId
            self.clientCertificateId = clientCertificateId
            self.polyClientCertificateIds = polyClientCertificateIds
        }
        
        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case proxyId = "ProxyId"
            case listenerName = "ListenerName"
            case forwardProtocol = "ForwardProtocol"
            case certificateId = "CertificateId"
            case clientCertificateId = "ClientCertificateId"
            case polyClientCertificateIds = "PolyClientCertificateIds"
        }
    }
    
    /// ModifyHTTPSListenerAttribute返回参数结构体
    public struct ModifyHTTPSListenerAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}