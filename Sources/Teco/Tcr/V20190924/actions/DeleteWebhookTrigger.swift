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

extension Tcr {
    /// DeleteWebhookTrigger请求参数结构体
    public struct DeleteWebhookTriggerRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String

        /// 命名空间
        public let namespace: String

        /// 触发器 Id
        public let id: Int64

        public init(registryId: String, namespace: String, id: Int64) {
            self.registryId = registryId
            self.namespace = namespace
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case namespace = "Namespace"
            case id = "Id"
        }
    }

    /// DeleteWebhookTrigger返回参数结构体
    public struct DeleteWebhookTriggerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除触发器
    @inlinable @discardableResult
    public func deleteWebhookTrigger(_ input: DeleteWebhookTriggerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWebhookTriggerResponse> {
        self.client.execute(action: "DeleteWebhookTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除触发器
    @inlinable @discardableResult
    public func deleteWebhookTrigger(_ input: DeleteWebhookTriggerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWebhookTriggerResponse {
        try await self.client.execute(action: "DeleteWebhookTrigger", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除触发器
    @inlinable @discardableResult
    public func deleteWebhookTrigger(registryId: String, namespace: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWebhookTriggerResponse> {
        self.deleteWebhookTrigger(DeleteWebhookTriggerRequest(registryId: registryId, namespace: namespace, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 删除触发器
    @inlinable @discardableResult
    public func deleteWebhookTrigger(registryId: String, namespace: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWebhookTriggerResponse {
        try await self.deleteWebhookTrigger(DeleteWebhookTriggerRequest(registryId: registryId, namespace: namespace, id: id), region: region, logger: logger, on: eventLoop)
    }
}
