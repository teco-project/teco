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
    /// ModifyL7BackendPort请求参数结构体
    public struct ModifyL7BackendPortRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String
        
        /// 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        public let listenerId: String
        
        /// 转发域名实例ID，可通过接口DescribeL7Rules查询。
        public let domainId: String
        
        /// 转发路径实例ID，可通过接口DescribeL7Rules查询。
        public let locationId: String
        
        /// 黑石物理机主机ID、虚拟机IP或者是半托管主机ID。
        public let instanceId: String
        
        /// 已绑定的主机端口。
        public let port: Int64
        
        /// 新的主机端口，可选值1~65535。
        public let newPort: Int64
        
        /// 绑定类型。0：物理机 1：虚拟机 2：半托管机器
        public let bindType: Int64
        
        public init (loadBalancerId: String, listenerId: String, domainId: String, locationId: String, instanceId: String, port: Int64, newPort: Int64, bindType: Int64) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domainId = domainId
            self.locationId = locationId
            self.instanceId = instanceId
            self.port = port
            self.newPort = newPort
            self.bindType = bindType
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domainId = "DomainId"
            case locationId = "LocationId"
            case instanceId = "InstanceId"
            case port = "Port"
            case newPort = "NewPort"
            case bindType = "BindType"
        }
    }
    
    /// ModifyL7BackendPort返回参数结构体
    public struct ModifyL7BackendPortResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 修改黑石负载均衡七层转发路径后端实例端口
    ///
    /// 修改黑石负载均衡七层转发路径后端实例端口。
    @inlinable
    public func modifyL7BackendPort(_ input: ModifyL7BackendPortRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyL7BackendPortResponse > {
        self.client.execute(action: "ModifyL7BackendPort", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改黑石负载均衡七层转发路径后端实例端口
    ///
    /// 修改黑石负载均衡七层转发路径后端实例端口。
    @inlinable
    public func modifyL7BackendPort(_ input: ModifyL7BackendPortRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyL7BackendPortResponse {
        try await self.client.execute(action: "ModifyL7BackendPort", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
