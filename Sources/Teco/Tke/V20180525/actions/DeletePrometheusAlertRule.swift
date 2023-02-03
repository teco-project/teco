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

extension Tke {
    /// DeletePrometheusAlertRule请求参数结构体
    public struct DeletePrometheusAlertRuleRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 告警规则id列表
        public let alertIds: [String]

        public init(instanceId: String, alertIds: [String]) {
            self.instanceId = instanceId
            self.alertIds = alertIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case alertIds = "AlertIds"
        }
    }

    /// DeletePrometheusAlertRule返回参数结构体
    public struct DeletePrometheusAlertRuleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除告警规则
    @inlinable @discardableResult
    public func deletePrometheusAlertRule(_ input: DeletePrometheusAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusAlertRuleResponse> {
        self.client.execute(action: "DeletePrometheusAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除告警规则
    @inlinable @discardableResult
    public func deletePrometheusAlertRule(_ input: DeletePrometheusAlertRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusAlertRuleResponse {
        try await self.client.execute(action: "DeletePrometheusAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除告警规则
    @inlinable @discardableResult
    public func deletePrometheusAlertRule(instanceId: String, alertIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusAlertRuleResponse> {
        let input = DeletePrometheusAlertRuleRequest(instanceId: instanceId, alertIds: alertIds)
        return self.client.execute(action: "DeletePrometheusAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除告警规则
    @inlinable @discardableResult
    public func deletePrometheusAlertRule(instanceId: String, alertIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusAlertRuleResponse {
        let input = DeletePrometheusAlertRuleRequest(instanceId: instanceId, alertIds: alertIds)
        return try await self.client.execute(action: "DeletePrometheusAlertRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
