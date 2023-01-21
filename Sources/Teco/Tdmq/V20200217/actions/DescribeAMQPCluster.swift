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

extension Tdmq {
    /// DescribeAMQPCluster请求参数结构体
    public struct DescribeAMQPClusterRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeAMQPCluster返回参数结构体
    public struct DescribeAMQPClusterResponse: TCResponseModel {
        /// 集群信息
        public let clusterInfo: AMQPClusterInfo

        /// 集群配置
        public let clusterConfig: AMQPClusterConfig

        /// 集群最近使用量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterStats: AMQPClusterRecentStats?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterInfo = "ClusterInfo"
            case clusterConfig = "ClusterConfig"
            case clusterStats = "ClusterStats"
            case requestId = "RequestId"
        }
    }

    /// 获取单个Amqp集群信息
    @inlinable
    public func describeAMQPCluster(_ input: DescribeAMQPClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPClusterResponse> {
        self.client.execute(action: "DescribeAMQPCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单个Amqp集群信息
    @inlinable
    public func describeAMQPCluster(_ input: DescribeAMQPClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPClusterResponse {
        try await self.client.execute(action: "DescribeAMQPCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单个Amqp集群信息
    @inlinable
    public func describeAMQPCluster(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAMQPClusterResponse> {
        self.describeAMQPCluster(DescribeAMQPClusterRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单个Amqp集群信息
    @inlinable
    public func describeAMQPCluster(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAMQPClusterResponse {
        try await self.describeAMQPCluster(DescribeAMQPClusterRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
