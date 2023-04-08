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

import TecoCore

extension Teo {
    /// ModifyZoneSetting请求参数结构体
    public struct ModifyZoneSettingRequest: TCRequestModel {
        /// 待变更的站点ID。
        public let zoneId: String

        /// 缓存过期时间配置。
        /// 不填写表示保持原有配置。
        public let cache: CacheConfig?

        /// 节点缓存键配置。
        /// 不填写表示保持原有配置。
        public let cacheKey: CacheKey?

        /// 浏览器缓存配置。
        /// 不填写表示保持原有配置。
        public let maxAge: MaxAge?

        /// 离线缓存配置。
        /// 不填写表示保持原有配置。
        public let offlineCache: OfflineCache?

        /// Quic访问配置。
        /// 不填写表示保持原有配置。
        public let quic: Quic?

        /// Post请求传输配置。
        /// 不填写表示保持原有配置。
        public let postMaxSize: PostMaxSize?

        /// 智能压缩配置。
        /// 不填写表示保持原有配置。
        public let compression: Compression?

        /// Http2回源配置。
        /// 不填写表示保持原有配置。
        public let upstreamHttp2: UpstreamHttp2?

        /// 访问协议强制Https跳转配置。
        /// 不填写表示保持原有配置。
        public let forceRedirect: ForceRedirect?

        /// Https加速配置。
        /// 不填写表示保持原有配置。
        public let https: Https?

        /// 源站配置。
        /// 不填写表示保持原有配置。
        public let origin: Origin?

        /// 智能加速配置。
        /// 不填写表示保持原有配置。
        public let smartRouting: SmartRouting?

        /// WebSocket配置。
        /// 不填写表示保持原有配置。
        public let webSocket: WebSocket?

        /// 客户端IP回源请求头配置。
        /// 不填写表示保持原有配置。
        public let clientIpHeader: ClientIp?

        /// 缓存预刷新配置。
        /// 不填写表示保持原有配置。
        public let cachePrefresh: CachePrefresh?

        /// Ipv6访问配置。
        /// 不填写表示保持原有配置。
        public let ipv6: Ipv6Access?

        public init(zoneId: String, cache: CacheConfig? = nil, cacheKey: CacheKey? = nil, maxAge: MaxAge? = nil, offlineCache: OfflineCache? = nil, quic: Quic? = nil, postMaxSize: PostMaxSize? = nil, compression: Compression? = nil, upstreamHttp2: UpstreamHttp2? = nil, forceRedirect: ForceRedirect? = nil, https: Https? = nil, origin: Origin? = nil, smartRouting: SmartRouting? = nil, webSocket: WebSocket? = nil, clientIpHeader: ClientIp? = nil, cachePrefresh: CachePrefresh? = nil, ipv6: Ipv6Access? = nil) {
            self.zoneId = zoneId
            self.cache = cache
            self.cacheKey = cacheKey
            self.maxAge = maxAge
            self.offlineCache = offlineCache
            self.quic = quic
            self.postMaxSize = postMaxSize
            self.compression = compression
            self.upstreamHttp2 = upstreamHttp2
            self.forceRedirect = forceRedirect
            self.https = https
            self.origin = origin
            self.smartRouting = smartRouting
            self.webSocket = webSocket
            self.clientIpHeader = clientIpHeader
            self.cachePrefresh = cachePrefresh
            self.ipv6 = ipv6
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case cache = "Cache"
            case cacheKey = "CacheKey"
            case maxAge = "MaxAge"
            case offlineCache = "OfflineCache"
            case quic = "Quic"
            case postMaxSize = "PostMaxSize"
            case compression = "Compression"
            case upstreamHttp2 = "UpstreamHttp2"
            case forceRedirect = "ForceRedirect"
            case https = "Https"
            case origin = "Origin"
            case smartRouting = "SmartRouting"
            case webSocket = "WebSocket"
            case clientIpHeader = "ClientIpHeader"
            case cachePrefresh = "CachePrefresh"
            case ipv6 = "Ipv6"
        }
    }

    /// ModifyZoneSetting返回参数结构体
    public struct ModifyZoneSettingResponse: TCResponseModel {
        /// 站点ID。
        public let zoneId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case requestId = "RequestId"
        }
    }

    /// 修改站点配置
    ///
    /// 用于修改站点配置
    @inlinable
    public func modifyZoneSetting(_ input: ModifyZoneSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneSettingResponse> {
        self.client.execute(action: "ModifyZoneSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改站点配置
    ///
    /// 用于修改站点配置
    @inlinable
    public func modifyZoneSetting(_ input: ModifyZoneSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneSettingResponse {
        try await self.client.execute(action: "ModifyZoneSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改站点配置
    ///
    /// 用于修改站点配置
    @inlinable
    public func modifyZoneSetting(zoneId: String, cache: CacheConfig? = nil, cacheKey: CacheKey? = nil, maxAge: MaxAge? = nil, offlineCache: OfflineCache? = nil, quic: Quic? = nil, postMaxSize: PostMaxSize? = nil, compression: Compression? = nil, upstreamHttp2: UpstreamHttp2? = nil, forceRedirect: ForceRedirect? = nil, https: Https? = nil, origin: Origin? = nil, smartRouting: SmartRouting? = nil, webSocket: WebSocket? = nil, clientIpHeader: ClientIp? = nil, cachePrefresh: CachePrefresh? = nil, ipv6: Ipv6Access? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneSettingResponse> {
        self.modifyZoneSetting(.init(zoneId: zoneId, cache: cache, cacheKey: cacheKey, maxAge: maxAge, offlineCache: offlineCache, quic: quic, postMaxSize: postMaxSize, compression: compression, upstreamHttp2: upstreamHttp2, forceRedirect: forceRedirect, https: https, origin: origin, smartRouting: smartRouting, webSocket: webSocket, clientIpHeader: clientIpHeader, cachePrefresh: cachePrefresh, ipv6: ipv6), region: region, logger: logger, on: eventLoop)
    }

    /// 修改站点配置
    ///
    /// 用于修改站点配置
    @inlinable
    public func modifyZoneSetting(zoneId: String, cache: CacheConfig? = nil, cacheKey: CacheKey? = nil, maxAge: MaxAge? = nil, offlineCache: OfflineCache? = nil, quic: Quic? = nil, postMaxSize: PostMaxSize? = nil, compression: Compression? = nil, upstreamHttp2: UpstreamHttp2? = nil, forceRedirect: ForceRedirect? = nil, https: Https? = nil, origin: Origin? = nil, smartRouting: SmartRouting? = nil, webSocket: WebSocket? = nil, clientIpHeader: ClientIp? = nil, cachePrefresh: CachePrefresh? = nil, ipv6: Ipv6Access? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneSettingResponse {
        try await self.modifyZoneSetting(.init(zoneId: zoneId, cache: cache, cacheKey: cacheKey, maxAge: maxAge, offlineCache: offlineCache, quic: quic, postMaxSize: postMaxSize, compression: compression, upstreamHttp2: upstreamHttp2, forceRedirect: forceRedirect, https: https, origin: origin, smartRouting: smartRouting, webSocket: webSocket, clientIpHeader: clientIpHeader, cachePrefresh: cachePrefresh, ipv6: ipv6), region: region, logger: logger, on: eventLoop)
    }
}
