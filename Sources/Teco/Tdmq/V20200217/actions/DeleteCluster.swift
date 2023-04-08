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

import TecoCore

extension Tdmq {
    /// DeleteCluster请求参数结构体
    public struct DeleteClusterRequest: TCRequestModel {
        /// 集群Id，传入需要删除的集群Id。
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DeleteCluster返回参数结构体
    public struct DeleteClusterResponse: TCResponseModel {
        /// 集群的ID
        public let clusterId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case requestId = "RequestId"
        }
    }

    /// 删除集群
    @inlinable
    public func deleteCluster(_ input: DeleteClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterResponse> {
        self.client.execute(action: "DeleteCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除集群
    @inlinable
    public func deleteCluster(_ input: DeleteClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterResponse {
        try await self.client.execute(action: "DeleteCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除集群
    @inlinable
    public func deleteCluster(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterResponse> {
        self.deleteCluster(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除集群
    @inlinable
    public func deleteCluster(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterResponse {
        try await self.deleteCluster(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
