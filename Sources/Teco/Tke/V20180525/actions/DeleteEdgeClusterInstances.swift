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
    /// DeleteEdgeClusterInstances请求参数结构体
    public struct DeleteEdgeClusterInstancesRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 待删除实例ID数组
        public let instanceIds: [String]

        public init(clusterId: String, instanceIds: [String]) {
            self.clusterId = clusterId
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIds = "InstanceIds"
        }
    }

    /// DeleteEdgeClusterInstances返回参数结构体
    public struct DeleteEdgeClusterInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除边缘计算实例
    @inlinable @discardableResult
    public func deleteEdgeClusterInstances(_ input: DeleteEdgeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeClusterInstancesResponse> {
        self.client.execute(action: "DeleteEdgeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除边缘计算实例
    @inlinable @discardableResult
    public func deleteEdgeClusterInstances(_ input: DeleteEdgeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeClusterInstancesResponse {
        try await self.client.execute(action: "DeleteEdgeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除边缘计算实例
    @inlinable @discardableResult
    public func deleteEdgeClusterInstances(clusterId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeClusterInstancesResponse> {
        let input = DeleteEdgeClusterInstancesRequest(clusterId: clusterId, instanceIds: instanceIds)
        return self.client.execute(action: "DeleteEdgeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除边缘计算实例
    @inlinable @discardableResult
    public func deleteEdgeClusterInstances(clusterId: String, instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeClusterInstancesResponse {
        let input = DeleteEdgeClusterInstancesRequest(clusterId: clusterId, instanceIds: instanceIds)
        return try await self.client.execute(action: "DeleteEdgeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
