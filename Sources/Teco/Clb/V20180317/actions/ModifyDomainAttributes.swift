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

extension Clb {
    /// 修改负载均衡七层监听器转发规则的域名级别属性
    ///
    /// ModifyDomainAttributes接口用于修改负载均衡7层监听器转发规则的域名级别属性，如修改域名、修改DefaultServer、开启/关闭Http2、修改证书。
    /// 本接口为异步接口，本接口返回成功后，需以返回的RequestId为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable
    public func modifyDomainAttributes(_ input: ModifyDomainAttributesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDomainAttributesResponse > {
        self.client.execute(action: "ModifyDomainAttributes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改负载均衡七层监听器转发规则的域名级别属性
    ///
    /// ModifyDomainAttributes接口用于修改负载均衡7层监听器转发规则的域名级别属性，如修改域名、修改DefaultServer、开启/关闭Http2、修改证书。
    /// 本接口为异步接口，本接口返回成功后，需以返回的RequestId为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable
    public func modifyDomainAttributes(_ input: ModifyDomainAttributesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainAttributesResponse {
        try await self.client.execute(action: "ModifyDomainAttributes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyDomainAttributes请求参数结构体
    public struct ModifyDomainAttributesRequest: TCRequestModel {
        /// 负载均衡实例ID。
        public let loadBalancerId: String
        
        /// 负载均衡监听器ID。
        public let listenerId: String
        
        /// 域名（必须是已经创建的转发规则下的域名），如果是多域名，可以指定多域名列表中的任意一个。
        public let domain: String
        
        /// 要修改的新域名。NewDomain和NewDomains只能传一个。
        public let newDomain: String?
        
        /// 域名相关的证书信息，注意，仅对启用SNI的监听器适用，不可和MultiCertInfo 同时传入。
        public let certificate: CertificateInput
        
        /// 是否开启Http2，注意，只有HTTPS域名才能开启Http2。
        public let http2: Bool?
        
        /// 是否设为默认域名，注意，一个监听器下只能设置一个默认域名。
        public let defaultServer: Bool?
        
        /// 监听器下必须配置一个默认域名，若要关闭原默认域名，必须同时指定另一个域名作为新的默认域名，如果新的默认域名是多域名，可以指定多域名列表中的任意一个。
        public let newDefaultServerDomain: String?
        
        /// 要修改的新域名列表。NewDomain和NewDomains只能传一个。
        public let newDomains: [String]?
        
        /// 域名相关的证书信息，注意，仅对启用SNI的监听器适用；支持同时传入多本算法类型不同的服务器证书，不可和MultiCertInfo 同时传入。
        public let multiCertInfo: MultiCertInfo
        
        public init (loadBalancerId: String, listenerId: String, domain: String, newDomain: String?, certificate: CertificateInput, http2: Bool?, defaultServer: Bool?, newDefaultServerDomain: String?, newDomains: [String]?, multiCertInfo: MultiCertInfo) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domain = domain
            self.newDomain = newDomain
            self.certificate = certificate
            self.http2 = http2
            self.defaultServer = defaultServer
            self.newDefaultServerDomain = newDefaultServerDomain
            self.newDomains = newDomains
            self.multiCertInfo = multiCertInfo
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domain = "Domain"
            case newDomain = "NewDomain"
            case certificate = "Certificate"
            case http2 = "Http2"
            case defaultServer = "DefaultServer"
            case newDefaultServerDomain = "NewDefaultServerDomain"
            case newDomains = "NewDomains"
            case multiCertInfo = "MultiCertInfo"
        }
    }
    
    /// ModifyDomainAttributes返回参数结构体
    public struct ModifyDomainAttributesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
