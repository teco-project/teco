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

extension Tke {
    /// DescribeTKEEdgeClusters请求参数结构体
    public struct DescribeTKEEdgeClustersRequest: TCRequestModel {
        /// 集群ID列表(为空时，
        /// 表示获取账号下所有集群)
        public let clusterIds: [String]?

        /// 偏移量,默认0
        public let offset: UInt64?

        /// 最大输出条数，默认20
        public let limit: UInt64?

        /// 过滤条件,当前只支持按照单个条件ClusterName进行过滤
        public let filters: [Filter]?

        public init(clusterIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.clusterIds = clusterIds
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeTKEEdgeClusters返回参数结构体
    public struct DescribeTKEEdgeClustersResponse: TCResponseModel {
        /// 集群总个数
        public let totalCount: UInt64

        /// 集群信息列表
        public let clusters: [EdgeCluster]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusters = "Clusters"
            case requestId = "RequestId"
        }
    }

    /// 查询边缘集群列表
    @inlinable
    public func describeTKEEdgeClusters(_ input: DescribeTKEEdgeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTKEEdgeClustersResponse> {
        self.client.execute(action: "DescribeTKEEdgeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘集群列表
    @inlinable
    public func describeTKEEdgeClusters(_ input: DescribeTKEEdgeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTKEEdgeClustersResponse {
        try await self.client.execute(action: "DescribeTKEEdgeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘集群列表
    @inlinable
    public func describeTKEEdgeClusters(clusterIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTKEEdgeClustersResponse> {
        self.describeTKEEdgeClusters(DescribeTKEEdgeClustersRequest(clusterIds: clusterIds, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘集群列表
    @inlinable
    public func describeTKEEdgeClusters(clusterIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTKEEdgeClustersResponse {
        try await self.describeTKEEdgeClusters(DescribeTKEEdgeClustersRequest(clusterIds: clusterIds, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
