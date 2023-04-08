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

extension Tke {
    /// DescribeClusterStatus请求参数结构体
    public struct DescribeClusterStatusRequest: TCRequestModel {
        /// 集群ID列表，不传默认拉取所有集群
        public let clusterIds: [String]?

        public init(clusterIds: [String]? = nil) {
            self.clusterIds = clusterIds
        }

        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
        }
    }

    /// DescribeClusterStatus返回参数结构体
    public struct DescribeClusterStatusResponse: TCResponseModel {
        /// 集群状态列表
        public let clusterStatusSet: [ClusterStatus]

        /// 集群个数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterStatusSet = "ClusterStatusSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查看集群状态列表
    @inlinable
    public func describeClusterStatus(_ input: DescribeClusterStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterStatusResponse> {
        self.client.execute(action: "DescribeClusterStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看集群状态列表
    @inlinable
    public func describeClusterStatus(_ input: DescribeClusterStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterStatusResponse {
        try await self.client.execute(action: "DescribeClusterStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看集群状态列表
    @inlinable
    public func describeClusterStatus(clusterIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterStatusResponse> {
        self.describeClusterStatus(.init(clusterIds: clusterIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查看集群状态列表
    @inlinable
    public func describeClusterStatus(clusterIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterStatusResponse {
        try await self.describeClusterStatus(.init(clusterIds: clusterIds), region: region, logger: logger, on: eventLoop)
    }
}
