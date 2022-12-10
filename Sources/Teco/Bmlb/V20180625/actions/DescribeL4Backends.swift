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
    /// 获取黑石负载均衡四层监听器绑定的主机列表
    ///
    /// 获取黑石负载均衡四层监听器绑定的主机列表。
    @inlinable
    public func describeL4Backends(_ input: DescribeL4BackendsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeL4BackendsResponse > {
        self.client.execute(action: "DescribeL4Backends", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取黑石负载均衡四层监听器绑定的主机列表
    ///
    /// 获取黑石负载均衡四层监听器绑定的主机列表。
    @inlinable
    public func describeL4Backends(_ input: DescribeL4BackendsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL4BackendsResponse {
        try await self.client.execute(action: "DescribeL4Backends", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeL4Backends请求参数结构体
    public struct DescribeL4BackendsRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String
        
        /// 负载均衡四层监听器ID，可通过接口DescribeL4Listeners查询。
        public let listenerId: String
        
        /// 待查询的主机信息。
        public let backendSet: [DescribeL4Backend]?
        
        public init (loadBalancerId: String, listenerId: String, backendSet: [DescribeL4Backend]?) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.backendSet = backendSet
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case backendSet = "BackendSet"
        }
    }
    
    /// DescribeL4Backends返回参数结构体
    public struct DescribeL4BackendsResponse: TCResponseModel {
        /// 返回的绑定关系列表。
        public let backendSet: [L4Backend]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case backendSet = "BackendSet"
            case requestId = "RequestId"
        }
    }
}