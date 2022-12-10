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

extension Bmlb {
    /// 创建黑石四层负载均衡监听器
    ///
    /// 创建黑石四层负载均衡监听器功能。黑石负载均衡四层监听器提供了转发用户请求的具体规则，包括端口、协议、会话保持、健康检查等参数。
    @inlinable
    public func createL4Listeners(_ input: CreateL4ListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateL4ListenersResponse > {
        self.client.execute(action: "CreateL4Listeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建黑石四层负载均衡监听器
    ///
    /// 创建黑石四层负载均衡监听器功能。黑石负载均衡四层监听器提供了转发用户请求的具体规则，包括端口、协议、会话保持、健康检查等参数。
    @inlinable
    public func createL4Listeners(_ input: CreateL4ListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateL4ListenersResponse {
        try await self.client.execute(action: "CreateL4Listeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateL4Listeners请求参数结构体
    public struct CreateL4ListenersRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String
        
        /// 监听器信息数组，可以创建多个监听器。目前一个负载均衡下面最多允许创建50个监听器
        public let listenerSet: [CreateL4Listener]
        
        public init (loadBalancerId: String, listenerSet: [CreateL4Listener]) {
            self.loadBalancerId = loadBalancerId
            self.listenerSet = listenerSet
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerSet = "ListenerSet"
        }
    }
    
    /// CreateL4Listeners返回参数结构体
    public struct CreateL4ListenersResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}