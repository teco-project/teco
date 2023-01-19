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
    /// DeleteTKEEdgeCluster请求参数结构体
    public struct DeleteTKEEdgeClusterRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DeleteTKEEdgeCluster返回参数结构体
    public struct DeleteTKEEdgeClusterResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除边缘计算集群
    @inlinable
    public func deleteTKEEdgeCluster(_ input: DeleteTKEEdgeClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTKEEdgeClusterResponse> {
        self.client.execute(action: "DeleteTKEEdgeCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除边缘计算集群
    @inlinable
    public func deleteTKEEdgeCluster(_ input: DeleteTKEEdgeClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTKEEdgeClusterResponse {
        try await self.client.execute(action: "DeleteTKEEdgeCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除边缘计算集群
    @inlinable
    public func deleteTKEEdgeCluster(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTKEEdgeClusterResponse> {
        self.deleteTKEEdgeCluster(DeleteTKEEdgeClusterRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除边缘计算集群
    @inlinable
    public func deleteTKEEdgeCluster(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTKEEdgeClusterResponse {
        try await self.deleteTKEEdgeCluster(DeleteTKEEdgeClusterRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
