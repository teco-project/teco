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

import TecoCore

extension Ckafka {
    /// DescribeAclRule请求参数结构体
    public struct DescribeAclRuleRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        /// ACL规则名
        public let ruleName: String?

        /// ACL规则匹配类型
        public let patternType: String?

        /// 是否读取简略的ACL规则
        public let isSimplified: Bool?

        public init(instanceId: String, ruleName: String? = nil, patternType: String? = nil, isSimplified: Bool? = nil) {
            self.instanceId = instanceId
            self.ruleName = ruleName
            self.patternType = patternType
            self.isSimplified = isSimplified
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ruleName = "RuleName"
            case patternType = "PatternType"
            case isSimplified = "IsSimplified"
        }
    }

    /// DescribeAclRule返回参数结构体
    public struct DescribeAclRuleResponse: TCResponseModel {
        /// 返回的AclRule结果集对象
        public let result: AclRuleResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询ACL规则列表
    @inlinable
    public func describeAclRule(_ input: DescribeAclRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAclRuleResponse> {
        self.client.execute(action: "DescribeAclRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询ACL规则列表
    @inlinable
    public func describeAclRule(_ input: DescribeAclRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAclRuleResponse {
        try await self.client.execute(action: "DescribeAclRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询ACL规则列表
    @inlinable
    public func describeAclRule(instanceId: String, ruleName: String? = nil, patternType: String? = nil, isSimplified: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAclRuleResponse> {
        self.describeAclRule(.init(instanceId: instanceId, ruleName: ruleName, patternType: patternType, isSimplified: isSimplified), region: region, logger: logger, on: eventLoop)
    }

    /// 查询ACL规则列表
    @inlinable
    public func describeAclRule(instanceId: String, ruleName: String? = nil, patternType: String? = nil, isSimplified: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAclRuleResponse {
        try await self.describeAclRule(.init(instanceId: instanceId, ruleName: ruleName, patternType: patternType, isSimplified: isSimplified), region: region, logger: logger, on: eventLoop)
    }
}