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
    /// CreateLoadBalancing请求参数结构体
    public struct CreateLoadBalancingRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String

        /// 负载均衡域名。
        public let host: String

        /// 代理模式，取值有：
        /// <li>dns_only：仅DNS；</li>
        /// <li>proxied：开启代理。</li>
        public let type: String

        /// 主源站源站组ID。
        public let originGroupId: String

        /// 备用源站源站组ID，当Type=proxied时可以填写，为空表示不使用备用源站。
        public let backupOriginGroupId: String

        /// 当Type=dns_only时，指解析记录在DNS服务器缓存的生存时间。
        /// 取值范围60-86400，单位：秒，不填写使用默认值：600。
        public let ttl: UInt64?

        /// 回源类型，取值有：
        /// <li>normal：主备回源；</li>
        /// <li>advanced：高级回源配置（仅当Type=proxied时可以使用）。</li>为空表示使用主备回源。
        public let originType: String?

        /// 高级回源配置，当OriginType=advanced时有效。
        public let advancedOriginGroups: [AdvancedOriginGroup]?

        public init(zoneId: String, host: String, type: String, originGroupId: String, backupOriginGroupId: String, ttl: UInt64? = nil, originType: String? = nil, advancedOriginGroups: [AdvancedOriginGroup]? = nil) {
            self.zoneId = zoneId
            self.host = host
            self.type = type
            self.originGroupId = originGroupId
            self.backupOriginGroupId = backupOriginGroupId
            self.ttl = ttl
            self.originType = originType
            self.advancedOriginGroups = advancedOriginGroups
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case host = "Host"
            case type = "Type"
            case originGroupId = "OriginGroupId"
            case backupOriginGroupId = "BackupOriginGroupId"
            case ttl = "TTL"
            case originType = "OriginType"
            case advancedOriginGroups = "AdvancedOriginGroups"
        }
    }

    /// CreateLoadBalancing返回参数结构体
    public struct CreateLoadBalancingResponse: TCResponseModel {
        /// 负载均衡ID。
        public let loadBalancingId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loadBalancingId = "LoadBalancingId"
            case requestId = "RequestId"
        }
    }

    /// 创建负载均衡
    @inlinable
    public func createLoadBalancing(_ input: CreateLoadBalancingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoadBalancingResponse> {
        self.client.execute(action: "CreateLoadBalancing", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建负载均衡
    @inlinable
    public func createLoadBalancing(_ input: CreateLoadBalancingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancingResponse {
        try await self.client.execute(action: "CreateLoadBalancing", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建负载均衡
    @inlinable
    public func createLoadBalancing(zoneId: String, host: String, type: String, originGroupId: String, backupOriginGroupId: String, ttl: UInt64? = nil, originType: String? = nil, advancedOriginGroups: [AdvancedOriginGroup]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoadBalancingResponse> {
        self.createLoadBalancing(CreateLoadBalancingRequest(zoneId: zoneId, host: host, type: type, originGroupId: originGroupId, backupOriginGroupId: backupOriginGroupId, ttl: ttl, originType: originType, advancedOriginGroups: advancedOriginGroups), region: region, logger: logger, on: eventLoop)
    }

    /// 创建负载均衡
    @inlinable
    public func createLoadBalancing(zoneId: String, host: String, type: String, originGroupId: String, backupOriginGroupId: String, ttl: UInt64? = nil, originType: String? = nil, advancedOriginGroups: [AdvancedOriginGroup]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancingResponse {
        try await self.createLoadBalancing(CreateLoadBalancingRequest(zoneId: zoneId, host: host, type: type, originGroupId: originGroupId, backupOriginGroupId: backupOriginGroupId, ttl: ttl, originType: originType, advancedOriginGroups: advancedOriginGroups), region: region, logger: logger, on: eventLoop)
    }
}
