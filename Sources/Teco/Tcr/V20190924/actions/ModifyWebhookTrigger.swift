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

extension Tcr {
    /// ModifyWebhookTrigger请求参数结构体
    public struct ModifyWebhookTriggerRequest: TCRequest {
        /// 实例Id
        public let registryId: String

        /// 触发器参数
        public let trigger: WebhookTrigger

        /// 命名空间
        public let namespace: String

        public init(registryId: String, trigger: WebhookTrigger, namespace: String) {
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

    /// ModifyWebhookTrigger返回参数结构体
    public struct ModifyWebhookTriggerResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新触发器
    @inlinable @discardableResult
    public func modifyWebhookTrigger(_ input: ModifyWebhookTriggerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWebhookTriggerResponse> {
        self.client.execute(action: "ModifyWebhookTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新触发器
    @inlinable @discardableResult
    public func modifyWebhookTrigger(_ input: ModifyWebhookTriggerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWebhookTriggerResponse {
        try await self.client.execute(action: "ModifyWebhookTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新触发器
    @inlinable @discardableResult
    public func modifyWebhookTrigger(registryId: String, trigger: WebhookTrigger, namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWebhookTriggerResponse> {
        self.modifyWebhookTrigger(.init(registryId: registryId, trigger: trigger, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 更新触发器
    @inlinable @discardableResult
    public func modifyWebhookTrigger(registryId: String, trigger: WebhookTrigger, namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWebhookTriggerResponse {
        try await self.modifyWebhookTrigger(.init(registryId: registryId, trigger: trigger, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
