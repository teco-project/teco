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

extension Gaap {
    /// CreateSecurityRules请求参数结构体
    public struct CreateSecurityRulesRequest: TCRequestModel {
        /// 安全策略ID
        public let policyId: String
        
        /// 访问规则列表
        public let ruleList: [SecurityPolicyRuleIn]
        
        public init (policyId: String, ruleList: [SecurityPolicyRuleIn]) {
            self.policyId = policyId
            self.ruleList = ruleList
        }
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case ruleList = "RuleList"
        }
    }
    
    /// CreateSecurityRules返回参数结构体
    public struct CreateSecurityRulesResponse: TCResponseModel {
        /// 规则ID列表
        public let ruleIdList: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ruleIdList = "RuleIdList"
            case requestId = "RequestId"
        }
    }
    
    /// 添加安全策略规则
    @inlinable
    public func createSecurityRules(_ input: CreateSecurityRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSecurityRulesResponse > {
        self.client.execute(action: "CreateSecurityRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加安全策略规则
    @inlinable
    public func createSecurityRules(_ input: CreateSecurityRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityRulesResponse {
        try await self.client.execute(action: "CreateSecurityRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
