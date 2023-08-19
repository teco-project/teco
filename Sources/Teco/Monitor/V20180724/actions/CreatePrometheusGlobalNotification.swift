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
    /// CreatePrometheusGlobalNotification请求参数结构体
    public struct CreatePrometheusGlobalNotificationRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 告警通知渠道
        public let notification: PrometheusNotificationItem

        public init(instanceId: String, notification: PrometheusNotificationItem) {
            self.instanceId = instanceId
            self.notification = notification
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case notification = "Notification"
        }
    }

    /// CreatePrometheusGlobalNotification返回参数结构体
    public struct CreatePrometheusGlobalNotificationResponse: TCResponse {
        /// 全局告警通知渠道ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 创建全局告警通知渠道
    @inlinable
    public func createPrometheusGlobalNotification(_ input: CreatePrometheusGlobalNotificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusGlobalNotificationResponse> {
        self.client.execute(action: "CreatePrometheusGlobalNotification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建全局告警通知渠道
    @inlinable
    public func createPrometheusGlobalNotification(_ input: CreatePrometheusGlobalNotificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusGlobalNotificationResponse {
        try await self.client.execute(action: "CreatePrometheusGlobalNotification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建全局告警通知渠道
    @inlinable
    public func createPrometheusGlobalNotification(instanceId: String, notification: PrometheusNotificationItem, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusGlobalNotificationResponse> {
        self.createPrometheusGlobalNotification(.init(instanceId: instanceId, notification: notification), region: region, logger: logger, on: eventLoop)
    }

    /// 创建全局告警通知渠道
    @inlinable
    public func createPrometheusGlobalNotification(instanceId: String, notification: PrometheusNotificationItem, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusGlobalNotificationResponse {
        try await self.createPrometheusGlobalNotification(.init(instanceId: instanceId, notification: notification), region: region, logger: logger, on: eventLoop)
    }
}
