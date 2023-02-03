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

extension Oceanus {
    /// DescribeClusters请求参数结构体
    public struct DescribeClustersRequest: TCRequestModel {
        /// 按照一个或者多个集群 ID 查询，每次请求的集群上限为 100
        public let clusterIds: [String]?

        /// 偏移量，默认 0
        public let offset: Int64?

        /// 请求的集群数量，默认 20，最大值 100
        public let limit: Int64?

        /// 集群信息结果排序规则，1 按时间降序，2 按照时间升序，3  按照状态排序
        public let orderType: Int64?

        /// 过滤规则
        public let filters: [Filter]?

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(clusterIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderType: Int64? = nil, filters: [Filter]? = nil, workSpaceId: String? = nil) {
            self.clusterIds = clusterIds
            self.offset = offset
            self.limit = limit
            self.orderType = orderType
            self.filters = filters
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case clusterIds = "ClusterIds"
            case offset = "Offset"
            case limit = "Limit"
            case orderType = "OrderType"
            case filters = "Filters"
            case workSpaceId = "WorkSpaceId"
        }
    }

    /// DescribeClusters返回参数结构体
    public struct DescribeClustersResponse: TCResponseModel {
        /// 集群总数
        public let totalCount: Int64

        /// 集群列表
        public let clusterSet: [Cluster]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterSet = "ClusterSet"
            case requestId = "RequestId"
        }
    }

    /// 查询集群
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群
    @inlinable
    public func describeClusters(clusterIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderType: Int64? = nil, filters: [Filter]? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        let input = DescribeClustersRequest(clusterIds: clusterIds, offset: offset, limit: limit, orderType: orderType, filters: filters, workSpaceId: workSpaceId)
        return self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群
    @inlinable
    public func describeClusters(clusterIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, orderType: Int64? = nil, filters: [Filter]? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        let input = DescribeClustersRequest(clusterIds: clusterIds, offset: offset, limit: limit, orderType: orderType, filters: filters, workSpaceId: workSpaceId)
        return try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
