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

extension Dayu {
    /// 获取资源的规则数
    @inlinable
    public func describeRuleSets(_ input: DescribeRuleSetsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRuleSetsResponse > {
        self.client.execute(action: "DescribeRuleSets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取资源的规则数
    @inlinable
    public func describeRuleSets(_ input: DescribeRuleSetsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleSetsResponse {
        try await self.client.execute(action: "DescribeRuleSets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRuleSets请求参数结构体
    public struct DescribeRuleSetsRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String
        
        /// 资源ID列表
        public let idList: [String]
        
        public init (business: String, idList: [String]) {
            self.business = business
            self.idList = idList
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case idList = "IdList"
        }
    }
    
    /// DescribeRuleSets返回参数结构体
    public struct DescribeRuleSetsResponse: TCResponseModel {
        /// 规则记录数数组，取值说明:
        /// Key值为"Id"时，Value表示资源ID
        /// Key值为"RuleIdList"时，Value值表示资源的规则ID，多个规则ID用","分割
        /// Key值为"RuleNameList"时，Value值表示资源的规则名，多个规则名用","分割
        /// Key值为"RuleNum"时，Value值表示资源的规则数
        public let l4RuleSets: [KeyValueRecord]
        
        /// 规则记录数数组，取值说明:
        /// Key值为"Id"时，Value表示资源ID
        /// Key值为"RuleIdList"时，Value值表示资源的规则ID，多个规则ID用","分割
        /// Key值为"RuleNameList"时，Value值表示资源的规则名，多个规则名用","分割
        /// Key值为"RuleNum"时，Value值表示资源的规则数
        public let l7RuleSets: [KeyValueRecord]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case l4RuleSets = "L4RuleSets"
            case l7RuleSets = "L7RuleSets"
            case requestId = "RequestId"
        }
    }
}
