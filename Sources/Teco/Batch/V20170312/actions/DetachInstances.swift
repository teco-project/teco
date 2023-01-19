//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Batch {
    /// DetachInstances请求参数结构体
    public struct DetachInstancesRequest: TCRequestModel {
        /// 计算环境ID
        public let envId: String

        /// 实例ID列表
        public let instanceIds: [String]

        public init(envId: String, instanceIds: [String]) {
            self.envId = envId
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case instanceIds = "InstanceIds"
        }
    }

    /// DetachInstances返回参数结构体
    public struct DetachInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 从计算环境移出实例
    ///
    /// 将添加到计算环境中的实例从计算环境中移出。若是由批量计算自动创建的计算节点实例则不允许移出。
    @inlinable
    public func detachInstances(_ input: DetachInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachInstancesResponse> {
        self.client.execute(action: "DetachInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 从计算环境移出实例
    ///
    /// 将添加到计算环境中的实例从计算环境中移出。若是由批量计算自动创建的计算节点实例则不允许移出。
    @inlinable
    public func detachInstances(_ input: DetachInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachInstancesResponse {
        try await self.client.execute(action: "DetachInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 从计算环境移出实例
    ///
    /// 将添加到计算环境中的实例从计算环境中移出。若是由批量计算自动创建的计算节点实例则不允许移出。
    @inlinable
    public func detachInstances(envId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachInstancesResponse> {
        self.detachInstances(DetachInstancesRequest(envId: envId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 从计算环境移出实例
    ///
    /// 将添加到计算环境中的实例从计算环境中移出。若是由批量计算自动创建的计算节点实例则不允许移出。
    @inlinable
    public func detachInstances(envId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachInstancesResponse {
        try await self.detachInstances(DetachInstancesRequest(envId: envId, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
