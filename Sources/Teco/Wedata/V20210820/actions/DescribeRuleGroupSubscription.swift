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

extension Wedata {
    /// DescribeRuleGroupSubscription请求参数结构体
    public struct DescribeRuleGroupSubscriptionRequest: TCRequestModel {
        /// 规则组ID
        public let ruleGroupId: UInt64?
        
        /// 项目ID
        public let projectId: String?
        
        public init (ruleGroupId: UInt64? = nil, projectId: String? = nil) {
            self.ruleGroupId = ruleGroupId
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleGroupId = "RuleGroupId"
            case projectId = "ProjectId"
        }
    }
    
    /// DescribeRuleGroupSubscription返回参数结构体
    public struct DescribeRuleGroupSubscriptionResponse: TCResponseModel {
        /// 规则组订阅信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleGroupSubscribe?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 查询规则组订阅信息
    @inlinable
    public func describeRuleGroupSubscription(_ input: DescribeRuleGroupSubscriptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRuleGroupSubscriptionResponse > {
        self.client.execute(action: "DescribeRuleGroupSubscription", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询规则组订阅信息
    @inlinable
    public func describeRuleGroupSubscription(_ input: DescribeRuleGroupSubscriptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleGroupSubscriptionResponse {
        try await self.client.execute(action: "DescribeRuleGroupSubscription", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
