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
    /// CreateZone请求参数结构体
    public struct CreateZoneRequest: TCRequestModel {
        /// 站点名字
        public let name: String

        /// 接入方式，默认full
        /// - full NS接入
        /// - partial CNAME接入
        public let type: String?

        /// 是否跳过站点历史解析记录扫描
        public let jumpStart: Bool?

        /// 资源标签
        public let tags: [Tag]?

        public init(name: String, type: String? = nil, jumpStart: Bool? = nil, tags: [Tag]? = nil) {
            self.name = name
            self.type = type
            self.jumpStart = jumpStart
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case type = "Type"
            case jumpStart = "JumpStart"
            case tags = "Tags"
        }
    }

    /// CreateZone返回参数结构体
    public struct CreateZoneResponse: TCResponseModel {
        /// 站点ID
        public let id: String

        /// 站点名称
        public let name: String

        /// 站点接入方式
        public let type: String

        /// 站点状态
        /// - pending 未切换NS
        /// - active NS 已切换到分配的 NS
        /// - moved NS 从腾讯云切走
        public let status: String

        /// 当前使用的 NS 列表
        public let originalNameServers: [String]

        /// 给用户分配的 NS 列表
        public let nameServers: [String]

        /// 站点创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdOn: Date

        /// 站点更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifiedOn: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case type = "Type"
            case status = "Status"
            case originalNameServers = "OriginalNameServers"
            case nameServers = "NameServers"
            case createdOn = "CreatedOn"
            case modifiedOn = "ModifiedOn"
            case requestId = "RequestId"
        }
    }

    /// 创建站点
    ///
    /// 用于用户接入新的站点
    @inlinable
    public func createZone(_ input: CreateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateZoneResponse> {
        self.client.execute(action: "CreateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建站点
    ///
    /// 用于用户接入新的站点
    @inlinable
    public func createZone(_ input: CreateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateZoneResponse {
        try await self.client.execute(action: "CreateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建站点
    ///
    /// 用于用户接入新的站点
    @inlinable
    public func createZone(name: String, type: String? = nil, jumpStart: Bool? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateZoneResponse> {
        let input = CreateZoneRequest(name: name, type: type, jumpStart: jumpStart, tags: tags)
        return self.client.execute(action: "CreateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建站点
    ///
    /// 用于用户接入新的站点
    @inlinable
    public func createZone(name: String, type: String? = nil, jumpStart: Bool? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateZoneResponse {
        let input = CreateZoneRequest(name: name, type: type, jumpStart: jumpStart, tags: tags)
        return try await self.client.execute(action: "CreateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
