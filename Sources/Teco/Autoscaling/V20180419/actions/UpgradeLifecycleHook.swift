//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension As {
    /// UpgradeLifecycleHook请求参数结构体
    public struct UpgradeLifecycleHookRequest: TCRequestModel {
        /// 生命周期挂钩ID
        public let lifecycleHookId: String
        
        /// 生命周期挂钩名称
        public let lifecycleHookName: String
        
        /// 进行生命周期挂钩的场景，取值范围包括“INSTANCE_LAUNCHING”和“INSTANCE_TERMINATING”
        public let lifecycleTransition: String
        
        /// 定义伸缩组在生命周期挂钩超时的情况下应采取的操作，取值范围是“CONTINUE”或“ABANDON”，默认值为“CONTINUE”
        public let defaultResult: String?
        
        /// 生命周期挂钩超时之前可以经过的最长时间（以秒为单位），范围从30到7200秒，默认值为300秒
        public let heartbeatTimeout: Int64?
        
        /// 弹性伸缩向通知目标发送的附加信息，配置通知时使用，默认值为空字符串""
        public let notificationMetadata: String?
        
        /// 通知目标。NotificationTarget和LifecycleCommand参数互斥，二者不可同时指定。
        public let notificationTarget: NotificationTarget?
        
        /// 进行生命周期挂钩的场景类型，取值范围包括NORMAL 和 EXTENSION。说明：设置为EXTENSION值，在AttachInstances、DetachInstances、RemoveInstaces接口时会触发生命周期挂钩操作，值为NORMAL则不会在这些接口中触发生命周期挂钩。
        public let lifecycleTransitionType: String?
        
        /// 远程命令执行对象。NotificationTarget和LifecycleCommand参数互斥，二者不可同时指定。
        public let lifecycleCommand: LifecycleCommand?
        
        public init (lifecycleHookId: String, lifecycleHookName: String, lifecycleTransition: String, defaultResult: String? = nil, heartbeatTimeout: Int64? = nil, notificationMetadata: String? = nil, notificationTarget: NotificationTarget? = nil, lifecycleTransitionType: String? = nil, lifecycleCommand: LifecycleCommand? = nil) {
            self.lifecycleHookId = lifecycleHookId
            self.lifecycleHookName = lifecycleHookName
            self.lifecycleTransition = lifecycleTransition
            self.defaultResult = defaultResult
            self.heartbeatTimeout = heartbeatTimeout
            self.notificationMetadata = notificationMetadata
            self.notificationTarget = notificationTarget
            self.lifecycleTransitionType = lifecycleTransitionType
            self.lifecycleCommand = lifecycleCommand
        }
        
        enum CodingKeys: String, CodingKey {
            case lifecycleHookId = "LifecycleHookId"
            case lifecycleHookName = "LifecycleHookName"
            case lifecycleTransition = "LifecycleTransition"
            case defaultResult = "DefaultResult"
            case heartbeatTimeout = "HeartbeatTimeout"
            case notificationMetadata = "NotificationMetadata"
            case notificationTarget = "NotificationTarget"
            case lifecycleTransitionType = "LifecycleTransitionType"
            case lifecycleCommand = "LifecycleCommand"
        }
    }
    
    /// UpgradeLifecycleHook返回参数结构体
    public struct UpgradeLifecycleHookResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 升级生命周期挂钩
    ///
    /// 本接口（UpgradeLifecycleHook）用于升级生命周期挂钩。
    /// * 本接口用于升级生命周期挂钩，采用“完全覆盖”风格，无论之前参数如何，统一按照接口参数设置为新的配置。对于非必填字段，不填写则按照默认值赋值。
    @inlinable
    public func upgradeLifecycleHook(_ input: UpgradeLifecycleHookRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpgradeLifecycleHookResponse > {
        self.client.execute(action: "UpgradeLifecycleHook", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 升级生命周期挂钩
    ///
    /// 本接口（UpgradeLifecycleHook）用于升级生命周期挂钩。
    /// * 本接口用于升级生命周期挂钩，采用“完全覆盖”风格，无论之前参数如何，统一按照接口参数设置为新的配置。对于非必填字段，不填写则按照默认值赋值。
    @inlinable
    public func upgradeLifecycleHook(_ input: UpgradeLifecycleHookRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeLifecycleHookResponse {
        try await self.client.execute(action: "UpgradeLifecycleHook", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
