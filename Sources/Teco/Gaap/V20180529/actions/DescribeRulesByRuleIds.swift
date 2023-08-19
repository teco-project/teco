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

import Logging
import NIOCore
import TecoCore

extension Gaap {
    /// DescribeRulesByRuleIds请求参数结构体
    public struct DescribeRulesByRuleIdsRequest: TCRequest {
        /// 规则ID列表。最多支持10个规则。
        public let ruleIds: [String]

        public init(ruleIds: [String]) {
            self.ruleIds = ruleIds
        }

        enum CodingKeys: String, CodingKey {
            case ruleIds = "RuleIds"
        }
    }

    /// DescribeRulesByRuleIds返回参数结构体
    public struct DescribeRulesByRuleIdsResponse: TCResponse {
        /// 返回的规则总个数。
        public let totalCount: UInt64

        /// 返回的规则列表。
        public let ruleSet: [RuleInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ruleSet = "RuleSet"
            case requestId = "RequestId"
        }
    }

    /// 根据规则ID拉取规则信息列表
    ///
    /// 本接口（DescribeRulesByRuleIds）用于根据规则ID拉取规则信息列表。支持一个或者多个规则信息的拉取。一次最多支持10个规则信息的拉取。
    @inlinable
    public func describeRulesByRuleIds(_ input: DescribeRulesByRuleIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesByRuleIdsResponse> {
        self.client.execute(action: "DescribeRulesByRuleIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据规则ID拉取规则信息列表
    ///
    /// 本接口（DescribeRulesByRuleIds）用于根据规则ID拉取规则信息列表。支持一个或者多个规则信息的拉取。一次最多支持10个规则信息的拉取。
    @inlinable
    public func describeRulesByRuleIds(_ input: DescribeRulesByRuleIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesByRuleIdsResponse {
        try await self.client.execute(action: "DescribeRulesByRuleIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据规则ID拉取规则信息列表
    ///
    /// 本接口（DescribeRulesByRuleIds）用于根据规则ID拉取规则信息列表。支持一个或者多个规则信息的拉取。一次最多支持10个规则信息的拉取。
    @inlinable
    public func describeRulesByRuleIds(ruleIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesByRuleIdsResponse> {
        self.describeRulesByRuleIds(.init(ruleIds: ruleIds), region: region, logger: logger, on: eventLoop)
    }

    /// 根据规则ID拉取规则信息列表
    ///
    /// 本接口（DescribeRulesByRuleIds）用于根据规则ID拉取规则信息列表。支持一个或者多个规则信息的拉取。一次最多支持10个规则信息的拉取。
    @inlinable
    public func describeRulesByRuleIds(ruleIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesByRuleIdsResponse {
        try await self.describeRulesByRuleIds(.init(ruleIds: ruleIds), region: region, logger: logger, on: eventLoop)
    }
}
