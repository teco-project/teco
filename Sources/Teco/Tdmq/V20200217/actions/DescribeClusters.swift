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
    /// DescribeClusters请求参数结构体
    public struct DescribeClustersRequest: TCRequestModel {
        /// 起始下标，不填默认为0。
        public let offset: UInt64?

        /// 返回数量，不填则默认为10，最大值为20。
        public let limit: UInt64?

        /// 集群ID列表过滤
        public let clusterIdList: [String]?

        /// 是否标签过滤
        public let isTagFilter: Bool?

        /// 过滤器。目前支持按标签过滤。
        public let filters: [Filter]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, clusterIdList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.clusterIdList = clusterIdList
            self.isTagFilter = isTagFilter
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case clusterIdList = "ClusterIdList"
            case isTagFilter = "IsTagFilter"
            case filters = "Filters"
        }
    }

    /// DescribeClusters返回参数结构体
    public struct DescribeClustersResponse: TCResponseModel {
        /// 集群列表数量
        public let totalCount: Int64

        /// 集群信息列表
        public let clusterSet: [Cluster]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterSet = "ClusterSet"
            case requestId = "RequestId"
        }
    }

    /// 获取集群列表
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群列表
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群列表
    @inlinable
    public func describeClusters(offset: UInt64? = nil, limit: UInt64? = nil, clusterIdList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        let input = DescribeClustersRequest(offset: offset, limit: limit, clusterIdList: clusterIdList, isTagFilter: isTagFilter, filters: filters)
        return self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群列表
    @inlinable
    public func describeClusters(offset: UInt64? = nil, limit: UInt64? = nil, clusterIdList: [String]? = nil, isTagFilter: Bool? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        let input = DescribeClustersRequest(offset: offset, limit: limit, clusterIdList: clusterIdList, isTagFilter: isTagFilter, filters: filters)
        return try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
