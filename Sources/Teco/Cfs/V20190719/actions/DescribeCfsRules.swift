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

extension Cfs {
    /// DescribeCfsRules请求参数结构体
    public struct DescribeCfsRulesRequest: TCRequestModel {
        /// 权限组 ID
        public let pGroupId: String

        public init(pGroupId: String) {
            self.pGroupId = pGroupId
        }

        enum CodingKeys: String, CodingKey {
            case pGroupId = "PGroupId"
        }
    }

    /// DescribeCfsRules返回参数结构体
    public struct DescribeCfsRulesResponse: TCResponseModel {
        /// 权限组规则列表
        public let ruleList: [PGroupRuleInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ruleList = "RuleList"
            case requestId = "RequestId"
        }
    }

    /// 查询权限组规则
    ///
    /// 本接口（DescribeCfsRules）用于查询权限组规则列表。
    @inlinable
    public func describeCfsRules(_ input: DescribeCfsRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsRulesResponse> {
        self.client.execute(action: "DescribeCfsRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询权限组规则
    ///
    /// 本接口（DescribeCfsRules）用于查询权限组规则列表。
    @inlinable
    public func describeCfsRules(_ input: DescribeCfsRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsRulesResponse {
        try await self.client.execute(action: "DescribeCfsRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询权限组规则
    ///
    /// 本接口（DescribeCfsRules）用于查询权限组规则列表。
    @inlinable
    public func describeCfsRules(pGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsRulesResponse> {
        let input = DescribeCfsRulesRequest(pGroupId: pGroupId)
        return self.client.execute(action: "DescribeCfsRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询权限组规则
    ///
    /// 本接口（DescribeCfsRules）用于查询权限组规则列表。
    @inlinable
    public func describeCfsRules(pGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsRulesResponse {
        let input = DescribeCfsRulesRequest(pGroupId: pGroupId)
        return try await self.client.execute(action: "DescribeCfsRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
