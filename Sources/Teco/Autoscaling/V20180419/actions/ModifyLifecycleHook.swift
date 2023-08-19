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

extension As {
    /// ModifyLifecycleHook请求参数结构体
    public struct ModifyLifecycleHookRequest: TCRequest {
        /// 生命周期挂钩ID。
        public let lifecycleHookId: String

        /// 生命周期挂钩名称。
        public let lifecycleHookName: String?

        /// 进入生命周期挂钩场景，取值包括：
        /// - INSTANCE_LAUNCHING：实例启动后
        /// - INSTANCE_TERMINATING：实例销毁前
        public let lifecycleTransition: String?

        /// 定义伸缩组在生命周期挂钩超时的情况下应采取的操作，取值包括：
        /// - CONTINUE： 超时后继续伸缩活动
        /// - ABANDON：超时后终止伸缩活动
        public let defaultResult: String?

        /// 生命周期挂钩超时之前可以经过的最长时间（以秒为单位），范围从 30 到 7200 秒。
        public let heartbeatTimeout: UInt64?

        /// 弹性伸缩向通知目标发送的附加信息。
        public let notificationMetadata: String?

        /// 进行生命周期挂钩的场景类型，取值范围包括`NORMAL`和 `EXTENSION`。说明：设置为`EXTENSION`值，在AttachInstances、DetachInstances、RemoveInstances 接口时会触发生命周期挂钩操作，值为`NORMAL`则不会在这些接口中触发生命周期挂钩。
        public let lifecycleTransitionType: String?

        /// 通知目标信息。
        public let notificationTarget: NotificationTarget?

        /// 远程命令执行对象。
        public let lifecycleCommand: LifecycleCommand?

        public init(lifecycleHookId: String, lifecycleHookName: String? = nil, lifecycleTransition: String? = nil, defaultResult: String? = nil, heartbeatTimeout: UInt64? = nil, notificationMetadata: String? = nil, lifecycleTransitionType: String? = nil, notificationTarget: NotificationTarget? = nil, lifecycleCommand: LifecycleCommand? = nil) {
            self.lifecycleHookId = lifecycleHookId
            self.lifecycleHookName = lifecycleHookName
            self.lifecycleTransition = lifecycleTransition
            self.defaultResult = defaultResult
            self.heartbeatTimeout = heartbeatTimeout
            self.notificationMetadata = notificationMetadata
            self.lifecycleTransitionType = lifecycleTransitionType
            self.notificationTarget = notificationTarget
            self.lifecycleCommand = lifecycleCommand
        }

        enum CodingKeys: String, CodingKey {
            case lifecycleHookId = "LifecycleHookId"
            case lifecycleHookName = "LifecycleHookName"
            case lifecycleTransition = "LifecycleTransition"
            case defaultResult = "DefaultResult"
            case heartbeatTimeout = "HeartbeatTimeout"
            case notificationMetadata = "NotificationMetadata"
            case lifecycleTransitionType = "LifecycleTransitionType"
            case notificationTarget = "NotificationTarget"
            case lifecycleCommand = "LifecycleCommand"
        }
    }

    /// ModifyLifecycleHook返回参数结构体
    public struct ModifyLifecycleHookResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改生命周期挂钩
    ///
    /// 此接口用于修改生命周期挂钩。
    @inlinable @discardableResult
    public func modifyLifecycleHook(_ input: ModifyLifecycleHookRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLifecycleHookResponse> {
        self.client.execute(action: "ModifyLifecycleHook", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改生命周期挂钩
    ///
    /// 此接口用于修改生命周期挂钩。
    @inlinable @discardableResult
    public func modifyLifecycleHook(_ input: ModifyLifecycleHookRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLifecycleHookResponse {
        try await self.client.execute(action: "ModifyLifecycleHook", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改生命周期挂钩
    ///
    /// 此接口用于修改生命周期挂钩。
    @inlinable @discardableResult
    public func modifyLifecycleHook(lifecycleHookId: String, lifecycleHookName: String? = nil, lifecycleTransition: String? = nil, defaultResult: String? = nil, heartbeatTimeout: UInt64? = nil, notificationMetadata: String? = nil, lifecycleTransitionType: String? = nil, notificationTarget: NotificationTarget? = nil, lifecycleCommand: LifecycleCommand? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLifecycleHookResponse> {
        self.modifyLifecycleHook(.init(lifecycleHookId: lifecycleHookId, lifecycleHookName: lifecycleHookName, lifecycleTransition: lifecycleTransition, defaultResult: defaultResult, heartbeatTimeout: heartbeatTimeout, notificationMetadata: notificationMetadata, lifecycleTransitionType: lifecycleTransitionType, notificationTarget: notificationTarget, lifecycleCommand: lifecycleCommand), region: region, logger: logger, on: eventLoop)
    }

    /// 修改生命周期挂钩
    ///
    /// 此接口用于修改生命周期挂钩。
    @inlinable @discardableResult
    public func modifyLifecycleHook(lifecycleHookId: String, lifecycleHookName: String? = nil, lifecycleTransition: String? = nil, defaultResult: String? = nil, heartbeatTimeout: UInt64? = nil, notificationMetadata: String? = nil, lifecycleTransitionType: String? = nil, notificationTarget: NotificationTarget? = nil, lifecycleCommand: LifecycleCommand? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLifecycleHookResponse {
        try await self.modifyLifecycleHook(.init(lifecycleHookId: lifecycleHookId, lifecycleHookName: lifecycleHookName, lifecycleTransition: lifecycleTransition, defaultResult: defaultResult, heartbeatTimeout: heartbeatTimeout, notificationMetadata: notificationMetadata, lifecycleTransitionType: lifecycleTransitionType, notificationTarget: notificationTarget, lifecycleCommand: lifecycleCommand), region: region, logger: logger, on: eventLoop)
    }
}
