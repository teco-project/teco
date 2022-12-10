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

extension Dnspod {
    /// 修改记录
    @inlinable
    public func modifyRecord(_ input: ModifyRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRecordResponse > {
        self.client.execute(action: "ModifyRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改记录
    @inlinable
    public func modifyRecord(_ input: ModifyRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordResponse {
        try await self.client.execute(action: "ModifyRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyRecord请求参数结构体
    public struct ModifyRecordRequest: TCRequestModel {
        /// 域名
        public let domain: String
        
        /// 记录类型，通过 API 记录类型获得，大写英文，比如：A 。
        public let recordType: String
        
        /// 记录线路，通过 API 记录线路获得，中文，比如：默认。
        public let recordLine: String
        
        /// 记录值，如 IP : 200.200.200.200， CNAME : cname.dnspod.com.， MX : mail.dnspod.com.。
        public let value: String
        
        /// 记录 ID 。可以通过接口DescribeRecordList查到所有的解析记录列表以及对应的RecordId
        public let recordId: UInt64
        
        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?
        
        /// 主机记录，如 www，如果不传，默认为 @。
        public let subDomain: String?
        
        /// 线路的 ID，通过 API 记录线路获得，英文字符串，比如：10=1。参数RecordLineId优先级高于RecordLine，如果同时传递二者，优先使用RecordLineId参数。
        public let recordLineId: String?
        
        /// MX 优先级，当记录类型是 MX 时有效，范围1-20，MX 记录时必选。
        public let mx: UInt64?
        
        /// TTL，范围1-604800，不同等级域名最小值不同。
        public let ttl: UInt64?
        
        /// 权重信息，0到100的整数。仅企业 VIP 域名可用，0 表示关闭，不传该参数，表示不设置权重信息。
        public let weight: UInt64?
        
        /// 记录初始状态，取值范围为 ENABLE 和 DISABLE 。默认为 ENABLE ，如果传入 DISABLE，解析不会生效，也不会验证负载均衡的限制。
        public let status: String?
        
        public init (domain: String, recordType: String, recordLine: String, value: String, recordId: UInt64, domainId: UInt64?, subDomain: String?, recordLineId: String?, mx: UInt64?, ttl: UInt64?, weight: UInt64?, status: String?) {
            self.domain = domain
            self.recordType = recordType
            self.recordLine = recordLine
            self.value = value
            self.recordId = recordId
            self.domainId = domainId
            self.subDomain = subDomain
            self.recordLineId = recordLineId
            self.mx = mx
            self.ttl = ttl
            self.weight = weight
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case recordType = "RecordType"
            case recordLine = "RecordLine"
            case value = "Value"
            case recordId = "RecordId"
            case domainId = "DomainId"
            case subDomain = "SubDomain"
            case recordLineId = "RecordLineId"
            case mx = "MX"
            case ttl = "TTL"
            case weight = "Weight"
            case status = "Status"
        }
    }
    
    /// ModifyRecord返回参数结构体
    public struct ModifyRecordResponse: TCResponseModel {
        /// 记录ID
        public let recordId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case recordId = "RecordId"
            case requestId = "RequestId"
        }
    }
}
