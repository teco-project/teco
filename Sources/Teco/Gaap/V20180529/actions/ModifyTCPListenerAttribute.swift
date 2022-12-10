//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gaap {
    /// 修改TCP监听器配置
    ///
    /// 本接口（ModifyTCPListenerAttribute）用于修改通道实例下TCP监听器配置，包括健康检查的配置，调度策略。
    @inlinable
    public func modifyTCPListenerAttribute(_ input: ModifyTCPListenerAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyTCPListenerAttributeResponse > {
        self.client.execute(action: "ModifyTCPListenerAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改TCP监听器配置
    ///
    /// 本接口（ModifyTCPListenerAttribute）用于修改通道实例下TCP监听器配置，包括健康检查的配置，调度策略。
    @inlinable
    public func modifyTCPListenerAttribute(_ input: ModifyTCPListenerAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTCPListenerAttributeResponse {
        try await self.client.execute(action: "ModifyTCPListenerAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyTCPListenerAttribute请求参数结构体
    public struct ModifyTCPListenerAttributeRequest: TCRequestModel {
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
        
        /// 是否开启健康检查，1开启，0关闭。
        public let healthCheck: UInt64?
        
        /// 源站是否开启主备模式：1开启，0关闭，DOMAIN类型源站不支持开启
        public let failoverSwitch: UInt64?
        
        /// 健康阈值，表示连续检查成功多少次数后认定源站健康。范围为1到10
        public let healthyThreshold: UInt64?
        
        /// 不健康阈值，表示连续检查失败次数后认定源站不健康。范围为1到10
        public let unhealthyThreshold: UInt64?
        
        public init (listenerId: String, groupId: String?, proxyId: String?, listenerName: String?, scheduler: String?, delayLoop: UInt64?, connectTimeout: UInt64?, healthCheck: UInt64?, failoverSwitch: UInt64?, healthyThreshold: UInt64?, unhealthyThreshold: UInt64?) {
            self.listenerId = listenerId
            self.groupId = groupId
            self.proxyId = proxyId
            self.listenerName = listenerName
            self.scheduler = scheduler
            self.delayLoop = delayLoop
            self.connectTimeout = connectTimeout
            self.healthCheck = healthCheck
            self.failoverSwitch = failoverSwitch
            self.healthyThreshold = healthyThreshold
            self.unhealthyThreshold = unhealthyThreshold
        }
        
        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case groupId = "GroupId"
            case proxyId = "ProxyId"
            case listenerName = "ListenerName"
            case scheduler = "Scheduler"
            case delayLoop = "DelayLoop"
            case connectTimeout = "ConnectTimeout"
            case healthCheck = "HealthCheck"
            case failoverSwitch = "FailoverSwitch"
            case healthyThreshold = "HealthyThreshold"
            case unhealthyThreshold = "UnhealthyThreshold"
        }
    }
    
    /// ModifyTCPListenerAttribute返回参数结构体
    public struct ModifyTCPListenerAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}