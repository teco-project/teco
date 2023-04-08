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

extension Tdmq {
    /// ModifyCluster请求参数结构体
    public struct ModifyClusterRequest: TCRequestModel {
        /// Pulsar 集群的ID，需要更新的集群Id。
        public let clusterId: String

        /// 更新后的集群名称。
        public let clusterName: String?

        /// 说明信息。
        public let remark: String?

        /// 开启公网访问，只能为true
        public let publicAccessEnabled: Bool?

        public init(clusterId: String, clusterName: String? = nil, remark: String? = nil, publicAccessEnabled: Bool? = nil) {
            self.clusterId = clusterId
            self.clusterName = clusterName
            self.remark = remark
            self.publicAccessEnabled = publicAccessEnabled
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case clusterName = "ClusterName"
            case remark = "Remark"
            case publicAccessEnabled = "PublicAccessEnabled"
        }
    }

    /// ModifyCluster返回参数结构体
    public struct ModifyClusterResponse: TCResponseModel {
        /// Pulsar 集群的ID
        public let clusterId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case requestId = "RequestId"
        }
    }

    /// 更新集群信息
    @inlinable
    public func modifyCluster(_ input: ModifyClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterResponse> {
        self.client.execute(action: "ModifyCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新集群信息
    @inlinable
    public func modifyCluster(_ input: ModifyClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterResponse {
        try await self.client.execute(action: "ModifyCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新集群信息
    @inlinable
    public func modifyCluster(clusterId: String, clusterName: String? = nil, remark: String? = nil, publicAccessEnabled: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterResponse> {
        self.modifyCluster(.init(clusterId: clusterId, clusterName: clusterName, remark: remark, publicAccessEnabled: publicAccessEnabled), region: region, logger: logger, on: eventLoop)
    }

    /// 更新集群信息
    @inlinable
    public func modifyCluster(clusterId: String, clusterName: String? = nil, remark: String? = nil, publicAccessEnabled: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterResponse {
        try await self.modifyCluster(.init(clusterId: clusterId, clusterName: clusterName, remark: remark, publicAccessEnabled: publicAccessEnabled), region: region, logger: logger, on: eventLoop)
    }
}
