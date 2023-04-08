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

extension Monitor {
    /// DeleteAlertRules请求参数结构体
    public struct DeleteAlertRulesRequest: TCRequestModel {
        /// 规则 ID 列表
        public let ruleIds: [String]

        /// Prometheus 实例 ID
        public let instanceId: String

        public init(ruleIds: [String], instanceId: String) {
            self.ruleIds = ruleIds
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case ruleIds = "RuleIds"
            case instanceId = "InstanceId"
        }
    }

    /// DeleteAlertRules返回参数结构体
    public struct DeleteAlertRulesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除报警规则
    ///
    /// 批量删除 Prometheus 报警规则
    @inlinable @discardableResult
    public func deleteAlertRules(_ input: DeleteAlertRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlertRulesResponse> {
        self.client.execute(action: "DeleteAlertRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除报警规则
    ///
    /// 批量删除 Prometheus 报警规则
    @inlinable @discardableResult
    public func deleteAlertRules(_ input: DeleteAlertRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlertRulesResponse {
        try await self.client.execute(action: "DeleteAlertRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除报警规则
    ///
    /// 批量删除 Prometheus 报警规则
    @inlinable @discardableResult
    public func deleteAlertRules(ruleIds: [String], instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlertRulesResponse> {
        self.deleteAlertRules(.init(ruleIds: ruleIds, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除报警规则
    ///
    /// 批量删除 Prometheus 报警规则
    @inlinable @discardableResult
    public func deleteAlertRules(ruleIds: [String], instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlertRulesResponse {
        try await self.deleteAlertRules(.init(ruleIds: ruleIds, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
