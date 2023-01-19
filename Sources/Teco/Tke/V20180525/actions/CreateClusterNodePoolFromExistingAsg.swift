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

extension Tke {
    /// CreateClusterNodePoolFromExistingAsg请求参数结构体
    public struct CreateClusterNodePoolFromExistingAsgRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 伸缩组ID
        public let autoscalingGroupId: String

        public init(clusterId: String, autoscalingGroupId: String) {
            self.clusterId = clusterId
            self.autoscalingGroupId = autoscalingGroupId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case autoscalingGroupId = "AutoscalingGroupId"
        }
    }

    /// CreateClusterNodePoolFromExistingAsg返回参数结构体
    public struct CreateClusterNodePoolFromExistingAsgResponse: TCResponseModel {
        /// 节点池ID
        public let nodePoolId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodePoolId = "NodePoolId"
            case requestId = "RequestId"
        }
    }

    /// 从伸缩组创建节点池
    @inlinable
    public func createClusterNodePoolFromExistingAsg(_ input: CreateClusterNodePoolFromExistingAsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterNodePoolFromExistingAsgResponse> {
        self.client.execute(action: "CreateClusterNodePoolFromExistingAsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 从伸缩组创建节点池
    @inlinable
    public func createClusterNodePoolFromExistingAsg(_ input: CreateClusterNodePoolFromExistingAsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterNodePoolFromExistingAsgResponse {
        try await self.client.execute(action: "CreateClusterNodePoolFromExistingAsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 从伸缩组创建节点池
    @inlinable
    public func createClusterNodePoolFromExistingAsg(clusterId: String, autoscalingGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterNodePoolFromExistingAsgResponse> {
        self.createClusterNodePoolFromExistingAsg(CreateClusterNodePoolFromExistingAsgRequest(clusterId: clusterId, autoscalingGroupId: autoscalingGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 从伸缩组创建节点池
    @inlinable
    public func createClusterNodePoolFromExistingAsg(clusterId: String, autoscalingGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterNodePoolFromExistingAsgResponse {
        try await self.createClusterNodePoolFromExistingAsg(CreateClusterNodePoolFromExistingAsgRequest(clusterId: clusterId, autoscalingGroupId: autoscalingGroupId), region: region, logger: logger, on: eventLoop)
    }
}
