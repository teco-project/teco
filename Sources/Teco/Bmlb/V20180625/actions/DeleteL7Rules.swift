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
    /// DeleteL7Rules请求参数结构体
    public struct DeleteL7RulesRequest: TCRequestModel {
        /// 负载均衡实例ID，可通过接口DescribeLoadBalancers查询。
        public let loadBalancerId: String
        
        /// 七层监听器实例ID，可通过接口DescribeL7Listeners查询。
        public let listenerId: String
        
        /// 转发域名实例ID，可通过接口DescribeL7Rules查询。
        public let domainId: String
        
        /// 转发路径实例ID列表，可通过接口DescribeL7Rules查询。
        public let locationIds: [String]
        
        public init (loadBalancerId: String, listenerId: String, domainId: String, locationIds: [String]) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.domainId = domainId
            self.locationIds = locationIds
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case domainId = "DomainId"
            case locationIds = "LocationIds"
        }
    }
    
    /// DeleteL7Rules返回参数结构体
    public struct DeleteL7RulesResponse: TCResponseModel {
        /// 任务ID。该接口为异步任务，可根据本参数调用DescribeLoadBalancerTaskResult接口来查询任务操作结果。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 删除黑石负载均衡七层转发规则
    ///
    /// 删除黑石负载均衡七层转发规则。
    @inlinable
    public func deleteL7Rules(_ input: DeleteL7RulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteL7RulesResponse > {
        self.client.execute(action: "DeleteL7Rules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除黑石负载均衡七层转发规则
    ///
    /// 删除黑石负载均衡七层转发规则。
    @inlinable
    public func deleteL7Rules(_ input: DeleteL7RulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteL7RulesResponse {
        try await self.client.execute(action: "DeleteL7Rules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
