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

extension Ecm {
    /// CreateListener请求参数结构体
    public struct CreateListenerRequest: TCRequestModel {
        /// 负载均衡实例 ID
        public let loadBalancerId: String

        /// 要将监听器创建到哪些端口，每个端口对应一个新的监听器
        public let ports: [Int64]

        /// 监听器协议： TCP | UDP
        public let `protocol`: String

        /// 要创建的监听器名称列表，名称与Ports数组按序一一对应，如不需立即命名，则无需提供此参数
        public let listenerNames: [String]?

        /// 健康检查相关参数
        public let healthCheck: HealthCheck?

        /// 会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。此参数仅适用于TCP/UDP监听器。
        public let sessionExpireTime: Int64?

        /// 监听器转发的方式。可选值：WRR、LEAST_CONN
        /// 分别表示按权重轮询、最小连接数， 默认为 WRR。
        public let scheduler: String?

        /// 会话保持类型。不传或传NORMAL表示默认会话保持类型。QUIC_CID 表示根据Quic Connection ID做会话保持。QUIC_CID只支持UDP协议。
        public let sessionType: String?

        /// 批量端口段的结束端口，必须和Ports长度一样。
        public let endPorts: [Int64]?

        public init(loadBalancerId: String, ports: [Int64], protocol: String, listenerNames: [String]? = nil, healthCheck: HealthCheck? = nil, sessionExpireTime: Int64? = nil, scheduler: String? = nil, sessionType: String? = nil, endPorts: [Int64]? = nil) {
            self.loadBalancerId = loadBalancerId
            self.ports = ports
            self.`protocol` = `protocol`
            self.listenerNames = listenerNames
            self.healthCheck = healthCheck
            self.sessionExpireTime = sessionExpireTime
            self.scheduler = scheduler
            self.sessionType = sessionType
            self.endPorts = endPorts
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case ports = "Ports"
            case `protocol` = "Protocol"
            case listenerNames = "ListenerNames"
            case healthCheck = "HealthCheck"
            case sessionExpireTime = "SessionExpireTime"
            case scheduler = "Scheduler"
            case sessionType = "SessionType"
            case endPorts = "EndPorts"
        }
    }

    /// CreateListener返回参数结构体
    public struct CreateListenerResponse: TCResponseModel {
        /// 创建的监听器的唯一标识数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listenerIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerIds = "ListenerIds"
            case requestId = "RequestId"
        }
    }

    /// 创建负载均衡监听器
    ///
    /// 创建负载均衡监听器。
    @inlinable
    public func createListener(_ input: CreateListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateListenerResponse> {
        self.client.execute(action: "CreateListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建负载均衡监听器
    ///
    /// 创建负载均衡监听器。
    @inlinable
    public func createListener(_ input: CreateListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateListenerResponse {
        try await self.client.execute(action: "CreateListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建负载均衡监听器
    ///
    /// 创建负载均衡监听器。
    @inlinable
    public func createListener(loadBalancerId: String, ports: [Int64], protocol: String, listenerNames: [String]? = nil, healthCheck: HealthCheck? = nil, sessionExpireTime: Int64? = nil, scheduler: String? = nil, sessionType: String? = nil, endPorts: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateListenerResponse> {
        self.createListener(CreateListenerRequest(loadBalancerId: loadBalancerId, ports: ports, protocol: `protocol`, listenerNames: listenerNames, healthCheck: healthCheck, sessionExpireTime: sessionExpireTime, scheduler: scheduler, sessionType: sessionType, endPorts: endPorts), region: region, logger: logger, on: eventLoop)
    }

    /// 创建负载均衡监听器
    ///
    /// 创建负载均衡监听器。
    @inlinable
    public func createListener(loadBalancerId: String, ports: [Int64], protocol: String, listenerNames: [String]? = nil, healthCheck: HealthCheck? = nil, sessionExpireTime: Int64? = nil, scheduler: String? = nil, sessionType: String? = nil, endPorts: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateListenerResponse {
        try await self.createListener(CreateListenerRequest(loadBalancerId: loadBalancerId, ports: ports, protocol: `protocol`, listenerNames: listenerNames, healthCheck: healthCheck, sessionExpireTime: sessionExpireTime, scheduler: scheduler, sessionType: sessionType, endPorts: endPorts), region: region, logger: logger, on: eventLoop)
    }
}
