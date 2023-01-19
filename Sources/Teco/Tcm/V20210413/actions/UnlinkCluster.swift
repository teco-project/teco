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

extension Tcm {
    /// UnlinkCluster请求参数结构体
    public struct UnlinkClusterRequest: TCRequestModel {
        /// 网格Id
        public let meshId: String

        /// 取消关联的集群Id
        public let clusterId: String?

        public init(meshId: String, clusterId: String? = nil) {
            self.meshId = meshId
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case meshId = "MeshId"
            case clusterId = "ClusterId"
        }
    }

    /// UnlinkCluster返回参数结构体
    public struct UnlinkClusterResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解关联集群
    @inlinable
    public func unlinkCluster(_ input: UnlinkClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnlinkClusterResponse> {
        self.client.execute(action: "UnlinkCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解关联集群
    @inlinable
    public func unlinkCluster(_ input: UnlinkClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnlinkClusterResponse {
        try await self.client.execute(action: "UnlinkCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解关联集群
    @inlinable
    public func unlinkCluster(meshId: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnlinkClusterResponse> {
        self.unlinkCluster(UnlinkClusterRequest(meshId: meshId, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 解关联集群
    @inlinable
    public func unlinkCluster(meshId: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnlinkClusterResponse {
        try await self.unlinkCluster(UnlinkClusterRequest(meshId: meshId, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
