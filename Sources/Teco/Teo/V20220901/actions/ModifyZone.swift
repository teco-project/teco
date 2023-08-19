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

import Logging
import NIOCore
import TecoCore

extension Teo {
    /// ModifyZone请求参数结构体
    public struct ModifyZoneRequest: TCRequest {
        /// 站点 ID。
        public let zoneId: String

        /// 站点接入方式，取值有：
        /// - full：NS 接入；
        /// - partial：CNAME 接入，如果站点当前是无域名接入，仅支持切换到CNAME接入。
        /// 不填写保持原有配置。
        public let type: String?

        /// 自定义站点信息，以替代系统默认分配的名称服务器。不填写保持原有配置。当站点是无域名接入方式时不允许传此参数。
        public let vanityNameServers: VanityNameServers?

        /// 站点别名。数字、英文、-和_组合，限制20个字符。
        public let aliasZoneName: String?

        /// 站点接入地域，取值有：
        /// - global：全球；
        /// - mainland：中国大陆；
        /// - overseas：境外区域。
        /// 当站点是无域名接入方式时，不允许传此参数。
        public let area: String?

        /// 站点名称。仅当站点由无域名接入方式切换到CNAME接入方式的场景下有效。
        public let zoneName: String?

        public init(zoneId: String, type: String? = nil, vanityNameServers: VanityNameServers? = nil, aliasZoneName: String? = nil, area: String? = nil, zoneName: String? = nil) {
            self.zoneId = zoneId
            self.type = type
            self.vanityNameServers = vanityNameServers
            self.aliasZoneName = aliasZoneName
            self.area = area
            self.zoneName = zoneName
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case type = "Type"
            case vanityNameServers = "VanityNameServers"
            case aliasZoneName = "AliasZoneName"
            case area = "Area"
            case zoneName = "ZoneName"
        }
    }

    /// ModifyZone返回参数结构体
    public struct ModifyZoneResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改站点
    ///
    /// 修改站点信息。
    @inlinable @discardableResult
    public func modifyZone(_ input: ModifyZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneResponse> {
        self.client.execute(action: "ModifyZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改站点
    ///
    /// 修改站点信息。
    @inlinable @discardableResult
    public func modifyZone(_ input: ModifyZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneResponse {
        try await self.client.execute(action: "ModifyZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改站点
    ///
    /// 修改站点信息。
    @inlinable @discardableResult
    public func modifyZone(zoneId: String, type: String? = nil, vanityNameServers: VanityNameServers? = nil, aliasZoneName: String? = nil, area: String? = nil, zoneName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneResponse> {
        self.modifyZone(.init(zoneId: zoneId, type: type, vanityNameServers: vanityNameServers, aliasZoneName: aliasZoneName, area: area, zoneName: zoneName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改站点
    ///
    /// 修改站点信息。
    @inlinable @discardableResult
    public func modifyZone(zoneId: String, type: String? = nil, vanityNameServers: VanityNameServers? = nil, aliasZoneName: String? = nil, area: String? = nil, zoneName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneResponse {
        try await self.modifyZone(.init(zoneId: zoneId, type: type, vanityNameServers: vanityNameServers, aliasZoneName: aliasZoneName, area: area, zoneName: zoneName), region: region, logger: logger, on: eventLoop)
    }
}
