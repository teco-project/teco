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

extension Tcss {
    /// AddEditImageAutoAuthorizedRule请求参数结构体
    public struct AddEditImageAutoAuthorizedRuleRequest: TCRequestModel {
        /// 授权范围类别，MANUAL:自选主机节点，ALL:全部镜像
        public let rangeType: String

        /// 每天最大的镜像授权数限制, 0表示无限制
        public let maxDailyCount: Int64

        /// 规则是否生效，0:不生效，1:已生效
        public let isEnabled: Int64

        /// 自选主机id，当授权范围为MANUAL:自选主机时且HostIdFilters为空时，必填
        public let hostIdSet: [String]?

        /// 规则id，在编辑时，必填
        public let ruleId: Int64?

        /// 根据条件过滤，当授权范围为MANUAL:自选主机时且HostIdSet为空时，必填
        public let hostIdFilters: [AssetFilters]?

        /// 根据条件过滤而且排除指定主机id
        public let excludeHostIdSet: [String]?

        public init(rangeType: String, maxDailyCount: Int64, isEnabled: Int64, hostIdSet: [String]? = nil, ruleId: Int64? = nil, hostIdFilters: [AssetFilters]? = nil, excludeHostIdSet: [String]? = nil) {
            self.rangeType = rangeType
            self.maxDailyCount = maxDailyCount
            self.isEnabled = isEnabled
            self.hostIdSet = hostIdSet
            self.ruleId = ruleId
            self.hostIdFilters = hostIdFilters
            self.excludeHostIdSet = excludeHostIdSet
        }

        enum CodingKeys: String, CodingKey {
            case rangeType = "RangeType"
            case maxDailyCount = "MaxDailyCount"
            case isEnabled = "IsEnabled"
            case hostIdSet = "HostIdSet"
            case ruleId = "RuleId"
            case hostIdFilters = "HostIdFilters"
            case excludeHostIdSet = "ExcludeHostIdSet"
        }
    }

    /// AddEditImageAutoAuthorizedRule返回参数结构体
    public struct AddEditImageAutoAuthorizedRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增或编辑本地镜像自动授权规则
    @inlinable @discardableResult
    public func addEditImageAutoAuthorizedRule(_ input: AddEditImageAutoAuthorizedRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddEditImageAutoAuthorizedRuleResponse> {
        self.client.execute(action: "AddEditImageAutoAuthorizedRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增或编辑本地镜像自动授权规则
    @inlinable @discardableResult
    public func addEditImageAutoAuthorizedRule(_ input: AddEditImageAutoAuthorizedRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEditImageAutoAuthorizedRuleResponse {
        try await self.client.execute(action: "AddEditImageAutoAuthorizedRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增或编辑本地镜像自动授权规则
    @inlinable @discardableResult
    public func addEditImageAutoAuthorizedRule(rangeType: String, maxDailyCount: Int64, isEnabled: Int64, hostIdSet: [String]? = nil, ruleId: Int64? = nil, hostIdFilters: [AssetFilters]? = nil, excludeHostIdSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddEditImageAutoAuthorizedRuleResponse> {
        self.addEditImageAutoAuthorizedRule(.init(rangeType: rangeType, maxDailyCount: maxDailyCount, isEnabled: isEnabled, hostIdSet: hostIdSet, ruleId: ruleId, hostIdFilters: hostIdFilters, excludeHostIdSet: excludeHostIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 新增或编辑本地镜像自动授权规则
    @inlinable @discardableResult
    public func addEditImageAutoAuthorizedRule(rangeType: String, maxDailyCount: Int64, isEnabled: Int64, hostIdSet: [String]? = nil, ruleId: Int64? = nil, hostIdFilters: [AssetFilters]? = nil, excludeHostIdSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEditImageAutoAuthorizedRuleResponse {
        try await self.addEditImageAutoAuthorizedRule(.init(rangeType: rangeType, maxDailyCount: maxDailyCount, isEnabled: isEnabled, hostIdSet: hostIdSet, ruleId: ruleId, hostIdFilters: hostIdFilters, excludeHostIdSet: excludeHostIdSet), region: region, logger: logger, on: eventLoop)
    }
}
