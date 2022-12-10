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

extension Teo {
    /// 创建 DNS 记录
    ///
    /// 创建 DNS 记录
    @inlinable
    public func createDnsRecord(_ input: CreateDnsRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDnsRecordResponse > {
        self.client.execute(action: "CreateDnsRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建 DNS 记录
    ///
    /// 创建 DNS 记录
    @inlinable
    public func createDnsRecord(_ input: CreateDnsRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDnsRecordResponse {
        try await self.client.execute(action: "CreateDnsRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateDnsRecord请求参数结构体
    public struct CreateDnsRecordRequest: TCRequestModel {
        /// DNS记录所属站点ID。
        public let zoneId: String
        
        /// DNS记录类型，取值有：
        /// <li>A：将域名指向一个外网 IPv4 地址，如 8.8.8.8；</li>
        /// <li>AAAA：将域名指向一个外网 IPv6 地址；</li>
        /// <li>MX：用于邮箱服务器，相关记录值/优先级参数由邮件注册商提供。存在多条 MX 记录时，优先级越低越优先；</li>
        /// <li>CNAME：将域名指向另一个域名，再由该域名解析出最终 IP 地址；</li>
        /// <li>TXT：对域名进行标识和说明，常用于域名验证和 SPF 记录（反垃圾邮件）；</li>
        /// <li>NS：如果需要将子域名交给其他 DNS 服务商解析，则需要添加 NS 记录。根域名无法添加 NS 记录；</li>
        /// <li>CAA：指定可为本站点颁发证书的 CA；</li>
        /// <li>SRV：标识某台服务器使用了某个服务，常见于微软系统的目录管理。</li>
        public let type: String
        
        /// DNS记录名。
        public let name: String
        
        /// DNS记录内容。
        public let content: String
        
        /// 代理模式，取值有：
        /// <li>dns_only：仅DNS解析；</li>
        /// <li>proxied：代理加速。</li>
        public let mode: String
        
        /// 缓存时间，数值越小，修改记录各地生效时间越快，默认为300，单位：秒。
        public let ttl: Int64?
        
        /// 该参数在创建MX记录时生效，值越小优先级越高，用户可指定值范围1~50，不指定默认为0。
        public let priority: Int64?
        
        public init (zoneId: String, type: String, name: String, content: String, mode: String, ttl: Int64?, priority: Int64?) {
            self.zoneId = zoneId
            self.type = type
            self.name = name
            self.content = content
            self.mode = mode
            self.ttl = ttl
            self.priority = priority
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case type = "Type"
            case name = "Name"
            case content = "Content"
            case mode = "Mode"
            case ttl = "TTL"
            case priority = "Priority"
        }
    }
    
    /// CreateDnsRecord返回参数结构体
    public struct CreateDnsRecordResponse: TCResponseModel {
        /// DNS解析记录ID。
        public let dnsRecordId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dnsRecordId = "DnsRecordId"
            case requestId = "RequestId"
        }
    }
}