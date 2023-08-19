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

extension Tke {
    /// DeleteEKSCluster请求参数结构体
    public struct DeleteEKSClusterRequest: TCRequest {
        /// 弹性集群Id
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DeleteEKSCluster返回参数结构体
    public struct DeleteEKSClusterResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除弹性集群
    ///
    /// 删除弹性集群(yunapiv3)
    @inlinable @discardableResult
    public func deleteEKSCluster(_ input: DeleteEKSClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEKSClusterResponse> {
        self.client.execute(action: "DeleteEKSCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除弹性集群
    ///
    /// 删除弹性集群(yunapiv3)
    @inlinable @discardableResult
    public func deleteEKSCluster(_ input: DeleteEKSClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEKSClusterResponse {
        try await self.client.execute(action: "DeleteEKSCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除弹性集群
    ///
    /// 删除弹性集群(yunapiv3)
    @inlinable @discardableResult
    public func deleteEKSCluster(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEKSClusterResponse> {
        self.deleteEKSCluster(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除弹性集群
    ///
    /// 删除弹性集群(yunapiv3)
    @inlinable @discardableResult
    public func deleteEKSCluster(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEKSClusterResponse {
        try await self.deleteEKSCluster(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
