//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotexplorer {
    /// DescribeTopicRule请求参数结构体
    public struct DescribeTopicRuleRequest: TCRequestModel {
        /// 规则名称。
        public let ruleName: String

        public init(ruleName: String) {
            self.ruleName = ruleName
        }

        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
        }
    }

    /// DescribeTopicRule返回参数结构体
    public struct DescribeTopicRuleResponse: TCResponseModel {
        /// 规则描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rule: TopicRule?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rule = "Rule"
            case requestId = "RequestId"
        }
    }

    /// 获取规则信息
    @inlinable
    public func describeTopicRule(_ input: DescribeTopicRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicRuleResponse> {
        self.client.execute(action: "DescribeTopicRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取规则信息
    @inlinable
    public func describeTopicRule(_ input: DescribeTopicRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicRuleResponse {
        try await self.client.execute(action: "DescribeTopicRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取规则信息
    @inlinable
    public func describeTopicRule(ruleName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicRuleResponse> {
        self.describeTopicRule(.init(ruleName: ruleName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取规则信息
    @inlinable
    public func describeTopicRule(ruleName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicRuleResponse {
        try await self.describeTopicRule(.init(ruleName: ruleName), region: region, logger: logger, on: eventLoop)
    }
}
