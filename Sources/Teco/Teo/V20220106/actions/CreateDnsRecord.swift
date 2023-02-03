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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Teo {
    /// CreateDnsRecord请求参数结构体
    public struct CreateDnsRecordRequest: TCRequestModel {
        /// 站点 ID
        public let zoneId: String

        /// 记录类型
        public let type: String

        /// 记录名
        public let name: String

        /// 记录内容
        public let content: String

        /// 代理模式，可选值：dns_only, cdn_only, secure_cdn
        public let mode: String

        /// 生存时间值
        public let ttl: Int64?

        /// 优先级
        public let priority: Int64?

        public init(zoneId: String, type: String, name: String, content: String, mode: String, ttl: Int64? = nil, priority: Int64? = nil) {
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
            case ttl = "Ttl"
            case priority = "Priority"
        }
    }

    /// CreateDnsRecord返回参数结构体
    public struct CreateDnsRecordResponse: TCResponseModel {
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
        /// active: 生效
        /// pending: 不生效
        public let status: String

        /// 已锁定
        public let locked: Bool

        /// 创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdOn: Date

        /// 修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifiedOn: Date

        /// 站点 ID
        public let zoneId: String

        /// 站点名称
        public let zoneName: String

        /// CNAME 地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cname: String?

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
            case locked = "Locked"
            case createdOn = "CreatedOn"
            case modifiedOn = "ModifiedOn"
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
            case cname = "Cname"
            case requestId = "RequestId"
        }
    }

    /// 创建 DNS 记录
    @inlinable
    public func createDnsRecord(_ input: CreateDnsRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDnsRecordResponse> {
        self.client.execute(action: "CreateDnsRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 DNS 记录
    @inlinable
    public func createDnsRecord(_ input: CreateDnsRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDnsRecordResponse {
        try await self.client.execute(action: "CreateDnsRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建 DNS 记录
    @inlinable
    public func createDnsRecord(zoneId: String, type: String, name: String, content: String, mode: String, ttl: Int64? = nil, priority: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDnsRecordResponse> {
        let input = CreateDnsRecordRequest(zoneId: zoneId, type: type, name: name, content: content, mode: mode, ttl: ttl, priority: priority)
        return self.client.execute(action: "CreateDnsRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 DNS 记录
    @inlinable
    public func createDnsRecord(zoneId: String, type: String, name: String, content: String, mode: String, ttl: Int64? = nil, priority: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDnsRecordResponse {
        let input = CreateDnsRecordRequest(zoneId: zoneId, type: type, name: name, content: content, mode: mode, ttl: ttl, priority: priority)
        return try await self.client.execute(action: "CreateDnsRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
