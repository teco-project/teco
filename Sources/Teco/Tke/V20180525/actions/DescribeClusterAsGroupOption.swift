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
    /// DescribeClusterAsGroupOption请求参数结构体
    public struct DescribeClusterAsGroupOptionRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeClusterAsGroupOption返回参数结构体
    public struct DescribeClusterAsGroupOptionResponse: TCResponseModel {
        /// 集群弹性伸缩属性
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterAsGroupOption: ClusterAsGroupOption?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterAsGroupOption = "ClusterAsGroupOption"
            case requestId = "RequestId"
        }
    }

    /// 集群弹性伸缩配置
    @inlinable
    public func describeClusterAsGroupOption(_ input: DescribeClusterAsGroupOptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterAsGroupOptionResponse> {
        self.client.execute(action: "DescribeClusterAsGroupOption", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群弹性伸缩配置
    @inlinable
    public func describeClusterAsGroupOption(_ input: DescribeClusterAsGroupOptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterAsGroupOptionResponse {
        try await self.client.execute(action: "DescribeClusterAsGroupOption", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集群弹性伸缩配置
    @inlinable
    public func describeClusterAsGroupOption(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterAsGroupOptionResponse> {
        let input = DescribeClusterAsGroupOptionRequest(clusterId: clusterId)
        return self.client.execute(action: "DescribeClusterAsGroupOption", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群弹性伸缩配置
    @inlinable
    public func describeClusterAsGroupOption(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterAsGroupOptionResponse {
        let input = DescribeClusterAsGroupOptionRequest(clusterId: clusterId)
        return try await self.client.execute(action: "DescribeClusterAsGroupOption", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
