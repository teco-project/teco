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

extension Tdmq {
    /// DeleteRabbitMQVipInstance请求参数结构体
    public struct DeleteRabbitMQVipInstanceRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DeleteRabbitMQVipInstance返回参数结构体
    public struct DeleteRabbitMQVipInstanceResponse: TCResponseModel {
        /// 订单号Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tranId: String?

        /// 实例Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tranId = "TranId"
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 删除RabbitMQ专享版实例
    @inlinable
    public func deleteRabbitMQVipInstance(_ input: DeleteRabbitMQVipInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRabbitMQVipInstanceResponse> {
        self.client.execute(action: "DeleteRabbitMQVipInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除RabbitMQ专享版实例
    @inlinable
    public func deleteRabbitMQVipInstance(_ input: DeleteRabbitMQVipInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRabbitMQVipInstanceResponse {
        try await self.client.execute(action: "DeleteRabbitMQVipInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除RabbitMQ专享版实例
    @inlinable
    public func deleteRabbitMQVipInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRabbitMQVipInstanceResponse> {
        self.deleteRabbitMQVipInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除RabbitMQ专享版实例
    @inlinable
    public func deleteRabbitMQVipInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRabbitMQVipInstanceResponse {
        try await self.deleteRabbitMQVipInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}