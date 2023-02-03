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

extension Waf {
    /// DescribeWafAutoDenyRules请求参数结构体
    public struct DescribeWafAutoDenyRulesRequest: TCRequestModel {
        /// 域名
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// DescribeWafAutoDenyRules返回参数结构体
    public struct DescribeWafAutoDenyRulesResponse: TCResponseModel {
        /// 攻击次数阈值
        public let attackThreshold: Int64

        /// 攻击时间阈值
        public let timeThreshold: Int64

        /// 自动封禁时间
        public let denyTimeThreshold: Int64

        /// 自动封禁状态
        public let defenseStatus: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case attackThreshold = "AttackThreshold"
            case timeThreshold = "TimeThreshold"
            case denyTimeThreshold = "DenyTimeThreshold"
            case defenseStatus = "DefenseStatus"
            case requestId = "RequestId"
        }
    }

    /// 查询ip惩罚规则
    ///
    /// 返回ip惩罚规则详细信息
    @inlinable
    public func describeWafAutoDenyRules(_ input: DescribeWafAutoDenyRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafAutoDenyRulesResponse> {
        self.client.execute(action: "DescribeWafAutoDenyRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询ip惩罚规则
    ///
    /// 返回ip惩罚规则详细信息
    @inlinable
    public func describeWafAutoDenyRules(_ input: DescribeWafAutoDenyRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafAutoDenyRulesResponse {
        try await self.client.execute(action: "DescribeWafAutoDenyRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询ip惩罚规则
    ///
    /// 返回ip惩罚规则详细信息
    @inlinable
    public func describeWafAutoDenyRules(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafAutoDenyRulesResponse> {
        let input = DescribeWafAutoDenyRulesRequest(domain: domain)
        return self.client.execute(action: "DescribeWafAutoDenyRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询ip惩罚规则
    ///
    /// 返回ip惩罚规则详细信息
    @inlinable
    public func describeWafAutoDenyRules(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafAutoDenyRulesResponse {
        let input = DescribeWafAutoDenyRulesRequest(domain: domain)
        return try await self.client.execute(action: "DescribeWafAutoDenyRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
