//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension As {
    /// 创建生命周期挂钩
    ///
    /// 本接口（CreateLifecycleHook）用于创建生命周期挂钩。
    /// * 您可以为生命周期挂钩配置消息通知或执行自动化助手命令。
    /// 如果您配置了通知消息，弹性伸缩会通知您的TDMQ消息队列，通知内容形如：
    /// ```
    /// {
    /// 	"Service": "Tencent Cloud Auto Scaling",
    /// 	"Time": "2019-03-14T10:15:11Z",
    /// 	"AppId": "1251783334",
    /// 	"ActivityId": "asa-fznnvrja",
    /// 	"AutoScalingGroupId": "asg-rrrrtttt",
    /// 	"LifecycleHookId": "ash-xxxxyyyy",
    /// 	"LifecycleHookName": "my-hook",
    /// 	"LifecycleActionToken": "3080e1c9-0efe-4dd7-ad3b-90cd6618298f",
    /// 	"InstanceId": "ins-aaaabbbb",
    /// 	"LifecycleTransition": "INSTANCE_LAUNCHING",
    /// 	"NotificationMetadata": ""
    /// }
    /// ```
    @inlinable
    public func createLifecycleHook(_ input: CreateLifecycleHookRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLifecycleHookResponse > {
        self.client.execute(action: "CreateLifecycleHook", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建生命周期挂钩
    ///
    /// 本接口（CreateLifecycleHook）用于创建生命周期挂钩。
    /// * 您可以为生命周期挂钩配置消息通知或执行自动化助手命令。
    /// 如果您配置了通知消息，弹性伸缩会通知您的TDMQ消息队列，通知内容形如：
    /// ```
    /// {
    /// 	"Service": "Tencent Cloud Auto Scaling",
    /// 	"Time": "2019-03-14T10:15:11Z",
    /// 	"AppId": "1251783334",
    /// 	"ActivityId": "asa-fznnvrja",
    /// 	"AutoScalingGroupId": "asg-rrrrtttt",
    /// 	"LifecycleHookId": "ash-xxxxyyyy",
    /// 	"LifecycleHookName": "my-hook",
    /// 	"LifecycleActionToken": "3080e1c9-0efe-4dd7-ad3b-90cd6618298f",
    /// 	"InstanceId": "ins-aaaabbbb",
    /// 	"LifecycleTransition": "INSTANCE_LAUNCHING",
    /// 	"NotificationMetadata": ""
    /// }
    /// ```
    @inlinable
    public func createLifecycleHook(_ input: CreateLifecycleHookRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLifecycleHookResponse {
        try await self.client.execute(action: "CreateLifecycleHook", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateLifecycleHook请求参数结构体
    public struct CreateLifecycleHookRequest: TCRequestModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String
        
        /// 生命周期挂钩名称。名称仅支持中文、英文、数字、下划线（_）、短横线（-）、小数点（.），最大长度不能超128个字节。
        public let lifecycleHookName: String
        
        /// 进行生命周期挂钩的场景，取值范围包括 INSTANCE_LAUNCHING 和 INSTANCE_TERMINATING
        public let lifecycleTransition: String
        
        /// 定义伸缩组在生命周期挂钩超时的情况下应采取的操作，取值范围是 CONTINUE 或 ABANDON，默认值为 CONTINUE
        public let defaultResult: String?
        
        /// 生命周期挂钩超时之前可以经过的最长时间（以秒为单位），范围从30到7200秒，默认值为300秒
        public let heartbeatTimeout: Int64?
        
        /// 弹性伸缩向通知目标发送的附加信息，配置通知时使用,默认值为空字符串""。最大长度不能超过1024个字节。
        public let notificationMetadata: String?
        
        /// 通知目标。NotificationTarget和LifecycleCommand参数互斥，二者不可同时指定。
        public let notificationTarget: NotificationTarget
        
        /// 进行生命周期挂钩的场景类型，取值范围包括NORMAL 和 EXTENSION。说明：设置为EXTENSION值，在AttachInstances、DetachInstances、RemoveInstaces接口时会触发生命周期挂钩操作，值为NORMAL则不会在这些接口中触发生命周期挂钩。
        public let lifecycleTransitionType: String?
        
        /// 远程命令执行对象。NotificationTarget和LifecycleCommand参数互斥，二者不可同时指定。
        public let lifecycleCommand: LifecycleCommand
        
        public init (autoScalingGroupId: String, lifecycleHookName: String, lifecycleTransition: String, defaultResult: String?, heartbeatTimeout: Int64?, notificationMetadata: String?, notificationTarget: NotificationTarget, lifecycleTransitionType: String?, lifecycleCommand: LifecycleCommand) {
            self.autoScalingGroupId = autoScalingGroupId
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
            case autoScalingGroupId = "AutoScalingGroupId"
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
    
    /// CreateLifecycleHook返回参数结构体
    public struct CreateLifecycleHookResponse: TCResponseModel {
        /// 生命周期挂钩ID
        public let lifecycleHookId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case lifecycleHookId = "LifecycleHookId"
            case requestId = "RequestId"
        }
    }
}