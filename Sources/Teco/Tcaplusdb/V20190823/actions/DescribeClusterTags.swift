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

extension Tcaplusdb {
    /// DescribeClusterTags请求参数结构体
    public struct DescribeClusterTagsRequest: TCRequest {
        /// 集群ID列表
        public let clusterIds: [String]

        public init(clusterIds: [String]) {
            self.clusterIds = clusterIds
        }

        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
        }
    }

    /// DescribeClusterTags返回参数结构体
    public struct DescribeClusterTagsResponse: TCResponse {
        /// 集群标签信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rows: [TagsInfoOfCluster]?

        /// 返回结果个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rows = "Rows"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取集群关联的标签列表
    @inlinable
    public func describeClusterTags(_ input: DescribeClusterTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterTagsResponse> {
        self.client.execute(action: "DescribeClusterTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群关联的标签列表
    @inlinable
    public func describeClusterTags(_ input: DescribeClusterTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterTagsResponse {
        try await self.client.execute(action: "DescribeClusterTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群关联的标签列表
    @inlinable
    public func describeClusterTags(clusterIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterTagsResponse> {
        self.describeClusterTags(.init(clusterIds: clusterIds), region: region, logger: logger, on: eventLoop)
    }

    /// 获取集群关联的标签列表
    @inlinable
    public func describeClusterTags(clusterIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterTagsResponse {
        try await self.describeClusterTags(.init(clusterIds: clusterIds), region: region, logger: logger, on: eventLoop)
    }
}
