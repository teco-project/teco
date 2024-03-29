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

extension Tsf {
    /// DeleteCluster请求参数结构体
    public struct DeleteClusterRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 是否只解绑，不删除容器集群，默认不传则删除容器集群。
        public let unbind: Bool?

        public init(clusterId: String, unbind: Bool? = nil) {
            self.clusterId = clusterId
            self.unbind = unbind
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case unbind = "Unbind"
        }
    }

    /// DeleteCluster返回参数结构体
    public struct DeleteClusterResponse: TCResponse {
        /// 删除集群操作是否成功。
        /// true：操作成功。
        /// false：操作失败。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
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
    public func deleteCluster(clusterId: String, unbind: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterResponse> {
        self.deleteCluster(.init(clusterId: clusterId, unbind: unbind), region: region, logger: logger, on: eventLoop)
    }

    /// 删除集群
    @inlinable
    public func deleteCluster(clusterId: String, unbind: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterResponse {
        try await self.deleteCluster(.init(clusterId: clusterId, unbind: unbind), region: region, logger: logger, on: eventLoop)
    }
}
