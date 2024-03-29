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

extension Gaap {
    /// ModifyUDPListenerAttribute请求参数结构体
    public struct ModifyUDPListenerAttributeRequest: TCRequest {
        /// 监听器ID
        public let listenerId: String

        /// 通道组ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        public let groupId: String?

        /// 通道ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        public let proxyId: String?

        /// 监听器名称
        public let listenerName: String?

        /// 监听器源站访问策略，其中：rr表示轮询；wrr表示加权轮询；lc表示最小连接数；lrtt表示最小时延。
        public let scheduler: String?

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

        public init(listenerId: String, groupId: String? = nil, proxyId: String? = nil, listenerName: String? = nil, scheduler: String? = nil, delayLoop: UInt64? = nil, connectTimeout: UInt64? = nil, healthyThreshold: UInt64? = nil, unhealthyThreshold: UInt64? = nil, failoverSwitch: Int64? = nil, healthCheck: UInt64? = nil, checkType: String? = nil, checkPort: Int64? = nil, contextType: String? = nil, sendContext: String? = nil, recvContext: String? = nil) {
            self.listenerId = listenerId
            self.groupId = groupId
            self.proxyId = proxyId
            self.listenerName = listenerName
            self.scheduler = scheduler
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
            case listenerId = "ListenerId"
            case groupId = "GroupId"
            case proxyId = "ProxyId"
            case listenerName = "ListenerName"
            case scheduler = "Scheduler"
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

    /// ModifyUDPListenerAttribute返回参数结构体
    public struct ModifyUDPListenerAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改UDP监听器配置
    ///
    /// 本接口（ModifyUDPListenerAttribute）用于修改通道实例下UDP监听器配置，包括监听器名称和调度策略的修改。
    @inlinable @discardableResult
    public func modifyUDPListenerAttribute(_ input: ModifyUDPListenerAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUDPListenerAttributeResponse> {
        self.client.execute(action: "ModifyUDPListenerAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改UDP监听器配置
    ///
    /// 本接口（ModifyUDPListenerAttribute）用于修改通道实例下UDP监听器配置，包括监听器名称和调度策略的修改。
    @inlinable @discardableResult
    public func modifyUDPListenerAttribute(_ input: ModifyUDPListenerAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUDPListenerAttributeResponse {
        try await self.client.execute(action: "ModifyUDPListenerAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改UDP监听器配置
    ///
    /// 本接口（ModifyUDPListenerAttribute）用于修改通道实例下UDP监听器配置，包括监听器名称和调度策略的修改。
    @inlinable @discardableResult
    public func modifyUDPListenerAttribute(listenerId: String, groupId: String? = nil, proxyId: String? = nil, listenerName: String? = nil, scheduler: String? = nil, delayLoop: UInt64? = nil, connectTimeout: UInt64? = nil, healthyThreshold: UInt64? = nil, unhealthyThreshold: UInt64? = nil, failoverSwitch: Int64? = nil, healthCheck: UInt64? = nil, checkType: String? = nil, checkPort: Int64? = nil, contextType: String? = nil, sendContext: String? = nil, recvContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUDPListenerAttributeResponse> {
        self.modifyUDPListenerAttribute(.init(listenerId: listenerId, groupId: groupId, proxyId: proxyId, listenerName: listenerName, scheduler: scheduler, delayLoop: delayLoop, connectTimeout: connectTimeout, healthyThreshold: healthyThreshold, unhealthyThreshold: unhealthyThreshold, failoverSwitch: failoverSwitch, healthCheck: healthCheck, checkType: checkType, checkPort: checkPort, contextType: contextType, sendContext: sendContext, recvContext: recvContext), region: region, logger: logger, on: eventLoop)
    }

    /// 修改UDP监听器配置
    ///
    /// 本接口（ModifyUDPListenerAttribute）用于修改通道实例下UDP监听器配置，包括监听器名称和调度策略的修改。
    @inlinable @discardableResult
    public func modifyUDPListenerAttribute(listenerId: String, groupId: String? = nil, proxyId: String? = nil, listenerName: String? = nil, scheduler: String? = nil, delayLoop: UInt64? = nil, connectTimeout: UInt64? = nil, healthyThreshold: UInt64? = nil, unhealthyThreshold: UInt64? = nil, failoverSwitch: Int64? = nil, healthCheck: UInt64? = nil, checkType: String? = nil, checkPort: Int64? = nil, contextType: String? = nil, sendContext: String? = nil, recvContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUDPListenerAttributeResponse {
        try await self.modifyUDPListenerAttribute(.init(listenerId: listenerId, groupId: groupId, proxyId: proxyId, listenerName: listenerName, scheduler: scheduler, delayLoop: delayLoop, connectTimeout: connectTimeout, healthyThreshold: healthyThreshold, unhealthyThreshold: unhealthyThreshold, failoverSwitch: failoverSwitch, healthCheck: healthCheck, checkType: checkType, checkPort: checkPort, contextType: contextType, sendContext: sendContext, recvContext: recvContext), region: region, logger: logger, on: eventLoop)
    }
}
