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
    /// 根据安全规则ID查询安全规则详情列表
    ///
    /// 本接口（DescribeSecurityRules）用于根据安全规则ID查询安全规则详情列表。支持一个或多个安全规则的查询。一次最多支持20个安全规则的查询。
    @inlinable
    public func describeSecurityRules(_ input: DescribeSecurityRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecurityRulesResponse > {
        self.client.execute(action: "DescribeSecurityRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 根据安全规则ID查询安全规则详情列表
    ///
    /// 本接口（DescribeSecurityRules）用于根据安全规则ID查询安全规则详情列表。支持一个或多个安全规则的查询。一次最多支持20个安全规则的查询。
    @inlinable
    public func describeSecurityRules(_ input: DescribeSecurityRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityRulesResponse {
        try await self.client.execute(action: "DescribeSecurityRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSecurityRules请求参数结构体
    public struct DescribeSecurityRulesRequest: TCRequestModel {
        /// 安全规则ID列表。总数不能超过20个。
        public let securityRuleIds: [String]
        
        public init (securityRuleIds: [String]) {
            self.securityRuleIds = securityRuleIds
        }
        
        enum CodingKeys: String, CodingKey {
            case securityRuleIds = "SecurityRuleIds"
        }
    }
    
    /// DescribeSecurityRules返回参数结构体
    public struct DescribeSecurityRulesResponse: TCResponseModel {
        /// 返回的安全规则详情总数。
        public let totalCount: UInt64
        
        /// 返回的安全规则详情列表。
        public let securityRuleSet: [SecurityPolicyRuleOut]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case securityRuleSet = "SecurityRuleSet"
            case requestId = "RequestId"
        }
    }
}
