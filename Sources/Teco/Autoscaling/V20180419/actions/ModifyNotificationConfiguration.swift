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

extension As {
    /// ModifyNotificationConfiguration请求参数结构体
    public struct ModifyNotificationConfigurationRequest: TCRequestModel {
        /// 待修改的通知ID。
        public let autoScalingNotificationId: String

        /// 通知类型，即为需要订阅的通知类型集合，取值范围如下：
        /// <li>SCALE_OUT_SUCCESSFUL：扩容成功</li>
        /// <li>SCALE_OUT_FAILED：扩容失败</li>
        /// <li>SCALE_IN_SUCCESSFUL：缩容成功</li>
        /// <li>SCALE_IN_FAILED：缩容失败</li>
        /// <li>REPLACE_UNHEALTHY_INSTANCE_SUCCESSFUL：替换不健康子机成功</li>
        /// <li>REPLACE_UNHEALTHY_INSTANCE_FAILED：替换不健康子机失败</li>
        public let notificationTypes: [String]?

        /// 通知组ID，即为用户组ID集合，用户组ID可以通过[ListGroups](https://cloud.tencent.com/document/product/598/34589)查询。
        public let notificationUserGroupIds: [String]?

        /// CMQ 队列或 TDMQ CMQ 队列名。
        public let queueName: String?

        /// CMQ 主题或 TDMQ CMQ 主题名。
        public let topicName: String?

        public init(autoScalingNotificationId: String, notificationTypes: [String]? = nil, notificationUserGroupIds: [String]? = nil, queueName: String? = nil, topicName: String? = nil) {
            self.autoScalingNotificationId = autoScalingNotificationId
            self.notificationTypes = notificationTypes
            self.notificationUserGroupIds = notificationUserGroupIds
            self.queueName = queueName
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingNotificationId = "AutoScalingNotificationId"
            case notificationTypes = "NotificationTypes"
            case notificationUserGroupIds = "NotificationUserGroupIds"
            case queueName = "QueueName"
            case topicName = "TopicName"
        }
    }

    /// ModifyNotificationConfiguration返回参数结构体
    public struct ModifyNotificationConfigurationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改通知
    ///
    /// 本接口（ModifyNotificationConfiguration）用于修改通知。
    /// * 通知的接收端类型不支持修改。
    @inlinable @discardableResult
    public func modifyNotificationConfiguration(_ input: ModifyNotificationConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNotificationConfigurationResponse> {
        self.client.execute(action: "ModifyNotificationConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改通知
    ///
    /// 本接口（ModifyNotificationConfiguration）用于修改通知。
    /// * 通知的接收端类型不支持修改。
    @inlinable @discardableResult
    public func modifyNotificationConfiguration(_ input: ModifyNotificationConfigurationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNotificationConfigurationResponse {
        try await self.client.execute(action: "ModifyNotificationConfiguration", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改通知
    ///
    /// 本接口（ModifyNotificationConfiguration）用于修改通知。
    /// * 通知的接收端类型不支持修改。
    @inlinable @discardableResult
    public func modifyNotificationConfiguration(autoScalingNotificationId: String, notificationTypes: [String]? = nil, notificationUserGroupIds: [String]? = nil, queueName: String? = nil, topicName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNotificationConfigurationResponse> {
        self.modifyNotificationConfiguration(.init(autoScalingNotificationId: autoScalingNotificationId, notificationTypes: notificationTypes, notificationUserGroupIds: notificationUserGroupIds, queueName: queueName, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改通知
    ///
    /// 本接口（ModifyNotificationConfiguration）用于修改通知。
    /// * 通知的接收端类型不支持修改。
    @inlinable @discardableResult
    public func modifyNotificationConfiguration(autoScalingNotificationId: String, notificationTypes: [String]? = nil, notificationUserGroupIds: [String]? = nil, queueName: String? = nil, topicName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNotificationConfigurationResponse {
        try await self.modifyNotificationConfiguration(.init(autoScalingNotificationId: autoScalingNotificationId, notificationTypes: notificationTypes, notificationUserGroupIds: notificationUserGroupIds, queueName: queueName, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }
}
