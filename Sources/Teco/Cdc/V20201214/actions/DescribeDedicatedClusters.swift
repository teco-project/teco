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

extension Cdc {
    /// DescribeDedicatedClusters请求参数结构体
    public struct DescribeDedicatedClustersRequest: TCRequestModel {
        /// 按照一个或者多个实例ID查询。实例ID形如：`cluster-xxxxxxxx`
        public let dedicatedClusterIds: [String]?

        /// 按照可用区名称过滤
        public let zones: [String]?

        /// 按照站点id过滤
        public let siteIds: [String]?

        /// 按照专用集群生命周期过滤
        public let lifecycleStatuses: [String]?

        /// 模糊匹配专用集群名称
        public let name: String?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(dedicatedClusterIds: [String]? = nil, zones: [String]? = nil, siteIds: [String]? = nil, lifecycleStatuses: [String]? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.dedicatedClusterIds = dedicatedClusterIds
            self.zones = zones
            self.siteIds = siteIds
            self.lifecycleStatuses = lifecycleStatuses
            self.name = name
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterIds = "DedicatedClusterIds"
            case zones = "Zones"
            case siteIds = "SiteIds"
            case lifecycleStatuses = "LifecycleStatuses"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeDedicatedClusters返回参数结构体
    public struct DescribeDedicatedClustersResponse: TCResponseModel {
        /// 符合查询条件的专用集群列表
        public let dedicatedClusterSet: [DedicatedCluster]

        /// 符合条件的专用集群数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterSet = "DedicatedClusterSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询专用集群列表
    @inlinable
    public func describeDedicatedClusters(_ input: DescribeDedicatedClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDedicatedClustersResponse> {
        self.client.execute(action: "DescribeDedicatedClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专用集群列表
    @inlinable
    public func describeDedicatedClusters(_ input: DescribeDedicatedClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClustersResponse {
        try await self.client.execute(action: "DescribeDedicatedClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专用集群列表
    @inlinable
    public func describeDedicatedClusters(dedicatedClusterIds: [String]? = nil, zones: [String]? = nil, siteIds: [String]? = nil, lifecycleStatuses: [String]? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDedicatedClustersResponse> {
        self.describeDedicatedClusters(DescribeDedicatedClustersRequest(dedicatedClusterIds: dedicatedClusterIds, zones: zones, siteIds: siteIds, lifecycleStatuses: lifecycleStatuses, name: name, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专用集群列表
    @inlinable
    public func describeDedicatedClusters(dedicatedClusterIds: [String]? = nil, zones: [String]? = nil, siteIds: [String]? = nil, lifecycleStatuses: [String]? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClustersResponse {
        try await self.describeDedicatedClusters(DescribeDedicatedClustersRequest(dedicatedClusterIds: dedicatedClusterIds, zones: zones, siteIds: siteIds, lifecycleStatuses: lifecycleStatuses, name: name, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
