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

extension Tke {
    /// ModifyNodePoolDesiredCapacityAboutAsg请求参数结构体
    public struct ModifyNodePoolDesiredCapacityAboutAsgRequest: TCRequestModel {
        /// 集群id
        public let clusterId: String

        /// 节点池id
        public let nodePoolId: String

        /// 节点池所关联的伸缩组的期望实例数
        public let desiredCapacity: Int64

        public init(clusterId: String, nodePoolId: String, desiredCapacity: Int64) {
            self.clusterId = clusterId
            self.nodePoolId = nodePoolId
            self.desiredCapacity = desiredCapacity
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodePoolId = "NodePoolId"
            case desiredCapacity = "DesiredCapacity"
        }
    }

    /// ModifyNodePoolDesiredCapacityAboutAsg返回参数结构体
    public struct ModifyNodePoolDesiredCapacityAboutAsgResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改节点池关联伸缩组的期望实例数
    @inlinable @discardableResult
    public func modifyNodePoolDesiredCapacityAboutAsg(_ input: ModifyNodePoolDesiredCapacityAboutAsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNodePoolDesiredCapacityAboutAsgResponse> {
        self.client.execute(action: "ModifyNodePoolDesiredCapacityAboutAsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改节点池关联伸缩组的期望实例数
    @inlinable @discardableResult
    public func modifyNodePoolDesiredCapacityAboutAsg(_ input: ModifyNodePoolDesiredCapacityAboutAsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNodePoolDesiredCapacityAboutAsgResponse {
        try await self.client.execute(action: "ModifyNodePoolDesiredCapacityAboutAsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改节点池关联伸缩组的期望实例数
    @inlinable @discardableResult
    public func modifyNodePoolDesiredCapacityAboutAsg(clusterId: String, nodePoolId: String, desiredCapacity: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNodePoolDesiredCapacityAboutAsgResponse> {
        self.modifyNodePoolDesiredCapacityAboutAsg(ModifyNodePoolDesiredCapacityAboutAsgRequest(clusterId: clusterId, nodePoolId: nodePoolId, desiredCapacity: desiredCapacity), region: region, logger: logger, on: eventLoop)
    }

    /// 修改节点池关联伸缩组的期望实例数
    @inlinable @discardableResult
    public func modifyNodePoolDesiredCapacityAboutAsg(clusterId: String, nodePoolId: String, desiredCapacity: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNodePoolDesiredCapacityAboutAsgResponse {
        try await self.modifyNodePoolDesiredCapacityAboutAsg(ModifyNodePoolDesiredCapacityAboutAsgRequest(clusterId: clusterId, nodePoolId: nodePoolId, desiredCapacity: desiredCapacity), region: region, logger: logger, on: eventLoop)
    }
}
