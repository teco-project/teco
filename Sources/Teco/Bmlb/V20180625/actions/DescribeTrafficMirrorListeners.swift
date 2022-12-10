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
    /// 获取流量镜像的监听器列表信息
    ///
    /// 获取流量镜像的监听器列表信息。
    @inlinable
    public func describeTrafficMirrorListeners(_ input: DescribeTrafficMirrorListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTrafficMirrorListenersResponse > {
        self.client.execute(action: "DescribeTrafficMirrorListeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取流量镜像的监听器列表信息
    ///
    /// 获取流量镜像的监听器列表信息。
    @inlinable
    public func describeTrafficMirrorListeners(_ input: DescribeTrafficMirrorListenersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficMirrorListenersResponse {
        try await self.client.execute(action: "DescribeTrafficMirrorListeners", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTrafficMirrorListeners请求参数结构体
    public struct DescribeTrafficMirrorListenersRequest: TCRequestModel {
        /// 流量镜像实例ID。
        public let trafficMirrorId: String
        
        /// 分页的偏移量，也即从第几条记录开始查询
        public let offset: Int64?
        
        /// 单次查询返回的条目数，默认值：500。
        public let limit: Int64?
        
        /// 待搜索的负载均衡Id。
        public let searchLoadBalancerIds: [String]?
        
        /// 待搜索的负载均衡名称。
        public let searchLoadBalancerNames: [String]?
        
        /// 待搜索的Vip。
        public let searchVips: [String]?
        
        /// 待搜索的监听器ID。
        public let searchListenerIds: [String]?
        
        /// 待搜索的监听器名称。
        public let searchListenerNames: [String]?
        
        /// 待搜索的协议名称。
        public let searchProtocols: [String]?
        
        /// 待搜索的端口。
        public let searchLoadBalancerPorts: [UInt64]?
        
        public init (trafficMirrorId: String, offset: Int64?, limit: Int64?, searchLoadBalancerIds: [String]?, searchLoadBalancerNames: [String]?, searchVips: [String]?, searchListenerIds: [String]?, searchListenerNames: [String]?, searchProtocols: [String]?, searchLoadBalancerPorts: [UInt64]?) {
            self.trafficMirrorId = trafficMirrorId
            self.offset = offset
            self.limit = limit
            self.searchLoadBalancerIds = searchLoadBalancerIds
            self.searchLoadBalancerNames = searchLoadBalancerNames
            self.searchVips = searchVips
            self.searchListenerIds = searchListenerIds
            self.searchListenerNames = searchListenerNames
            self.searchProtocols = searchProtocols
            self.searchLoadBalancerPorts = searchLoadBalancerPorts
        }
        
        enum CodingKeys: String, CodingKey {
            case trafficMirrorId = "TrafficMirrorId"
            case offset = "Offset"
            case limit = "Limit"
            case searchLoadBalancerIds = "SearchLoadBalancerIds"
            case searchLoadBalancerNames = "SearchLoadBalancerNames"
            case searchVips = "SearchVips"
            case searchListenerIds = "SearchListenerIds"
            case searchListenerNames = "SearchListenerNames"
            case searchProtocols = "SearchProtocols"
            case searchLoadBalancerPorts = "SearchLoadBalancerPorts"
        }
    }
    
    /// DescribeTrafficMirrorListeners返回参数结构体
    public struct DescribeTrafficMirrorListenersResponse: TCResponseModel {
        /// 监听器列表。
        public let listenerSet: [TrafficMirrorListener]
        
        /// 监听器总数。
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case listenerSet = "ListenerSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}