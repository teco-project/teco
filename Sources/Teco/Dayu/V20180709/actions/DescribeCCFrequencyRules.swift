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

extension Dayu {
    /// 获取CC防护的访问频率控制规则
    ///
    /// 获取CC防护的访问频率控制规则
    @inlinable
    public func describeCCFrequencyRules(_ input: DescribeCCFrequencyRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCCFrequencyRulesResponse > {
        self.client.execute(action: "DescribeCCFrequencyRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取CC防护的访问频率控制规则
    ///
    /// 获取CC防护的访问频率控制规则
    @inlinable
    public func describeCCFrequencyRules(_ input: DescribeCCFrequencyRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCFrequencyRulesResponse {
        try await self.client.execute(action: "DescribeCCFrequencyRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCCFrequencyRules请求参数结构体
    public struct DescribeCCFrequencyRulesRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String
        
        /// 资源ID
        public let id: String
        
        /// 7层转发规则ID（通过获取7层转发规则接口可以获取规则ID）；当填写时表示获取转发规则的访问频率控制规则；
        public let ruleId: String
        
        public init (business: String, id: String, ruleId: String) {
            self.business = business
            self.id = id
            self.ruleId = ruleId
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case ruleId = "RuleId"
        }
    }
    
    /// DescribeCCFrequencyRules返回参数结构体
    public struct DescribeCCFrequencyRulesResponse: TCResponseModel {
        /// 访问频率控制规则列表
        public let ccFrequencyRuleList: [CCFrequencyRule]
        
        /// 访问频率控制规则开关状态，取值[on(开启)，off(关闭)]
        public let ccFrequencyRuleStatus: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ccFrequencyRuleList = "CCFrequencyRuleList"
            case ccFrequencyRuleStatus = "CCFrequencyRuleStatus"
            case requestId = "RequestId"
        }
    }
}