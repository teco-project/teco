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
    /// DescribeZoneSetting请求参数结构体
    public struct DescribeZoneSettingRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        public init(zoneId: String) {
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
        }
    }

    /// DescribeZoneSetting返回参数结构体
    public struct DescribeZoneSettingResponse: TCResponseModel {
        /// 站点ID。
        public let zoneId: String

        /// 站点名称。
        public let zone: String

        /// 缓存过期时间配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cache: CacheConfig?

        /// 节点缓存键配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cacheKey: CacheKey?

        /// Quic访问配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let quic: Quic?

        /// POST请求传输配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let postMaxSize: PostMaxSize?

        /// 智能压缩配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let compression: Compression?

        /// Http2回源配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let upstreamHttp2: UpstreamHttp2?

        /// 访问协议强制Https跳转配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let forceRedirect: ForceRedirect?

        /// Https 加速配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let https: Https?

        /// 源站配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let origin: Origin?

        /// 智能加速配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let smartRouting: SmartRouting?

        /// 浏览器缓存配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxAge: MaxAge?

        /// 离线缓存配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offlineCache: OfflineCache?

        /// WebSocket配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webSocket: WebSocket?

        /// 客户端IP回源请求头配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientIpHeader: ClientIp?

        /// 缓存预刷新配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cachePrefresh: CachePrefresh?

        /// Ipv6访问配置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipv6: Ipv6Access?

        /// 站点加速区域信息，取值有：
        /// <li>mainland：中国境内加速；</li>
        /// <li>overseas：中国境外加速。</li>
        public let area: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case zone = "Zone"
            case cache = "Cache"
            case cacheKey = "CacheKey"
            case quic = "Quic"
            case postMaxSize = "PostMaxSize"
            case compression = "Compression"
            case upstreamHttp2 = "UpstreamHttp2"
            case forceRedirect = "ForceRedirect"
            case https = "Https"
            case origin = "Origin"
            case smartRouting = "SmartRouting"
            case maxAge = "MaxAge"
            case offlineCache = "OfflineCache"
            case webSocket = "WebSocket"
            case clientIpHeader = "ClientIpHeader"
            case cachePrefresh = "CachePrefresh"
            case ipv6 = "Ipv6"
            case area = "Area"
            case requestId = "RequestId"
        }
    }

    /// 查询站点配置
    ///
    /// 用于查询站点的所有配置信息。
    @inlinable
    public func describeZoneSetting(_ input: DescribeZoneSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneSettingResponse> {
        self.client.execute(action: "DescribeZoneSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询站点配置
    ///
    /// 用于查询站点的所有配置信息。
    @inlinable
    public func describeZoneSetting(_ input: DescribeZoneSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneSettingResponse {
        try await self.client.execute(action: "DescribeZoneSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询站点配置
    ///
    /// 用于查询站点的所有配置信息。
    @inlinable
    public func describeZoneSetting(zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneSettingResponse> {
        self.describeZoneSetting(DescribeZoneSettingRequest(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询站点配置
    ///
    /// 用于查询站点的所有配置信息。
    @inlinable
    public func describeZoneSetting(zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneSettingResponse {
        try await self.describeZoneSetting(DescribeZoneSettingRequest(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
