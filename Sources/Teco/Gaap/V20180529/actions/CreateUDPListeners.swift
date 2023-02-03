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
    /// CreateUDPListeners请求参数结构体
    public struct CreateUDPListenersRequest: TCRequestModel {
        /// 监听器名称
        public let listenerName: String

        /// 监听器端口列表
        public let ports: [UInt64]

        /// 监听器源站访问策略，其中：rr表示轮询；wrr表示加权轮询；lc表示最小连接数；lrtt表示最小时延。
        public let scheduler: String

        /// 监听器绑定源站类型。IP表示IP地址，DOMAIN表示域名。
        public let realServerType: String

        /// 通道ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        public let proxyId: String?

        /// 通道组ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        public let groupId: String?

        /// 源站端口列表，该参数仅支持v1版本监听器和通道组监听器
        public let realServerPorts: [UInt64]?

        /// 源站健康检查时间间隔，单位：秒。时间间隔取值在[5，300]之间。
        public let delayLoop: UInt64?

        /// 源站健康检查响应超时时间，单位：秒。超时时间取值在[2，60]之间。超时时间应小于健康检查时间间隔DelayLoop。
        public let connectTimeout: UInt64?

        /// 健康阈值，表示连续检查成功多少次后认定源站健康。范围为1到10
        public let healthyThreshold: UInt64?

        /// 不健康阈值，表示连续检查失败多少次数后认为源站不健康。范围为1到10
        public let unhealthyThreshold: UInt64?

        /// 源站是否开启主备模式：1开启，0关闭，DOMAIN类型源站不支持开启
        public let failoverSwitch: Int64?

        /// 源站是否开启健康检查：1开启，0关闭。
        public let healthCheck: UInt64?

        /// UDP源站健康类型。PORT表示检查端口，PING表示PING。
        public let checkType: String?

        /// UDP源站健康检查探测端口。
        public let checkPort: Int64?

        /// UDP源站健康检查端口探测报文类型：TEXT表示文本。仅在健康检查类型为PORT时使用。
        public let contextType: String?

        /// UDP源站健康检查端口探测发送报文。仅在健康检查类型为PORT时使用。
        public let sendContext: String?

        /// UDP源站健康检查端口探测接收报文。仅在健康检查类型为PORT时使用。
        public let recvContext: String?

        public init(listenerName: String, ports: [UInt64], scheduler: String, realServerType: String, proxyId: String? = nil, groupId: String? = nil, realServerPorts: [UInt64]? = nil, delayLoop: UInt64? = nil, connectTimeout: UInt64? = nil, healthyThreshold: UInt64? = nil, unhealthyThreshold: UInt64? = nil, failoverSwitch: Int64? = nil, healthCheck: UInt64? = nil, checkType: String? = nil, checkPort: Int64? = nil, contextType: String? = nil, sendContext: String? = nil, recvContext: String? = nil) {
            self.listenerName = listenerName
            self.ports = ports
            self.scheduler = scheduler
            self.realServerType = realServerType
            self.proxyId = proxyId
            self.groupId = groupId
            self.realServerPorts = realServerPorts
            self.delayLoop = delayLoop
            self.connectTimeout = connectTimeout
            self.healthyThreshold = healthyThreshold
            self.unhealthyThreshold = unhealthyThreshold
            self.failoverSwitch = failoverSwitch
            self.healthCheck = healthCheck
            self.checkType = checkType
            self.checkPort = checkPort
            self.contextType = contextType
            self.sendContext = sendContext
            self.recvContext = recvContext
        }

        enum CodingKeys: String, CodingKey {
            case listenerName = "ListenerName"
            case ports = "Ports"
            case scheduler = "Scheduler"
            case realServerType = "RealServerType"
            case proxyId = "ProxyId"
            case groupId = "GroupId"
            case realServerPorts = "RealServerPorts"
            case delayLoop = "DelayLoop"
            case connectTimeout = "ConnectTimeout"
            case healthyThreshold = "HealthyThreshold"
            case unhealthyThreshold = "UnhealthyThreshold"
            case failoverSwitch = "FailoverSwitch"
            case healthCheck = "HealthCheck"
            case checkType = "CheckType"
            case checkPort = "CheckPort"
            case contextType = "ContextType"
            case sendContext = "SendContext"
            case recvContext = "RecvContext"
        }
    }

    /// CreateUDPListeners返回参数结构体
    public struct CreateUDPListenersResponse: TCResponseModel {
        /// 返回监听器ID
        public let listenerIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerIds = "ListenerIds"
            case requestId = "RequestId"
        }
    }

    /// 创建UDP监听器
    ///
    /// 该接口（CreateUDPListeners）用于批量创建单通道或者通道组的UDP协议类型的监听器。
    @inlinable
    public func createUDPListeners(_ input: CreateUDPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUDPListenersResponse> {
        self.client.execute(action: "CreateUDPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建UDP监听器
    ///
    /// 该接口（CreateUDPListeners）用于批量创建单通道或者通道组的UDP协议类型的监听器。
    @inlinable
    public func createUDPListeners(_ input: CreateUDPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUDPListenersResponse {
        try await self.client.execute(action: "CreateUDPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建UDP监听器
    ///
    /// 该接口（CreateUDPListeners）用于批量创建单通道或者通道组的UDP协议类型的监听器。
    @inlinable
    public func createUDPListeners(listenerName: String, ports: [UInt64], scheduler: String, realServerType: String, proxyId: String? = nil, groupId: String? = nil, realServerPorts: [UInt64]? = nil, delayLoop: UInt64? = nil, connectTimeout: UInt64? = nil, healthyThreshold: UInt64? = nil, unhealthyThreshold: UInt64? = nil, failoverSwitch: Int64? = nil, healthCheck: UInt64? = nil, checkType: String? = nil, checkPort: Int64? = nil, contextType: String? = nil, sendContext: String? = nil, recvContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUDPListenersResponse> {
        let input = CreateUDPListenersRequest(listenerName: listenerName, ports: ports, scheduler: scheduler, realServerType: realServerType, proxyId: proxyId, groupId: groupId, realServerPorts: realServerPorts, delayLoop: delayLoop, connectTimeout: connectTimeout, healthyThreshold: healthyThreshold, unhealthyThreshold: unhealthyThreshold, failoverSwitch: failoverSwitch, healthCheck: healthCheck, checkType: checkType, checkPort: checkPort, contextType: contextType, sendContext: sendContext, recvContext: recvContext)
        return self.client.execute(action: "CreateUDPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建UDP监听器
    ///
    /// 该接口（CreateUDPListeners）用于批量创建单通道或者通道组的UDP协议类型的监听器。
    @inlinable
    public func createUDPListeners(listenerName: String, ports: [UInt64], scheduler: String, realServerType: String, proxyId: String? = nil, groupId: String? = nil, realServerPorts: [UInt64]? = nil, delayLoop: UInt64? = nil, connectTimeout: UInt64? = nil, healthyThreshold: UInt64? = nil, unhealthyThreshold: UInt64? = nil, failoverSwitch: Int64? = nil, healthCheck: UInt64? = nil, checkType: String? = nil, checkPort: Int64? = nil, contextType: String? = nil, sendContext: String? = nil, recvContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUDPListenersResponse {
        let input = CreateUDPListenersRequest(listenerName: listenerName, ports: ports, scheduler: scheduler, realServerType: realServerType, proxyId: proxyId, groupId: groupId, realServerPorts: realServerPorts, delayLoop: delayLoop, connectTimeout: connectTimeout, healthyThreshold: healthyThreshold, unhealthyThreshold: unhealthyThreshold, failoverSwitch: failoverSwitch, healthCheck: healthCheck, checkType: checkType, checkPort: checkPort, contextType: contextType, sendContext: sendContext, recvContext: recvContext)
        return try await self.client.execute(action: "CreateUDPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
