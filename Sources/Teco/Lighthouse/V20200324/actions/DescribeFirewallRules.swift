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

extension Lighthouse {
    /// DescribeFirewallRules请求参数结构体
    public struct DescribeFirewallRulesRequest: TCRequestModel {
        /// 实例 ID。
        public let instanceId: String
        
        /// 偏移量，默认为 0。
        public let offset: Int64?
        
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?
        
        public init (instanceId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeFirewallRules返回参数结构体
    public struct DescribeFirewallRulesResponse: TCResponseModel {
        /// 符合条件的防火墙规则数量。
        public let totalCount: Int64
        
        /// 防火墙规则详细信息列表。
        public let firewallRuleSet: [FirewallRuleInfo]
        
        /// 防火墙版本号。
        public let firewallVersion: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case firewallRuleSet = "FirewallRuleSet"
            case firewallVersion = "FirewallVersion"
            case requestId = "RequestId"
        }
    }
    
    /// 查询防火墙规则
    ///
    /// 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。
    @inlinable
    public func describeFirewallRules(_ input: DescribeFirewallRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFirewallRulesResponse > {
        self.client.execute(action: "DescribeFirewallRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询防火墙规则
    ///
    /// 本接口（DescribeFirewallRules）用于查询实例的防火墙规则。
    @inlinable
    public func describeFirewallRules(_ input: DescribeFirewallRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFirewallRulesResponse {
        try await self.client.execute(action: "DescribeFirewallRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
