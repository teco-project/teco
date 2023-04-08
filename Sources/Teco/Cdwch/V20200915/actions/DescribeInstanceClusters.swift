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

extension Cdwch {
    /// DescribeInstanceClusters请求参数结构体
    public struct DescribeInstanceClustersRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInstanceClusters返回参数结构体
    public struct DescribeInstanceClustersResponse: TCResponseModel {
        /// cluster列表
        public let clusters: [ClusterInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusters = "Clusters"
            case requestId = "RequestId"
        }
    }

    /// vcluster列表
    ///
    /// 集群vcluster列表
    @inlinable
    public func describeInstanceClusters(_ input: DescribeInstanceClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceClustersResponse> {
        self.client.execute(action: "DescribeInstanceClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// vcluster列表
    ///
    /// 集群vcluster列表
    @inlinable
    public func describeInstanceClusters(_ input: DescribeInstanceClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceClustersResponse {
        try await self.client.execute(action: "DescribeInstanceClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// vcluster列表
    ///
    /// 集群vcluster列表
    @inlinable
    public func describeInstanceClusters(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceClustersResponse> {
        self.describeInstanceClusters(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// vcluster列表
    ///
    /// 集群vcluster列表
    @inlinable
    public func describeInstanceClusters(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceClustersResponse {
        try await self.describeInstanceClusters(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}