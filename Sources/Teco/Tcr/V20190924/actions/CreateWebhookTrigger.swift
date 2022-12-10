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

extension Tcr {
    /// 创建触发器
    @inlinable
    public func createWebhookTrigger(_ input: CreateWebhookTriggerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateWebhookTriggerResponse > {
        self.client.execute(action: "CreateWebhookTrigger", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建触发器
    @inlinable
    public func createWebhookTrigger(_ input: CreateWebhookTriggerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWebhookTriggerResponse {
        try await self.client.execute(action: "CreateWebhookTrigger", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateWebhookTrigger请求参数结构体
    public struct CreateWebhookTriggerRequest: TCRequestModel {
        /// 实例 Id
        public let registryId: String
        
        /// 触发器参数
        public let trigger: WebhookTrigger
        
        /// 命名空间
        public let namespace: String
        
        public init (registryId: String, trigger: WebhookTrigger, namespace: String) {
            self.registryId = registryId
            self.trigger = trigger
            self.namespace = namespace
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case trigger = "Trigger"
            case namespace = "Namespace"
        }
    }
    
    /// CreateWebhookTrigger返回参数结构体
    public struct CreateWebhookTriggerResponse: TCResponseModel {
        /// 新建的触发器
        public let trigger: WebhookTrigger
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case trigger = "Trigger"
            case requestId = "RequestId"
        }
    }
}
