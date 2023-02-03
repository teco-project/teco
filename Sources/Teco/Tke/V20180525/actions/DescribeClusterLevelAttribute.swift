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
    /// DescribeClusterLevelAttribute请求参数结构体
    public struct DescribeClusterLevelAttributeRequest: TCRequestModel {
        /// 集群ID，变配时使用
        public let clusterID: String?

        public init(clusterID: String? = nil) {
            self.clusterID = clusterID
        }

        enum CodingKeys: String, CodingKey {
            case clusterID = "ClusterID"
        }
    }

    /// DescribeClusterLevelAttribute返回参数结构体
    public struct DescribeClusterLevelAttributeResponse: TCResponseModel {
        /// 总数
        public let totalCount: Int64

        /// 集群规模
        public let items: [ClusterLevelAttribute]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 获取集群规模
    @inlinable
    public func describeClusterLevelAttribute(_ input: DescribeClusterLevelAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterLevelAttributeResponse> {
        self.client.execute(action: "DescribeClusterLevelAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群规模
    @inlinable
    public func describeClusterLevelAttribute(_ input: DescribeClusterLevelAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterLevelAttributeResponse {
        try await self.client.execute(action: "DescribeClusterLevelAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群规模
    @inlinable
    public func describeClusterLevelAttribute(clusterID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterLevelAttributeResponse> {
        let input = DescribeClusterLevelAttributeRequest(clusterID: clusterID)
        return self.client.execute(action: "DescribeClusterLevelAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群规模
    @inlinable
    public func describeClusterLevelAttribute(clusterID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterLevelAttributeResponse {
        let input = DescribeClusterLevelAttributeRequest(clusterID: clusterID)
        return try await self.client.execute(action: "DescribeClusterLevelAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
