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

extension Monitor {
    /// DescribePrometheusGlobalNotification请求参数结构体
    public struct DescribePrometheusGlobalNotificationRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribePrometheusGlobalNotification返回参数结构体
    public struct DescribePrometheusGlobalNotificationResponse: TCResponseModel {
        /// 全局告警通知渠道
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let notification: PrometheusNotificationItem?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notification = "Notification"
            case requestId = "RequestId"
        }
    }

    /// 查询全局告警通知渠道
    @inlinable
    public func describePrometheusGlobalNotification(_ input: DescribePrometheusGlobalNotificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusGlobalNotificationResponse> {
        self.client.execute(action: "DescribePrometheusGlobalNotification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询全局告警通知渠道
    @inlinable
    public func describePrometheusGlobalNotification(_ input: DescribePrometheusGlobalNotificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusGlobalNotificationResponse {
        try await self.client.execute(action: "DescribePrometheusGlobalNotification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询全局告警通知渠道
    @inlinable
    public func describePrometheusGlobalNotification(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusGlobalNotificationResponse> {
        self.describePrometheusGlobalNotification(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询全局告警通知渠道
    @inlinable
    public func describePrometheusGlobalNotification(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusGlobalNotificationResponse {
        try await self.describePrometheusGlobalNotification(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
