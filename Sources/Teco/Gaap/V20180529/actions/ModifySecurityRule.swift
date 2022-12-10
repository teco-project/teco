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
    /// 修改安全策略规则名
    @inlinable
    public func modifySecurityRule(_ input: ModifySecurityRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySecurityRuleResponse > {
        self.client.execute(action: "ModifySecurityRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改安全策略规则名
    @inlinable
    public func modifySecurityRule(_ input: ModifySecurityRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecurityRuleResponse {
        try await self.client.execute(action: "ModifySecurityRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySecurityRule请求参数结构体
    public struct ModifySecurityRuleRequest: TCRequestModel {
        /// 规则ID
        public let ruleId: String
        
        /// 规则名：不得超过30个字符，超过部分会被截断。
        public let aliasName: String
        
        /// 安全策略ID
        public let policyId: String
        
        /// 安全规则动作
        public let ruleAction: String?
        
        /// 规则关联地址，格式需要满足CIDR网络地址规范
        public let sourceCidr: String?
        
        /// 协议类型
        public let `protocol`: String?
        
        /// 端口范围，支持以下格式
        /// 单个端口: 80
        /// 多个端口: 80,443
        /// 连续端口: 3306-20000
        /// 所有端口: ALL
        public let destPortRange: String?
        
        public init (ruleId: String, aliasName: String, policyId: String, ruleAction: String?, sourceCidr: String?, `protocol`: String?, destPortRange: String?) {
            self.ruleId = ruleId
            self.aliasName = aliasName
            self.policyId = policyId
            self.ruleAction = ruleAction
            self.sourceCidr = sourceCidr
            self.`protocol` = `protocol`
            self.destPortRange = destPortRange
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case aliasName = "AliasName"
            case policyId = "PolicyId"
            case ruleAction = "RuleAction"
            case sourceCidr = "SourceCidr"
            case `protocol` = "Protocol"
            case destPortRange = "DestPortRange"
        }
    }
    
    /// ModifySecurityRule返回参数结构体
    public struct ModifySecurityRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
