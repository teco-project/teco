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

extension Tke {
    /// DescribeExistedInstances请求参数结构体
    public struct DescribeExistedInstancesRequest: TCPaginatedRequest {
        /// 集群 ID，请填写查询集群列表 接口中返回的 ClusterId 字段（仅通过ClusterId获取需要过滤条件中的VPCID。节点状态比较时会使用该地域下所有集群中的节点进行比较。参数不支持同时指定InstanceIds和ClusterId。
        public let clusterId: String?

        /// 按照一个或者多个实例ID查询。实例ID形如：ins-xxxxxxxx。（此参数的具体格式可参考API简介的id.N一节）。每次请求的实例的上限为100。参数不支持同时指定InstanceIds和Filters。
        public let instanceIds: [String]?

        /// 过滤条件,字段和详见[CVM查询实例](https://cloud.tencent.com/document/api/213/15728)如果设置了ClusterId，会附加集群的VPCID作为查询字段，在此情况下如果在Filter中指定了"vpc-id"作为过滤字段，指定的VPCID必须与集群的VPCID相同。
        public let filters: [Filter]?

        /// 实例IP进行过滤(同时支持内网IP和外网IP)
        public let vagueIpAddress: String?

        /// 实例名称进行过滤
        public let vagueInstanceName: String?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: UInt64?

        /// 根据多个实例IP进行过滤
        public let ipAddresses: [String]?

        public init(clusterId: String? = nil, instanceIds: [String]? = nil, filters: [Filter]? = nil, vagueIpAddress: String? = nil, vagueInstanceName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ipAddresses: [String]? = nil) {
            self.clusterId = clusterId
            self.instanceIds = instanceIds
            self.filters = filters
            self.vagueIpAddress = vagueIpAddress
            self.vagueInstanceName = vagueInstanceName
            self.offset = offset
            self.limit = limit
            self.ipAddresses = ipAddresses
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIds = "InstanceIds"
            case filters = "Filters"
            case vagueIpAddress = "VagueIpAddress"
            case vagueInstanceName = "VagueInstanceName"
            case offset = "Offset"
            case limit = "Limit"
            case ipAddresses = "IpAddresses"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeExistedInstancesResponse) -> DescribeExistedInstancesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(clusterId: self.clusterId, instanceIds: self.instanceIds, filters: self.filters, vagueIpAddress: self.vagueIpAddress, vagueInstanceName: self.vagueInstanceName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, ipAddresses: self.ipAddresses)
        }
    }

    /// DescribeExistedInstances返回参数结构体
    public struct DescribeExistedInstancesResponse: TCPaginatedResponse {
        /// 已经存在的实例信息数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let existedInstanceSet: [ExistedInstance]?

        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case existedInstanceSet = "ExistedInstanceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ExistedInstance`` list from the paginated response.
        public func getItems() -> [ExistedInstance] {
            self.existedInstanceSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询已经存在的节点
    ///
    /// 查询已经存在的节点，判断是否可以加入集群
    @inlinable
    public func describeExistedInstances(_ input: DescribeExistedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExistedInstancesResponse> {
        self.client.execute(action: "DescribeExistedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询已经存在的节点
    ///
    /// 查询已经存在的节点，判断是否可以加入集群
    @inlinable
    public func describeExistedInstances(_ input: DescribeExistedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExistedInstancesResponse {
        try await self.client.execute(action: "DescribeExistedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询已经存在的节点
    ///
    /// 查询已经存在的节点，判断是否可以加入集群
    @inlinable
    public func describeExistedInstances(clusterId: String? = nil, instanceIds: [String]? = nil, filters: [Filter]? = nil, vagueIpAddress: String? = nil, vagueInstanceName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ipAddresses: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExistedInstancesResponse> {
        self.describeExistedInstances(.init(clusterId: clusterId, instanceIds: instanceIds, filters: filters, vagueIpAddress: vagueIpAddress, vagueInstanceName: vagueInstanceName, offset: offset, limit: limit, ipAddresses: ipAddresses), region: region, logger: logger, on: eventLoop)
    }

    /// 查询已经存在的节点
    ///
    /// 查询已经存在的节点，判断是否可以加入集群
    @inlinable
    public func describeExistedInstances(clusterId: String? = nil, instanceIds: [String]? = nil, filters: [Filter]? = nil, vagueIpAddress: String? = nil, vagueInstanceName: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ipAddresses: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExistedInstancesResponse {
        try await self.describeExistedInstances(.init(clusterId: clusterId, instanceIds: instanceIds, filters: filters, vagueIpAddress: vagueIpAddress, vagueInstanceName: vagueInstanceName, offset: offset, limit: limit, ipAddresses: ipAddresses), region: region, logger: logger, on: eventLoop)
    }

    /// 查询已经存在的节点
    ///
    /// 查询已经存在的节点，判断是否可以加入集群
    @inlinable
    public func describeExistedInstancesPaginated(_ input: DescribeExistedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ExistedInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeExistedInstances, logger: logger, on: eventLoop)
    }

    /// 查询已经存在的节点
    ///
    /// 查询已经存在的节点，判断是否可以加入集群
    @inlinable @discardableResult
    public func describeExistedInstancesPaginated(_ input: DescribeExistedInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeExistedInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeExistedInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询已经存在的节点
    ///
    /// 查询已经存在的节点，判断是否可以加入集群
    ///
    /// - Returns: `AsyncSequence`s of ``ExistedInstance`` and ``DescribeExistedInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeExistedInstancesPaginator(_ input: DescribeExistedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeExistedInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeExistedInstances, logger: logger, on: eventLoop)
    }
}
