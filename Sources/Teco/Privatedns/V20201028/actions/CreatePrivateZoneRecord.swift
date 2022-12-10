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

extension Privatedns {
    /// 添加私有域解析记录
    ///
    /// 添加私有域解析记录
    @inlinable
    public func createPrivateZoneRecord(_ input: CreatePrivateZoneRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePrivateZoneRecordResponse > {
        self.client.execute(action: "CreatePrivateZoneRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加私有域解析记录
    ///
    /// 添加私有域解析记录
    @inlinable
    public func createPrivateZoneRecord(_ input: CreatePrivateZoneRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrivateZoneRecordResponse {
        try await self.client.execute(action: "CreatePrivateZoneRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreatePrivateZoneRecord请求参数结构体
    public struct CreatePrivateZoneRecordRequest: TCRequestModel {
        /// 私有域ID
        public let zoneId: String
        
        /// 记录类型，可选的记录类型为："A", "AAAA", "CNAME", "MX", "TXT", "PTR"
        public let recordType: String
        
        /// 子域名，例如 "www", "m", "@"
        public let subDomain: String
        
        /// 记录值，例如 IP：192.168.10.2，CNAME：cname.qcloud.com.，MX：mail.qcloud.com.
        public let recordValue: String
        
        /// 记录权重，值为1-100
        public let weight: Int64?
        
        /// MX优先级：记录类型为MX时必填。取值范围：5,10,15,20,30,40,50
        public let mx: Int64?
        
        /// 记录缓存时间，数值越小生效越快，取值1-86400s, 默认 600
        public let ttl: Int64?
        
        public init (zoneId: String, recordType: String, subDomain: String, recordValue: String, weight: Int64?, mx: Int64?, ttl: Int64?) {
            self.zoneId = zoneId
            self.recordType = recordType
            self.subDomain = subDomain
            self.recordValue = recordValue
            self.weight = weight
            self.mx = mx
            self.ttl = ttl
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case recordType = "RecordType"
            case subDomain = "SubDomain"
            case recordValue = "RecordValue"
            case weight = "Weight"
            case mx = "MX"
            case ttl = "TTL"
        }
    }
    
    /// CreatePrivateZoneRecord返回参数结构体
    public struct CreatePrivateZoneRecordResponse: TCResponseModel {
        /// 记录Id
        public let recordId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case recordId = "RecordId"
            case requestId = "RequestId"
        }
    }
}