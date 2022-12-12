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

@_exported import struct Foundation.Date

extension Teo {
    /// ModifyDnsRecord请求参数结构体
    public struct ModifyDnsRecordRequest: TCRequestModel {
        /// 记录 ID
        public let id: String
        
        /// 站点 ID
        public let zoneId: String
        
        /// 记录类型
        public let type: String?
        
        /// 记录名称
        public let name: String?
        
        /// 记录内容
        public let content: String?
        
        /// 生存时间值
        public let ttl: Int64?
        
        /// 优先级
        public let priority: Int64?
        
        /// 代理模式
        public let mode: String?
        
        public init (id: String, zoneId: String, type: String? = nil, name: String? = nil, content: String? = nil, ttl: Int64? = nil, priority: Int64? = nil, mode: String? = nil) {
            self.id = id
            self.zoneId = zoneId
            self.type = type
            self.name = name
            self.content = content
            self.ttl = ttl
            self.priority = priority
            self.mode = mode
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case zoneId = "ZoneId"
            case type = "Type"
            case name = "Name"
            case content = "Content"
            case ttl = "Ttl"
            case priority = "Priority"
            case mode = "Mode"
        }
    }
    
    /// ModifyDnsRecord返回参数结构体
    public struct ModifyDnsRecordResponse: TCResponseModel {
        /// 记录 ID
        public let id: String
        
        /// 记录类型
        public let type: String
        
        /// 记录名称
        public let name: String
        
        /// 记录内容
        public let content: String
        
        /// 生存时间值
        public let ttl: Int64
        
        /// 优先级
        public let priority: Int64
        
        /// 代理模式
        public let mode: String
        
        /// 解析状态
        public let status: String
        
        /// CNAME 地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cname: String?
        
        /// 锁定状态
        public let locked: Bool
        
        /// 创建时间
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let createdOn: Date
        
        /// 修改时间
        // FIXME: Codable support not implemented for datetime_iso yet.
        public let modifiedOn: Date
        
        /// 站点 ID
        public let zoneId: String
        
        /// 站点名称
        public let zoneName: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case type = "Type"
            case name = "Name"
            case content = "Content"
            case ttl = "Ttl"
            case priority = "Priority"
            case mode = "Mode"
            case status = "Status"
            case cname = "Cname"
            case locked = "Locked"
            case createdOn = "CreatedOn"
            case modifiedOn = "ModifiedOn"
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
            case requestId = "RequestId"
        }
    }
    
    /// 修改 DNS 记录
    @inlinable
    public func modifyDnsRecord(_ input: ModifyDnsRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDnsRecordResponse > {
        self.client.execute(action: "ModifyDnsRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改 DNS 记录
    @inlinable
    public func modifyDnsRecord(_ input: ModifyDnsRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDnsRecordResponse {
        try await self.client.execute(action: "ModifyDnsRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
