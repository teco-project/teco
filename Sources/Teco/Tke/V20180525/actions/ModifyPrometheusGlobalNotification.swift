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

extension Tke {
    /// ModifyPrometheusGlobalNotification请求参数结构体
    public struct ModifyPrometheusGlobalNotificationRequest: TCRequestModel {
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

    /// ModifyPrometheusGlobalNotification返回参数结构体
    public struct ModifyPrometheusGlobalNotificationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改全局告警通知渠道
    @inlinable @discardableResult
    public func modifyPrometheusGlobalNotification(_ input: ModifyPrometheusGlobalNotificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusGlobalNotificationResponse> {
        self.client.execute(action: "ModifyPrometheusGlobalNotification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改全局告警通知渠道
    @inlinable @discardableResult
    public func modifyPrometheusGlobalNotification(_ input: ModifyPrometheusGlobalNotificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusGlobalNotificationResponse {
        try await self.client.execute(action: "ModifyPrometheusGlobalNotification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改全局告警通知渠道
    @inlinable @discardableResult
    public func modifyPrometheusGlobalNotification(instanceId: String, notification: PrometheusNotificationItem, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusGlobalNotificationResponse> {
        self.modifyPrometheusGlobalNotification(.init(instanceId: instanceId, notification: notification), region: region, logger: logger, on: eventLoop)
    }

    /// 修改全局告警通知渠道
    @inlinable @discardableResult
    public func modifyPrometheusGlobalNotification(instanceId: String, notification: PrometheusNotificationItem, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusGlobalNotificationResponse {
        try await self.modifyPrometheusGlobalNotification(.init(instanceId: instanceId, notification: notification), region: region, logger: logger, on: eventLoop)
    }
}
