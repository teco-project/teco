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

extension Tdmq {
    /// DescribeBindClusters请求参数结构体
    public struct DescribeBindClustersRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeBindClusters返回参数结构体
    public struct DescribeBindClustersResponse: TCResponseModel {
        /// 专享集群的数量
        public let totalCount: Int64

        /// 专享集群的列表
        public let clusterSet: [BindCluster]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterSet = "ClusterSet"
            case requestId = "RequestId"
        }
    }

    /// 获取专享集群列表
    ///
    /// 获取用户绑定的专享集群列表
    @inlinable
    public func describeBindClusters(_ input: DescribeBindClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindClustersResponse> {
        self.client.execute(action: "DescribeBindClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取专享集群列表
    ///
    /// 获取用户绑定的专享集群列表
    @inlinable
    public func describeBindClusters(_ input: DescribeBindClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindClustersResponse {
        try await self.client.execute(action: "DescribeBindClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取专享集群列表
    ///
    /// 获取用户绑定的专享集群列表
    @inlinable
    public func describeBindClusters(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindClustersResponse> {
        self.describeBindClusters(DescribeBindClustersRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取专享集群列表
    ///
    /// 获取用户绑定的专享集群列表
    @inlinable
    public func describeBindClusters(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindClustersResponse {
        try await self.describeBindClusters(DescribeBindClustersRequest(), region: region, logger: logger, on: eventLoop)
    }
}
