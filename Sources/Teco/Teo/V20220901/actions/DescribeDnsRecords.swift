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
    /// 查询 DNS 记录列表
    ///
    /// 查询 DNS 记录列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeDnsRecords(_ input: DescribeDnsRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDnsRecordsResponse > {
        self.client.execute(action: "DescribeDnsRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询 DNS 记录列表
    ///
    /// 查询 DNS 记录列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeDnsRecords(_ input: DescribeDnsRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDnsRecordsResponse {
        try await self.client.execute(action: "DescribeDnsRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDnsRecords请求参数结构体
    public struct DescribeDnsRecordsRequest: TCRequestModel {
        /// DNS记录所属站点ID。不填写该参数默认返回所有站点下的记录。
        public let zoneId: String?
        
        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// <li>record-id<br>   按照【<strong>DNS记录id</strong>】进行过滤。DNS记录ID形如：record-1a8df68z。<br>   类型：String<br>   必选：否
        /// <li>record-name<br>   按照【<strong>DNS记录名称</strong>】进行过滤。<br>   类型：String<br>   必选：否
        /// <li>record-type<br>   按照【<strong>DNS记录类型</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   A：将域名指向一个外网 IPv4 地址，如 8.8.8.8<br>   AAAA：将域名指向一个外网 IPv6 地址<br>   CNAME：将域名指向另一个域名，再由该域名解析出最终 IP 地址<br>   TXT：对域名进行标识和说明，常用于域名验证和 SPF 记录（反垃圾邮件）<br>   NS：如果需要将子域名交给其他 DNS 服务商解析，则需要添加 NS 记录。根域名无法添加 NS 记录<br>   CAA：指定可为本站点颁发证书的 CA<br>   SRV：标识某台服务器使用了某个服务，常见于微软系统的目录管理<br>   MX：指定收件人邮件服务器。
        /// <li>mode<br>   按照【<strong>代理模式</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   dns_only：仅DNS解析<br>   proxied：代理加速
        /// <li>ttl<br>   按照【<strong>解析生效时间</strong>】进行过滤。<br>   类型：string<br>   必选：否
        public let filters: [AdvancedFilter]?
        
        /// 列表排序方式，取值有：
        /// <li>asc：升序排列；</li>
        /// <li>desc：降序排列。</li>默认值为asc。
        public let direction: String?
        
        /// 匹配方式，取值有：
        /// <li>all：返回匹配所有查询条件的记录；</li>
        /// <li>any：返回匹配任意一个查询条件的记录。</li>默认值为all。
        public let match: String?
        
        /// 分页查询限制数目，默认值：20，上限：1000。
        public let limit: Int64?
        
        /// 分页查询偏移量，默认为 0。
        public let offset: Int64?
        
        /// 排序依据，取值有：
        /// <li>content：DNS记录内容；</li>
        /// <li>created_on：DNS记录创建时间；</li>
        /// <li>mode：代理模式；</li>
        /// <li>record-name：DNS记录名称；</li>
        /// <li>ttl：解析记录生效时间；</li>
        /// <li>record-type：DNS记录类型。</li>默认根据record-type, recrod-name属性组合排序。
        public let order: String?
        
        public init (zoneId: String?, filters: [AdvancedFilter]?, direction: String?, match: String?, limit: Int64?, offset: Int64?, order: String?) {
            self.zoneId = zoneId
            self.filters = filters
            self.direction = direction
            self.match = match
            self.limit = limit
            self.offset = offset
            self.order = order
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case filters = "Filters"
            case direction = "Direction"
            case match = "Match"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
        }
    }
    
    /// DescribeDnsRecords返回参数结构体
    public struct DescribeDnsRecordsResponse: TCResponseModel {
        /// DNS记录总数。
        public let totalCount: Int64
        
        /// DNS 记录列表。
        public let dnsRecords: [DnsRecord]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dnsRecords = "DnsRecords"
            case requestId = "RequestId"
        }
    }
}