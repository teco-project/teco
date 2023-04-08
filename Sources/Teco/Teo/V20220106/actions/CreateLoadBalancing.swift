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

extension Teo {
    /// CreateLoadBalancing请求参数结构体
    public struct CreateLoadBalancingRequest: TCRequestModel {
        /// 站点ID
        public let zoneId: String

        /// 子域名
        public let host: String

        /// 代理模式：
        /// dns_only: 仅DNS
        /// proxied: 开启代理
        public let type: String

        /// 使用的源站组ID
        public let originId: [String]

        /// 当Type=dns_only表示DNS的TTL时间
        public let ttl: UInt64?

        public init(zoneId: String, host: String, type: String, originId: [String], ttl: UInt64? = nil) {
            self.zoneId = zoneId
            self.host = host
            self.type = type
            self.originId = originId
            self.ttl = ttl
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case host = "Host"
            case type = "Type"
            case originId = "OriginId"
            case ttl = "TTL"
        }
    }

    /// CreateLoadBalancing返回参数结构体
    public struct CreateLoadBalancingResponse: TCResponseModel {
        /// 负载均衡ID
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
    public func createLoadBalancing(zoneId: String, host: String, type: String, originId: [String], ttl: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLoadBalancingResponse> {
        self.createLoadBalancing(.init(zoneId: zoneId, host: host, type: type, originId: originId, ttl: ttl), region: region, logger: logger, on: eventLoop)
    }

    /// 创建负载均衡
    @inlinable
    public func createLoadBalancing(zoneId: String, host: String, type: String, originId: [String], ttl: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLoadBalancingResponse {
        try await self.createLoadBalancing(.init(zoneId: zoneId, host: host, type: type, originId: originId, ttl: ttl), region: region, logger: logger, on: eventLoop)
    }
}
