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

extension Gaap {
    /// CreateTCPListeners请求参数结构体
    public struct CreateTCPListenersRequest: TCRequestModel {
        /// 监听器名称。
        public let listenerName: String

        /// 监听器端口列表。
        public let ports: [UInt64]

        /// 监听器源站访问策略，其中：rr表示轮询；wrr表示加权轮询；lc表示最小连接数；lrtt表示最小时延。
        public let scheduler: String

        /// 源站是否开启健康检查：1开启，0关闭，UDP监听器不支持健康检查
        public let healthCheck: UInt64

        /// 监听器绑定源站类型。IP表示IP地址，DOMAIN表示域名。
        public let realServerType: String

        /// 通道ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        public let proxyId: String?

        /// 通道组ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        public let groupId: String?

        /// 源站健康检查时间间隔，单位：秒。时间间隔取值在[5，300]之间。
        public let delayLoop: UInt64?

        /// 源站健康检查响应超时时间，单位：秒。超时时间取值在[2，60]之间。超时时间应小于健康检查时间间隔DelayLoop。
        public let connectTimeout: UInt64?

        /// 源站端口列表，该参数仅支持v1版本监听器和通道组监听器。
        public let realServerPorts: [UInt64]?

        /// 监听器获取客户端 IP 的方式，0表示 TOA, 1表示Proxy Protocol
        public let clientIPMethod: Int64?

        /// 源站是否开启主备模式：1开启，0关闭，DOMAIN类型源站不支持开启
        public let failoverSwitch: Int64?

        /// 健康阈值，表示连续检查成功多少次后认定源站健康。范围为1到10
        public let healthyThreshold: UInt64?

        /// 不健康阈值，表示连续检查失败多少次数后认为源站不健康。范围为1到10
        public let unhealthyThreshold: UInt64?

        public init(listenerName: String, ports: [UInt64], scheduler: String, healthCheck: UInt64, realServerType: String, proxyId: String? = nil, groupId: String? = nil, delayLoop: UInt64? = nil, connectTimeout: UInt64? = nil, realServerPorts: [UInt64]? = nil, clientIPMethod: Int64? = nil, failoverSwitch: Int64? = nil, healthyThreshold: UInt64? = nil, unhealthyThreshold: UInt64? = nil) {
            self.listenerName = listenerName
            self.ports = ports
            self.scheduler = scheduler
            self.healthCheck = healthCheck
            self.realServerType = realServerType
            self.proxyId = proxyId
            self.groupId = groupId
            self.delayLoop = delayLoop
            self.connectTimeout = connectTimeout
            self.realServerPorts = realServerPorts
            self.clientIPMethod = clientIPMethod
            self.failoverSwitch = failoverSwitch
            self.healthyThreshold = healthyThreshold
            self.unhealthyThreshold = unhealthyThreshold
        }

        enum CodingKeys: String, CodingKey {
            case listenerName = "ListenerName"
            case ports = "Ports"
            case scheduler = "Scheduler"
            case healthCheck = "HealthCheck"
            case realServerType = "RealServerType"
            case proxyId = "ProxyId"
            case groupId = "GroupId"
            case delayLoop = "DelayLoop"
            case connectTimeout = "ConnectTimeout"
            case realServerPorts = "RealServerPorts"
            case clientIPMethod = "ClientIPMethod"
            case failoverSwitch = "FailoverSwitch"
            case healthyThreshold = "HealthyThreshold"
            case unhealthyThreshold = "UnhealthyThreshold"
        }
    }

    /// CreateTCPListeners返回参数结构体
    public struct CreateTCPListenersResponse: TCResponseModel {
        /// 返回监听器ID
        public let listenerIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerIds = "ListenerIds"
            case requestId = "RequestId"
        }
    }

    /// 创建TCP监听器
    ///
    /// 该接口（CreateTCPListeners）用于批量创建单通道或者通道组的TCP协议类型的监听器。
    @inlinable
    public func createTCPListeners(_ input: CreateTCPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTCPListenersResponse> {
        self.client.execute(action: "CreateTCPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建TCP监听器
    ///
    /// 该接口（CreateTCPListeners）用于批量创建单通道或者通道组的TCP协议类型的监听器。
    @inlinable
    public func createTCPListeners(_ input: CreateTCPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTCPListenersResponse {
        try await self.client.execute(action: "CreateTCPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建TCP监听器
    ///
    /// 该接口（CreateTCPListeners）用于批量创建单通道或者通道组的TCP协议类型的监听器。
    @inlinable
    public func createTCPListeners(listenerName: String, ports: [UInt64], scheduler: String, healthCheck: UInt64, realServerType: String, proxyId: String? = nil, groupId: String? = nil, delayLoop: UInt64? = nil, connectTimeout: UInt64? = nil, realServerPorts: [UInt64]? = nil, clientIPMethod: Int64? = nil, failoverSwitch: Int64? = nil, healthyThreshold: UInt64? = nil, unhealthyThreshold: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTCPListenersResponse> {
        self.createTCPListeners(.init(listenerName: listenerName, ports: ports, scheduler: scheduler, healthCheck: healthCheck, realServerType: realServerType, proxyId: proxyId, groupId: groupId, delayLoop: delayLoop, connectTimeout: connectTimeout, realServerPorts: realServerPorts, clientIPMethod: clientIPMethod, failoverSwitch: failoverSwitch, healthyThreshold: healthyThreshold, unhealthyThreshold: unhealthyThreshold), region: region, logger: logger, on: eventLoop)
    }

    /// 创建TCP监听器
    ///
    /// 该接口（CreateTCPListeners）用于批量创建单通道或者通道组的TCP协议类型的监听器。
    @inlinable
    public func createTCPListeners(listenerName: String, ports: [UInt64], scheduler: String, healthCheck: UInt64, realServerType: String, proxyId: String? = nil, groupId: String? = nil, delayLoop: UInt64? = nil, connectTimeout: UInt64? = nil, realServerPorts: [UInt64]? = nil, clientIPMethod: Int64? = nil, failoverSwitch: Int64? = nil, healthyThreshold: UInt64? = nil, unhealthyThreshold: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTCPListenersResponse {
        try await self.createTCPListeners(.init(listenerName: listenerName, ports: ports, scheduler: scheduler, healthCheck: healthCheck, realServerType: realServerType, proxyId: proxyId, groupId: groupId, delayLoop: delayLoop, connectTimeout: connectTimeout, realServerPorts: realServerPorts, clientIPMethod: clientIPMethod, failoverSwitch: failoverSwitch, healthyThreshold: healthyThreshold, unhealthyThreshold: unhealthyThreshold), region: region, logger: logger, on: eventLoop)
    }
}
