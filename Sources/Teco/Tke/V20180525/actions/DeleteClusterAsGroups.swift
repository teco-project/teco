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
    /// DeleteClusterAsGroups请求参数结构体
    public struct DeleteClusterAsGroupsRequest: TCRequestModel {
        /// 集群ID，通过[DescribeClusters](https://cloud.tencent.com/document/api/457/31862)接口获取。
        public let clusterId: String

        /// 集群伸缩组ID的列表
        public let autoScalingGroupIds: [String]

        /// 是否保留伸缩组中的节点(默认值： false(不保留))
        public let keepInstance: Bool?

        public init(clusterId: String, autoScalingGroupIds: [String], keepInstance: Bool? = nil) {
            self.clusterId = clusterId
            self.autoScalingGroupIds = autoScalingGroupIds
            self.keepInstance = keepInstance
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case autoScalingGroupIds = "AutoScalingGroupIds"
            case keepInstance = "KeepInstance"
        }
    }

    /// DeleteClusterAsGroups返回参数结构体
    public struct DeleteClusterAsGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除集群伸缩组
    @inlinable @discardableResult
    public func deleteClusterAsGroups(_ input: DeleteClusterAsGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterAsGroupsResponse> {
        self.client.execute(action: "DeleteClusterAsGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除集群伸缩组
    @inlinable @discardableResult
    public func deleteClusterAsGroups(_ input: DeleteClusterAsGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterAsGroupsResponse {
        try await self.client.execute(action: "DeleteClusterAsGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除集群伸缩组
    @inlinable @discardableResult
    public func deleteClusterAsGroups(clusterId: String, autoScalingGroupIds: [String], keepInstance: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterAsGroupsResponse> {
        self.deleteClusterAsGroups(DeleteClusterAsGroupsRequest(clusterId: clusterId, autoScalingGroupIds: autoScalingGroupIds, keepInstance: keepInstance), region: region, logger: logger, on: eventLoop)
    }

    /// 删除集群伸缩组
    @inlinable @discardableResult
    public func deleteClusterAsGroups(clusterId: String, autoScalingGroupIds: [String], keepInstance: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterAsGroupsResponse {
        try await self.deleteClusterAsGroups(DeleteClusterAsGroupsRequest(clusterId: clusterId, autoScalingGroupIds: autoScalingGroupIds, keepInstance: keepInstance), region: region, logger: logger, on: eventLoop)
    }
}
