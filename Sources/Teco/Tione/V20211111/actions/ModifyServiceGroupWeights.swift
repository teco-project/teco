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

extension Tione {
    /// ModifyServiceGroupWeights请求参数结构体
    public struct ModifyServiceGroupWeightsRequest: TCRequest {
        /// 服务组id
        public let serviceGroupId: String

        /// 权重设置
        public let weights: [WeightEntry]

        public init(serviceGroupId: String, weights: [WeightEntry]) {
            self.serviceGroupId = serviceGroupId
            self.weights = weights
        }

        enum CodingKeys: String, CodingKey {
            case serviceGroupId = "ServiceGroupId"
            case weights = "Weights"
        }
    }

    /// ModifyServiceGroupWeights返回参数结构体
    public struct ModifyServiceGroupWeightsResponse: TCResponse {
        /// 更新权重后的服务组信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceGroup: ServiceGroup?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceGroup = "ServiceGroup"
            case requestId = "RequestId"
        }
    }

    /// 更新推理服务组流量分配
    @inlinable
    public func modifyServiceGroupWeights(_ input: ModifyServiceGroupWeightsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceGroupWeightsResponse> {
        self.client.execute(action: "ModifyServiceGroupWeights", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新推理服务组流量分配
    @inlinable
    public func modifyServiceGroupWeights(_ input: ModifyServiceGroupWeightsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceGroupWeightsResponse {
        try await self.client.execute(action: "ModifyServiceGroupWeights", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新推理服务组流量分配
    @inlinable
    public func modifyServiceGroupWeights(serviceGroupId: String, weights: [WeightEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceGroupWeightsResponse> {
        self.modifyServiceGroupWeights(.init(serviceGroupId: serviceGroupId, weights: weights), region: region, logger: logger, on: eventLoop)
    }

    /// 更新推理服务组流量分配
    @inlinable
    public func modifyServiceGroupWeights(serviceGroupId: String, weights: [WeightEntry], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceGroupWeightsResponse {
        try await self.modifyServiceGroupWeights(.init(serviceGroupId: serviceGroupId, weights: weights), region: region, logger: logger, on: eventLoop)
    }
}
