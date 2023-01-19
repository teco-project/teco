//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// ModifyZone请求参数结构体
    public struct ModifyZoneRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 站点接入方式，取值有：
        /// <li> full：NS 接入；</li>
        /// <li> partial：CNAME 接入。</li>不填写保持原有配置。
        public let type: String?

        /// 自定义站点信息，以替代系统默认分配的名称服务器。不填写保持原有配置。
        public let vanityNameServers: VanityNameServers?

        /// 站点别名。数字、英文、-和_组合，限制20个字符。
        public let aliasZoneName: String?

        public init(zoneId: String, type: String? = nil, vanityNameServers: VanityNameServers? = nil, aliasZoneName: String? = nil) {
            self.zoneId = zoneId
            self.type = type
            self.vanityNameServers = vanityNameServers
            self.aliasZoneName = aliasZoneName
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case type = "Type"
            case vanityNameServers = "VanityNameServers"
            case aliasZoneName = "AliasZoneName"
        }
    }

    /// ModifyZone返回参数结构体
    public struct ModifyZoneResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改站点
    ///
    /// 修改站点信息。
    @inlinable
    public func modifyZone(_ input: ModifyZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneResponse> {
        self.client.execute(action: "ModifyZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改站点
    ///
    /// 修改站点信息。
    @inlinable
    public func modifyZone(_ input: ModifyZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneResponse {
        try await self.client.execute(action: "ModifyZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改站点
    ///
    /// 修改站点信息。
    @inlinable
    public func modifyZone(zoneId: String, type: String? = nil, vanityNameServers: VanityNameServers? = nil, aliasZoneName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneResponse> {
        self.modifyZone(ModifyZoneRequest(zoneId: zoneId, type: type, vanityNameServers: vanityNameServers, aliasZoneName: aliasZoneName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改站点
    ///
    /// 修改站点信息。
    @inlinable
    public func modifyZone(zoneId: String, type: String? = nil, vanityNameServers: VanityNameServers? = nil, aliasZoneName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneResponse {
        try await self.modifyZone(ModifyZoneRequest(zoneId: zoneId, type: type, vanityNameServers: vanityNameServers, aliasZoneName: aliasZoneName), region: region, logger: logger, on: eventLoop)
    }
}
