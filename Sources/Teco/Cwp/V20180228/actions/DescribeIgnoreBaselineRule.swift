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

extension Cwp {
    /// DescribeIgnoreBaselineRule请求参数结构体
    public struct DescribeIgnoreBaselineRuleRequest: TCRequestModel {
        /// 分页参数 最大100条
        public let limit: UInt64

        /// 分页参数
        public let offset: UInt64

        /// 检测项名称
        public let ruleName: String?

        public init(limit: UInt64, offset: UInt64, ruleName: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.ruleName = ruleName
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case ruleName = "RuleName"
        }
    }

    /// DescribeIgnoreBaselineRule返回参数结构体
    public struct DescribeIgnoreBaselineRuleResponse: TCResponseModel {
        /// 忽略基线检测项列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ignoreBaselineRuleList: [IgnoreBaselineRule]?

        /// 分页查询记录总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ignoreBaselineRuleList = "IgnoreBaselineRuleList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询忽略检测项信息
    ///
    /// 查询已经忽略的检测项信息
    @inlinable
    public func describeIgnoreBaselineRule(_ input: DescribeIgnoreBaselineRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIgnoreBaselineRuleResponse > {
        self.client.execute(action: "DescribeIgnoreBaselineRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询忽略检测项信息
    ///
    /// 查询已经忽略的检测项信息
    @inlinable
    public func describeIgnoreBaselineRule(_ input: DescribeIgnoreBaselineRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIgnoreBaselineRuleResponse {
        try await self.client.execute(action: "DescribeIgnoreBaselineRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询忽略检测项信息
    ///
    /// 查询已经忽略的检测项信息
    @inlinable
    public func describeIgnoreBaselineRule(limit: UInt64, offset: UInt64, ruleName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIgnoreBaselineRuleResponse > {
        self.describeIgnoreBaselineRule(DescribeIgnoreBaselineRuleRequest(limit: limit, offset: offset, ruleName: ruleName), logger: logger, on: eventLoop)
    }

    /// 查询忽略检测项信息
    ///
    /// 查询已经忽略的检测项信息
    @inlinable
    public func describeIgnoreBaselineRule(limit: UInt64, offset: UInt64, ruleName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIgnoreBaselineRuleResponse {
        try await self.describeIgnoreBaselineRule(DescribeIgnoreBaselineRuleRequest(limit: limit, offset: offset, ruleName: ruleName), logger: logger, on: eventLoop)
    }
}
