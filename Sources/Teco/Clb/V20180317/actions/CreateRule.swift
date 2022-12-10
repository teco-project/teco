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

extension Clb {
    /// 创建负载均衡七层监听器转发规则
    ///
    /// CreateRule 接口用于在一个已存在的负载均衡七层监听器下创建转发规则，七层监听器中，后端服务必须绑定到规则上而非监听器上。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable
    public func createRule(_ input: CreateRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRuleResponse > {
        self.client.execute(action: "CreateRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建负载均衡七层监听器转发规则
    ///
    /// CreateRule 接口用于在一个已存在的负载均衡七层监听器下创建转发规则，七层监听器中，后端服务必须绑定到规则上而非监听器上。
    /// 本接口为异步接口，本接口返回成功后需以返回的RequestID为入参，调用DescribeTaskStatus接口查询本次任务是否成功。
    @inlinable
    public func createRule(_ input: CreateRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRuleResponse {
        try await self.client.execute(action: "CreateRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateRule请求参数结构体
    public struct CreateRuleRequest: TCRequestModel {
        /// 负载均衡实例 ID。
        public let loadBalancerId: String
        
        /// 监听器 ID。
        public let listenerId: String
        
        /// 新建转发规则的信息。
        public let rules: [RuleInput]
        
        public init (loadBalancerId: String, listenerId: String, rules: [RuleInput]) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.rules = rules
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case rules = "Rules"
        }
    }
    
    /// CreateRule返回参数结构体
    public struct CreateRuleResponse: TCResponseModel {
        /// 创建的转发规则的唯一标识数组。
        public let locationIds: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case locationIds = "LocationIds"
            case requestId = "RequestId"
        }
    }
}