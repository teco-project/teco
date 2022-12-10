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
    /// 查找绑定了某主机或者指定监听器名称的黑石负载均衡四层监听器
    ///
    /// 查找绑定了某主机或者指定监听器名称的黑石负载均衡四层监听器。
    @inlinable
    public func describeL4ListenerInfo(_ input: DescribeL4ListenerInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeL4ListenerInfoResponse > {
        self.client.execute(action: "DescribeL4ListenerInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查找绑定了某主机或者指定监听器名称的黑石负载均衡四层监听器
    ///
    /// 查找绑定了某主机或者指定监听器名称的黑石负载均衡四层监听器。
    @inlinable
    public func describeL4ListenerInfo(_ input: DescribeL4ListenerInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL4ListenerInfoResponse {
        try await self.client.execute(action: "DescribeL4ListenerInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeL4ListenerInfo请求参数结构体
    public struct DescribeL4ListenerInfoRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String
        
        /// 查找的键值，可用于模糊查找该名称的监听器。
        public let searchKey: String?
        
        /// 主机ID或虚机IP列表，可用于获取绑定了该主机的监听器。
        public let instanceIds: [String]?
        
        public init (loadBalancerId: String, searchKey: String?, instanceIds: [String]?) {
            self.loadBalancerId = loadBalancerId
            self.searchKey = searchKey
            self.instanceIds = instanceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case searchKey = "SearchKey"
            case instanceIds = "InstanceIds"
        }
    }
    
    /// DescribeL4ListenerInfo返回参数结构体
    public struct DescribeL4ListenerInfoResponse: TCResponseModel {
        /// 返回的四层监听器列表。
        public let listenerSet: [L4ListenerInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case listenerSet = "ListenerSet"
            case requestId = "RequestId"
        }
    }
}
