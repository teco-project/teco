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

extension Tcss {
    /// ModifyAccessControlRuleStatus请求参数结构体
    public struct ModifyAccessControlRuleStatusRequest: TCRequestModel {
        /// 策略的ids
        public let ruleIdSet: [String]

        /// 策略开关，true:代表开启， false代表关闭
        public let isEnable: Bool

        public init(ruleIdSet: [String], isEnable: Bool) {
            self.ruleIdSet = ruleIdSet
            self.isEnable = isEnable
        }

        enum CodingKeys: String, CodingKey {
            case ruleIdSet = "RuleIdSet"
            case isEnable = "IsEnable"
        }
    }

    /// ModifyAccessControlRuleStatus返回参数结构体
    public struct ModifyAccessControlRuleStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改运行时访问控制策略状态
    ///
    /// 修改运行时访问控制策略的状态，启用或者禁用
    @inlinable @discardableResult
    public func modifyAccessControlRuleStatus(_ input: ModifyAccessControlRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccessControlRuleStatusResponse> {
        self.client.execute(action: "ModifyAccessControlRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改运行时访问控制策略状态
    ///
    /// 修改运行时访问控制策略的状态，启用或者禁用
    @inlinable @discardableResult
    public func modifyAccessControlRuleStatus(_ input: ModifyAccessControlRuleStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccessControlRuleStatusResponse {
        try await self.client.execute(action: "ModifyAccessControlRuleStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改运行时访问控制策略状态
    ///
    /// 修改运行时访问控制策略的状态，启用或者禁用
    @inlinable @discardableResult
    public func modifyAccessControlRuleStatus(ruleIdSet: [String], isEnable: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccessControlRuleStatusResponse> {
        self.modifyAccessControlRuleStatus(ModifyAccessControlRuleStatusRequest(ruleIdSet: ruleIdSet, isEnable: isEnable), region: region, logger: logger, on: eventLoop)
    }

    /// 修改运行时访问控制策略状态
    ///
    /// 修改运行时访问控制策略的状态，启用或者禁用
    @inlinable @discardableResult
    public func modifyAccessControlRuleStatus(ruleIdSet: [String], isEnable: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccessControlRuleStatusResponse {
        try await self.modifyAccessControlRuleStatus(ModifyAccessControlRuleStatusRequest(ruleIdSet: ruleIdSet, isEnable: isEnable), region: region, logger: logger, on: eventLoop)
    }
}
