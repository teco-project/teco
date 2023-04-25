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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cwp {
    /// ModifyBaselineRuleIgnore请求参数结构体
    public struct ModifyBaselineRuleIgnoreRequest: TCRequestModel {
        /// 规则名称
        public let ruleName: String

        /// 资产类型[0:所有专业版旗舰版|1:id|2:ip]
        public let assetType: Int64

        /// 规则Id
        public let ruleId: Int64?

        /// 关联项
        public let itemIds: [Int64]?

        /// 主机Id
        public let hostIds: [String]?

        /// 主机Ip
        public let hostIps: [String]?

        /// 是否全选过滤
        public let selectAll: Int64?

        /// <li>ItemName - string - 是否必填：否 - 项名称</li>
        public let filters: [Filter]?

        public init(ruleName: String, assetType: Int64, ruleId: Int64? = nil, itemIds: [Int64]? = nil, hostIds: [String]? = nil, hostIps: [String]? = nil, selectAll: Int64? = nil, filters: [Filter]? = nil) {
            self.ruleName = ruleName
            self.assetType = assetType
            self.ruleId = ruleId
            self.itemIds = itemIds
            self.hostIds = hostIds
            self.hostIps = hostIps
            self.selectAll = selectAll
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case ruleName = "RuleName"
            case assetType = "AssetType"
            case ruleId = "RuleId"
            case itemIds = "ItemIds"
            case hostIds = "HostIds"
            case hostIps = "HostIps"
            case selectAll = "SelectAll"
            case filters = "Filters"
        }
    }

    /// ModifyBaselineRuleIgnore返回参数结构体
    public struct ModifyBaselineRuleIgnoreResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改或新增基线忽略规则
    ///
    /// 更改基线忽略规则
    @inlinable @discardableResult
    public func modifyBaselineRuleIgnore(_ input: ModifyBaselineRuleIgnoreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaselineRuleIgnoreResponse> {
        self.client.execute(action: "ModifyBaselineRuleIgnore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改或新增基线忽略规则
    ///
    /// 更改基线忽略规则
    @inlinable @discardableResult
    public func modifyBaselineRuleIgnore(_ input: ModifyBaselineRuleIgnoreRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaselineRuleIgnoreResponse {
        try await self.client.execute(action: "ModifyBaselineRuleIgnore", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改或新增基线忽略规则
    ///
    /// 更改基线忽略规则
    @inlinable @discardableResult
    public func modifyBaselineRuleIgnore(ruleName: String, assetType: Int64, ruleId: Int64? = nil, itemIds: [Int64]? = nil, hostIds: [String]? = nil, hostIps: [String]? = nil, selectAll: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaselineRuleIgnoreResponse> {
        self.modifyBaselineRuleIgnore(.init(ruleName: ruleName, assetType: assetType, ruleId: ruleId, itemIds: itemIds, hostIds: hostIds, hostIps: hostIps, selectAll: selectAll, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 修改或新增基线忽略规则
    ///
    /// 更改基线忽略规则
    @inlinable @discardableResult
    public func modifyBaselineRuleIgnore(ruleName: String, assetType: Int64, ruleId: Int64? = nil, itemIds: [Int64]? = nil, hostIds: [String]? = nil, hostIps: [String]? = nil, selectAll: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaselineRuleIgnoreResponse {
        try await self.modifyBaselineRuleIgnore(.init(ruleName: ruleName, assetType: assetType, ruleId: ruleId, itemIds: itemIds, hostIds: hostIds, hostIps: hostIps, selectAll: selectAll, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
