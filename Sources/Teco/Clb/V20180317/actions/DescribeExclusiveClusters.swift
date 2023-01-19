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

extension Clb {
    /// DescribeExclusiveClusters请求参数结构体
    public struct DescribeExclusiveClustersRequest: TCRequestModel {
        /// 返回集群列表数目，默认值为20，最大值为100。
        public let limit: UInt64?

        /// 返回集群列表起始偏移量，默认为0。
        public let offset: UInt64?

        /// 查询集群列表条件，详细的过滤条件如下：
        /// <li> cluster-type - String - 是否必填：否 - （过滤条件）按照 集群 的类型过滤，包括"TGW","STGW","VPCGW"。</li>
        /// <li> cluster-id - String - 是否必填：否 - （过滤条件）按照 集群 的唯一ID过滤，如 ："tgw-12345678","stgw-12345678","vpcgw-12345678"。</li>
        /// <li> cluster-name - String - 是否必填：否 - （过滤条件）按照 集群 的名称过滤。</li>
        /// <li> cluster-tag - String - 是否必填：否 - （过滤条件）按照 集群 的标签过滤。（只有TGW/STGW集群有集群标签） </li>
        /// <li> vip - String - 是否必填：否 - （过滤条件）按照 集群 内的vip过滤。</li>
        /// <li> loadblancer-id - String - 是否必填：否 - （过滤条件）按照 集群 内的负载均衡唯一ID过滤。</li>
        /// <li> network - String - 是否必填：否 - （过滤条件）按照 集群 的网络类型过滤，如："Public","Private"。</li>
        /// <li> zone - String - 是否必填：否 - （过滤条件）按照 集群 所在可用区过滤，如："ap-guangzhou-1"（广州一区）。</li>
        /// <li> isp -- String - 是否必填：否 - （过滤条件）按照TGW集群的 Isp 类型过滤，如："BGP","CMCC","CUCC","CTCC","INTERNAL"。</li>
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeExclusiveClusters返回参数结构体
    public struct DescribeExclusiveClustersResponse: TCResponseModel {
        /// 集群列表。
        public let clusterSet: [Cluster]

        /// 集群总数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterSet = "ClusterSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询集群列表
    ///
    /// 查询集群信息列表，支持以集群类型、集群唯一ID、集群名字、集群标签、集群内vip、集群内负载均衡唯一id、集群网络类型、可用区等条件进行检索
    @inlinable
    public func describeExclusiveClusters(_ input: DescribeExclusiveClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveClustersResponse> {
        self.client.execute(action: "DescribeExclusiveClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    ///
    /// 查询集群信息列表，支持以集群类型、集群唯一ID、集群名字、集群标签、集群内vip、集群内负载均衡唯一id、集群网络类型、可用区等条件进行检索
    @inlinable
    public func describeExclusiveClusters(_ input: DescribeExclusiveClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveClustersResponse {
        try await self.client.execute(action: "DescribeExclusiveClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群列表
    ///
    /// 查询集群信息列表，支持以集群类型、集群唯一ID、集群名字、集群标签、集群内vip、集群内负载均衡唯一id、集群网络类型、可用区等条件进行检索
    @inlinable
    public func describeExclusiveClusters(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveClustersResponse> {
        self.describeExclusiveClusters(DescribeExclusiveClustersRequest(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    ///
    /// 查询集群信息列表，支持以集群类型、集群唯一ID、集群名字、集群标签、集群内vip、集群内负载均衡唯一id、集群网络类型、可用区等条件进行检索
    @inlinable
    public func describeExclusiveClusters(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveClustersResponse {
        try await self.describeExclusiveClusters(DescribeExclusiveClustersRequest(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
