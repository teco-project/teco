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

extension Teo {
    /// DescribeSecurityPolicyManagedRulesId请求参数结构体
    public struct DescribeSecurityPolicyManagedRulesIdRequest: TCRequestModel {
        /// 规则id集合
        public let ruleId: [Int64]
        
        public init (ruleId: [Int64]) {
            self.ruleId = ruleId
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
        }
    }
    
    /// DescribeSecurityPolicyManagedRulesId返回参数结构体
    public struct DescribeSecurityPolicyManagedRulesIdResponse: TCResponseModel {
        /// 返回总数
        public let total: Int64
        
        /// 门神规则
        public let rules: [ManagedRule]
        
        /// 返回总数
        public let count: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case rules = "Rules"
            case count = "Count"
            case requestId = "RequestId"
        }
    }
    
    /// 规则id查询门神规则详情
    @inlinable
    public func describeSecurityPolicyManagedRulesId(_ input: DescribeSecurityPolicyManagedRulesIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecurityPolicyManagedRulesIdResponse > {
        self.client.execute(action: "DescribeSecurityPolicyManagedRulesId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 规则id查询门神规则详情
    @inlinable
    public func describeSecurityPolicyManagedRulesId(_ input: DescribeSecurityPolicyManagedRulesIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPolicyManagedRulesIdResponse {
        try await self.client.execute(action: "DescribeSecurityPolicyManagedRulesId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
