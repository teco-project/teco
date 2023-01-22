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

extension Tsf {
    /// DescribeClusters请求参数结构体
    public struct DescribeClustersRequest: TCRequestModel {
        /// 搜索词
        public let searchWord: String?

        /// 排序字段
        public let orderBy: String?

        /// 排序方式
        public let orderType: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 分页个数
        public let limit: Int64?

        /// 集群类型
        public let clusterType: String?

        /// idList
        public let clusterIdList: [String]?

        public init(searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, clusterType: String? = nil, clusterIdList: [String]? = nil) {
            self.searchWord = searchWord
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
            self.clusterType = clusterType
            self.clusterIdList = clusterIdList
        }

        enum CodingKeys: String, CodingKey {
            case searchWord = "SearchWord"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
            case clusterType = "ClusterType"
            case clusterIdList = "ClusterIdList"
        }
    }

    /// DescribeClusters返回参数结构体
    public struct DescribeClustersResponse: TCResponseModel {
        /// Cluster分页信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageClusterV2?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
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
    public func describeClusters(searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, clusterType: String? = nil, clusterIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        self.describeClusters(DescribeClustersRequest(searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, clusterType: clusterType, clusterIdList: clusterIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取集群列表
    @inlinable
    public func describeClusters(searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, clusterType: String? = nil, clusterIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        try await self.describeClusters(DescribeClustersRequest(searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, clusterType: clusterType, clusterIdList: clusterIdList), region: region, logger: logger, on: eventLoop)
    }
}
