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
    /// DescribeAvailableClusterVersion请求参数结构体
    public struct DescribeAvailableClusterVersionRequest: TCRequest {
        /// 集群 Id
        public let clusterId: String?

        /// 集群 Id 列表
        public let clusterIds: [String]?

        public init(clusterId: String? = nil, clusterIds: [String]? = nil) {
            self.clusterId = clusterId
            self.clusterIds = clusterIds
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case clusterIds = "ClusterIds"
        }
    }

    /// DescribeAvailableClusterVersion返回参数结构体
    public struct DescribeAvailableClusterVersionResponse: TCResponse {
        /// 可升级的集群版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versions: [String]?

        /// 集群信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusters: [ClusterVersion]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case versions = "Versions"
            case clusters = "Clusters"
            case requestId = "RequestId"
        }
    }

    /// 获取集群可以升级的所有版本
    @inlinable
    public func describeAvailableClusterVersion(_ input: DescribeAvailableClusterVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableClusterVersionResponse> {
        self.client.execute(action: "DescribeAvailableClusterVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群可以升级的所有版本
    @inlinable
    public func describeAvailableClusterVersion(_ input: DescribeAvailableClusterVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableClusterVersionResponse {
        try await self.client.execute(action: "DescribeAvailableClusterVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群可以升级的所有版本
    @inlinable
    public func describeAvailableClusterVersion(clusterId: String? = nil, clusterIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableClusterVersionResponse> {
        self.describeAvailableClusterVersion(.init(clusterId: clusterId, clusterIds: clusterIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取集群可以升级的所有版本
    @inlinable
    public func describeAvailableClusterVersion(clusterId: String? = nil, clusterIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableClusterVersionResponse {
        try await self.describeAvailableClusterVersion(.init(clusterId: clusterId, clusterIds: clusterIds), region: region, logger: logger, on: eventLoop)
    }
}
