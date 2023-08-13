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

extension Teo {
    /// DescribeRules请求参数结构体
    public struct DescribeRulesRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// - rule-id
        ///
        /// 按照【**规则ID**】进行过滤。
        ///
        /// 类型：string
        ///
        /// 必选：否
        public let filters: [Filter]?

        public init(zoneId: String, filters: [Filter]? = nil) {
            self.zoneId = zoneId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case filters = "Filters"
        }
    }

    /// DescribeRules返回参数结构体
    public struct DescribeRulesResponse: TCResponseModel {
        /// 站点 ID。
        public let zoneId: String

        /// 规则列表，按规则执行顺序从先往后排序。
        public let ruleItems: [RuleItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case ruleItems = "RuleItems"
            case requestId = "RequestId"
        }
    }

    /// 查询规则引擎规则
    ///
    /// 查询规则引擎规则。
    @inlinable
    public func describeRules(_ input: DescribeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesResponse> {
        self.client.execute(action: "DescribeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则引擎规则
    ///
    /// 查询规则引擎规则。
    @inlinable
    public func describeRules(_ input: DescribeRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesResponse {
        try await self.client.execute(action: "DescribeRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询规则引擎规则
    ///
    /// 查询规则引擎规则。
    @inlinable
    public func describeRules(zoneId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRulesResponse> {
        self.describeRules(.init(zoneId: zoneId, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询规则引擎规则
    ///
    /// 查询规则引擎规则。
    @inlinable
    public func describeRules(zoneId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesResponse {
        try await self.describeRules(.init(zoneId: zoneId, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
