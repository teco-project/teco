//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 修改负载均衡监听器属性
    ///
    /// 修改负载均衡监听器属性。
    @inlinable
    public func modifyListener(_ input: ModifyListenerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyListenerResponse > {
        self.client.execute(action: "ModifyListener", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改负载均衡监听器属性
    ///
    /// 修改负载均衡监听器属性。
    @inlinable
    public func modifyListener(_ input: ModifyListenerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyListenerResponse {
        try await self.client.execute(action: "ModifyListener", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyListener请求参数结构体
    public struct ModifyListenerRequest: TCRequestModel {
        /// 负载均衡实例 ID
        public let loadBalancerId: String
        
        /// 负载均衡监听器 ID
        public let listenerId: String
        
        /// 新的监听器名称
        public let listenerName: String?
        
        /// 会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。此参数仅适用于TCP/UDP监听器。
        public let sessionExpireTime: Int64?
        
        /// 健康检查相关参数
        public let healthCheck: HealthCheck
        
        /// 监听器转发的方式。可选值：WRR、LEAST_CONN
        /// 分别表示按权重轮询、最小连接数， 默认为 WRR。
        public let scheduler: String?
        
        public init (loadBalancerId: String, listenerId: String, listenerName: String?, sessionExpireTime: Int64?, healthCheck: HealthCheck, scheduler: String?) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.listenerName = listenerName
            self.sessionExpireTime = sessionExpireTime
            self.healthCheck = healthCheck
            self.scheduler = scheduler
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case listenerName = "ListenerName"
            case sessionExpireTime = "SessionExpireTime"
            case healthCheck = "HealthCheck"
            case scheduler = "Scheduler"
        }
    }
    
    /// ModifyListener返回参数结构体
    public struct ModifyListenerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
