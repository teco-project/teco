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

extension Teo {
    /// ModifyDnsRecord请求参数结构体
    public struct ModifyDnsRecordRequest: TCRequestModel {
        /// 记录ID。
        public let dnsRecordId: String

        /// 站点ID。
        public let zoneId: String

        /// DNS记录类型，取值有：
        /// <li>A：将域名指向一个外网 IPv4 地址，如 8.8.8.8；</li>
        /// <li>AAAA：将域名指向一个外网 IPv6 地址；</li>
        /// <li>MX：用于邮箱服务器，相关记录值/优先级参数由邮件注册商提供。存在多条 MX 记录时，优先级越低越优先；</li>
        /// <li>CNAME：将域名指向另一个域名，再由该域名解析出最终 IP 地址；</li>
        /// <li>TXT：对域名进行标识和说明，常用于域名验证和 SPF 记录（反垃圾邮件）；</li>
        /// <li>NS：如果需要将子域名交给其他 DNS 服务商解析，则需要添加 NS 记录。根域名无法添加 NS 记录；</li>
        /// <li>CAA：指定可为本站点颁发证书的 CA；</li>
        /// <li>SRV：标识某台服务器使用了某个服务，常见于微软系统的目录管理。</li>不填写保持原有配置。
        public let dnsRecordType: String?

        /// 记录名称，由主机记录+站点名称组成，不填写保持原有配置。
        public let dnsRecordName: String?

        /// 记录内容，不填写保持原有配置。
        public let content: String?

        /// 缓存时间，数值越小，修改记录各地生效时间越快，默认为300，单位：秒，不填写保持原有配置。
        public let ttl: Int64?

        /// 该参数在修改MX记录时生效，值越小优先级越高，用户可指定值范围为1~50，不指定默认为0，不填写保持原有配置。
        public let priority: Int64?

        /// 代理模式，取值有：
        /// <li>dns_only：仅DNS解析；</li>
        /// <li>proxied：代理加速。</li>不填写保持原有配置。
        public let mode: String?

        public init(dnsRecordId: String, zoneId: String, dnsRecordType: String? = nil, dnsRecordName: String? = nil, content: String? = nil, ttl: Int64? = nil, priority: Int64? = nil, mode: String? = nil) {
            self.dnsRecordId = dnsRecordId
            self.zoneId = zoneId
            self.dnsRecordType = dnsRecordType
            self.dnsRecordName = dnsRecordName
            self.content = content
            self.ttl = ttl
            self.priority = priority
            self.mode = mode
        }

        enum CodingKeys: String, CodingKey {
            case dnsRecordId = "DnsRecordId"
            case zoneId = "ZoneId"
            case dnsRecordType = "DnsRecordType"
            case dnsRecordName = "DnsRecordName"
            case content = "Content"
            case ttl = "TTL"
            case priority = "Priority"
            case mode = "Mode"
        }
    }

    /// ModifyDnsRecord返回参数结构体
    public struct ModifyDnsRecordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改 DNS 记录
    @inlinable @discardableResult
    public func modifyDnsRecord(_ input: ModifyDnsRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDnsRecordResponse> {
        self.client.execute(action: "ModifyDnsRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改 DNS 记录
    @inlinable @discardableResult
    public func modifyDnsRecord(_ input: ModifyDnsRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDnsRecordResponse {
        try await self.client.execute(action: "ModifyDnsRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改 DNS 记录
    @inlinable @discardableResult
    public func modifyDnsRecord(dnsRecordId: String, zoneId: String, dnsRecordType: String? = nil, dnsRecordName: String? = nil, content: String? = nil, ttl: Int64? = nil, priority: Int64? = nil, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDnsRecordResponse> {
        self.modifyDnsRecord(ModifyDnsRecordRequest(dnsRecordId: dnsRecordId, zoneId: zoneId, dnsRecordType: dnsRecordType, dnsRecordName: dnsRecordName, content: content, ttl: ttl, priority: priority, mode: mode), region: region, logger: logger, on: eventLoop)
    }

    /// 修改 DNS 记录
    @inlinable @discardableResult
    public func modifyDnsRecord(dnsRecordId: String, zoneId: String, dnsRecordType: String? = nil, dnsRecordName: String? = nil, content: String? = nil, ttl: Int64? = nil, priority: Int64? = nil, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDnsRecordResponse {
        try await self.modifyDnsRecord(ModifyDnsRecordRequest(dnsRecordId: dnsRecordId, zoneId: zoneId, dnsRecordType: dnsRecordType, dnsRecordName: dnsRecordName, content: content, ttl: ttl, priority: priority, mode: mode), region: region, logger: logger, on: eventLoop)
    }
}
