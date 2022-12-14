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

extension Teo {
    /// DescribeRules请求参数结构体
    public struct DescribeRulesRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 过滤参数，不填默认不过滤。
        public let filters: [RuleFilter]?

        public init(zoneId: String, filters: [RuleFilter]? = nil) {
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
        public let ruleList: [RuleSettingDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case ruleList = "RuleList"
            case requestId = "RequestId"
        }
    }

    /// 查询规则引擎规则
    ///
    /// 查询规则引擎规则。
    @inlinable
    public func describeRules(_ input: DescribeRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRulesResponse > {
        self.client.execute(action: "DescribeRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则引擎规则
    ///
    /// 查询规则引擎规则。
    @inlinable
    public func describeRules(_ input: DescribeRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesResponse {
        try await self.client.execute(action: "DescribeRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询规则引擎规则
    ///
    /// 查询规则引擎规则。
    @inlinable
    public func describeRules(zoneId: String, filters: [RuleFilter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRulesResponse > {
        self.describeRules(DescribeRulesRequest(zoneId: zoneId, filters: filters), logger: logger, on: eventLoop)
    }

    /// 查询规则引擎规则
    ///
    /// 查询规则引擎规则。
    @inlinable
    public func describeRules(zoneId: String, filters: [RuleFilter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesResponse {
        try await self.describeRules(DescribeRulesRequest(zoneId: zoneId, filters: filters), logger: logger, on: eventLoop)
    }
}
