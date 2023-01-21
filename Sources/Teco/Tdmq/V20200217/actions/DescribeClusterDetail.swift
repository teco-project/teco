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
    /// DescribeClusterDetail请求参数结构体
    public struct DescribeClusterDetailRequest: TCRequestModel {
        /// 集群的ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeClusterDetail返回参数结构体
    public struct DescribeClusterDetailResponse: TCResponseModel {
        /// 集群的详细信息
        public let clusterSet: Cluster

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterSet = "ClusterSet"
            case requestId = "RequestId"
        }
    }

    /// 获取集群详情
    ///
    /// 获取集群的详细信息
    @inlinable
    public func describeClusterDetail(_ input: DescribeClusterDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterDetailResponse> {
        self.client.execute(action: "DescribeClusterDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群详情
    ///
    /// 获取集群的详细信息
    @inlinable
    public func describeClusterDetail(_ input: DescribeClusterDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterDetailResponse {
        try await self.client.execute(action: "DescribeClusterDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群详情
    ///
    /// 获取集群的详细信息
    @inlinable
    public func describeClusterDetail(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterDetailResponse> {
        self.describeClusterDetail(DescribeClusterDetailRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取集群详情
    ///
    /// 获取集群的详细信息
    @inlinable
    public func describeClusterDetail(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterDetailResponse {
        try await self.describeClusterDetail(DescribeClusterDetailRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
