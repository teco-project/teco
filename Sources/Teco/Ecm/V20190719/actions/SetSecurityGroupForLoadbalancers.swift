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

extension Ecm {
    /// 绑定或解绑一个安全组到多个负载均衡实例
    ///
    /// 绑定或解绑一个安全组到多个负载均衡实例。
    @inlinable
    public func setSecurityGroupForLoadbalancers(_ input: SetSecurityGroupForLoadbalancersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SetSecurityGroupForLoadbalancersResponse > {
        self.client.execute(action: "SetSecurityGroupForLoadbalancers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 绑定或解绑一个安全组到多个负载均衡实例
    ///
    /// 绑定或解绑一个安全组到多个负载均衡实例。
    @inlinable
    public func setSecurityGroupForLoadbalancers(_ input: SetSecurityGroupForLoadbalancersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetSecurityGroupForLoadbalancersResponse {
        try await self.client.execute(action: "SetSecurityGroupForLoadbalancers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SetSecurityGroupForLoadbalancers请求参数结构体
    public struct SetSecurityGroupForLoadbalancersRequest: TCRequestModel {
        /// 负载均衡实例ID数组
        public let loadBalancerIds: [String]
        
        /// 安全组ID，如 esg-12345678
        public let securityGroup: String
        
        /// ADD 绑定安全组；
        /// DEL 解绑安全组
        public let operationType: String
        
        public init (loadBalancerIds: [String], securityGroup: String, operationType: String) {
            self.loadBalancerIds = loadBalancerIds
            self.securityGroup = securityGroup
            self.operationType = operationType
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerIds = "LoadBalancerIds"
            case securityGroup = "SecurityGroup"
            case operationType = "OperationType"
        }
    }
    
    /// SetSecurityGroupForLoadbalancers返回参数结构体
    public struct SetSecurityGroupForLoadbalancersResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}