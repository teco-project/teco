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

extension Monitor {
    /// DeletePrometheusAlertPolicy请求参数结构体
    public struct DeletePrometheusAlertPolicyRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 告警策略id列表
        public let alertIds: [String]

        /// 告警策略名称
        public let names: [String]?

        public init(instanceId: String, alertIds: [String], names: [String]? = nil) {
            self.instanceId = instanceId
            self.alertIds = alertIds
            self.names = names
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case alertIds = "AlertIds"
            case names = "Names"
        }
    }

    /// DeletePrometheusAlertPolicy返回参数结构体
    public struct DeletePrometheusAlertPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除2.0实例告警策略
    @inlinable @discardableResult
    public func deletePrometheusAlertPolicy(_ input: DeletePrometheusAlertPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusAlertPolicyResponse> {
        self.client.execute(action: "DeletePrometheusAlertPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除2.0实例告警策略
    @inlinable @discardableResult
    public func deletePrometheusAlertPolicy(_ input: DeletePrometheusAlertPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusAlertPolicyResponse {
        try await self.client.execute(action: "DeletePrometheusAlertPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除2.0实例告警策略
    @inlinable @discardableResult
    public func deletePrometheusAlertPolicy(instanceId: String, alertIds: [String], names: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrometheusAlertPolicyResponse> {
        self.deletePrometheusAlertPolicy(.init(instanceId: instanceId, alertIds: alertIds, names: names), region: region, logger: logger, on: eventLoop)
    }

    /// 删除2.0实例告警策略
    @inlinable @discardableResult
    public func deletePrometheusAlertPolicy(instanceId: String, alertIds: [String], names: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusAlertPolicyResponse {
        try await self.deletePrometheusAlertPolicy(.init(instanceId: instanceId, alertIds: alertIds, names: names), region: region, logger: logger, on: eventLoop)
    }
}
