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

extension Bmlb {
    /// UnbindL7Backends请求参数结构体
    public struct UnbindL7BackendsRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String
        
        /// 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        public let listenerId: String
        
        /// 转发域名实例ID，可通过接口DescribeL7Rules查询。
        public let domainId: String
        
        /// 转发路径实例ID，可通过接口DescribeL7Rules查询。
        public let locationId: String
        
        /// 待绑定的主机信息。
        public let backendSet: [UnbindL7Backend]
        
        /// 绑定类型。0：物理机  1：虚拟机 2：半托管机器
        public let bindType: UInt64
        
        public init (loadBalancerId: String, listenerId: String, domainId: String, locationId: String, backendSet: [UnbindL7Backend], bindType: UInt64) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domainId = domainId
            self.locationId = locationId
            self.backendSet = backendSet
            self.bindType = bindType
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domainId = "DomainId"
            case locationId = "LocationId"
            case backendSet = "BackendSet"
            case bindType = "BindType"
        }
    }
    
    /// UnbindL7Backends返回参数结构体
    public struct UnbindL7BackendsResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 解绑黑石物理服务器或者托管服务器到七层转发路径
    ///
    /// 解绑黑石物理服务器或者托管服务器到七层转发路径功能。
    @inlinable
    public func unbindL7Backends(_ input: UnbindL7BackendsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UnbindL7BackendsResponse > {
        self.client.execute(action: "UnbindL7Backends", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 解绑黑石物理服务器或者托管服务器到七层转发路径
    ///
    /// 解绑黑石物理服务器或者托管服务器到七层转发路径功能。
    @inlinable
    public func unbindL7Backends(_ input: UnbindL7BackendsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindL7BackendsResponse {
        try await self.client.execute(action: "UnbindL7Backends", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
