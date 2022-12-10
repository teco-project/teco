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
    /// 获取黑石负载均衡七层转发路径绑定的主机列表
    ///
    /// 获取黑石负载均衡七层监听器绑定的主机列表
    @inlinable
    public func describeL7Backends(_ input: DescribeL7BackendsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeL7BackendsResponse > {
        self.client.execute(action: "DescribeL7Backends", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取黑石负载均衡七层转发路径绑定的主机列表
    ///
    /// 获取黑石负载均衡七层监听器绑定的主机列表
    @inlinable
    public func describeL7Backends(_ input: DescribeL7BackendsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL7BackendsResponse {
        try await self.client.execute(action: "DescribeL7Backends", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeL7Backends请求参数结构体
    public struct DescribeL7BackendsRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String
        
        /// 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        public let listenerId: String
        
        /// 转发域名实例ID，可通过接口DescribeL7Rules查询。
        public let domainId: String?
        
        /// 转发路径实例ID，可通过接口DescribeL7Rules查询。
        public let locationId: String?
        
        /// 查询条件，传'all'则查询所有与规则绑定的主机信息。如果为all时，DomainId和LocationId参数没有意义不必传入，否则DomainId和LocationId参数必须传入。
        public let queryType: String?
        
        public init (loadBalancerId: String, listenerId: String, domainId: String?, locationId: String?, queryType: String?) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domainId = domainId
            self.locationId = locationId
            self.queryType = queryType
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domainId = "DomainId"
            case locationId = "LocationId"
            case queryType = "QueryType"
        }
    }
    
    /// DescribeL7Backends返回参数结构体
    public struct DescribeL7BackendsResponse: TCResponseModel {
        /// 返回的绑定关系列表。
        public let backendSet: [L7Backend]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case backendSet = "BackendSet"
            case requestId = "RequestId"
        }
    }
}