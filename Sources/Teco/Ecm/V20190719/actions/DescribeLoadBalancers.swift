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

import TecoPaginationHelpers

extension Ecm {
    /// DescribeLoadBalancers请求参数结构体
    public struct DescribeLoadBalancersRequest: TCPaginatedRequest {
        /// 区域。如果不传则默认查询所有区域。
        public let ecmRegion: String?

        /// 负载均衡实例 ID。
        public let loadBalancerIds: [String]?

        /// 负载均衡实例的名称。
        public let loadBalancerName: String?

        /// 负载均衡实例的 VIP 地址，支持多个。
        public let loadBalancerVips: [String]?

        /// 负载均衡绑定的后端服务的内网 IP。
        public let backendPrivateIps: [String]?

        /// 数据偏移量，默认为 0。
        public let offset: Int64?

        /// 返回负载均衡实例的数量，默认为20，最大值为100。
        public let limit: Int64?

        /// 负载均衡是否绑定后端服务，0：没有绑定后端服务，1：绑定后端服务，-1：查询全部。
        /// 如果不传则默认查询全部。
        public let withBackend: Int64?

        /// 负载均衡实例所属私有网络唯一ID，如 vpc-bhqkbhdx。
        public let vpcId: String?

        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为100。详细的过滤条件如下：
        /// tag-key - String - 是否必填：否 - （过滤条件）按照标签的键过滤。
        public let filters: [Filter]?

        /// 安全组。
        public let securityGroup: String?

        public init(ecmRegion: String? = nil, loadBalancerIds: [String]? = nil, loadBalancerName: String? = nil, loadBalancerVips: [String]? = nil, backendPrivateIps: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, withBackend: Int64? = nil, vpcId: String? = nil, filters: [Filter]? = nil, securityGroup: String? = nil) {
            self.ecmRegion = ecmRegion
            self.loadBalancerIds = loadBalancerIds
            self.loadBalancerName = loadBalancerName
            self.loadBalancerVips = loadBalancerVips
            self.backendPrivateIps = backendPrivateIps
            self.offset = offset
            self.limit = limit
            self.withBackend = withBackend
            self.vpcId = vpcId
            self.filters = filters
            self.securityGroup = securityGroup
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case loadBalancerIds = "LoadBalancerIds"
            case loadBalancerName = "LoadBalancerName"
            case loadBalancerVips = "LoadBalancerVips"
            case backendPrivateIps = "BackendPrivateIps"
            case offset = "Offset"
            case limit = "Limit"
            case withBackend = "WithBackend"
            case vpcId = "VpcId"
            case filters = "Filters"
            case securityGroup = "SecurityGroup"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeLoadBalancersResponse) -> DescribeLoadBalancersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeLoadBalancersRequest(ecmRegion: self.ecmRegion, loadBalancerIds: self.loadBalancerIds, loadBalancerName: self.loadBalancerName, loadBalancerVips: self.loadBalancerVips, backendPrivateIps: self.backendPrivateIps, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, withBackend: self.withBackend, vpcId: self.vpcId, filters: self.filters, securityGroup: self.securityGroup)
        }
    }

    /// DescribeLoadBalancers返回参数结构体
    public struct DescribeLoadBalancersResponse: TCPaginatedResponse {
        /// 满足过滤条件的负载均衡实例总数。此数值与入参中的Limit无关。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 返回的负载均衡实例数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loadBalancerSet: [LoadBalancer]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case loadBalancerSet = "LoadBalancerSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [LoadBalancer] {
            self.loadBalancerSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询负载均衡实例列表
    ///
    /// 查询负载均衡实例列表。
    @inlinable
    public func describeLoadBalancers(_ input: DescribeLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancersResponse> {
        self.client.execute(action: "DescribeLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡实例列表
    ///
    /// 查询负载均衡实例列表。
    @inlinable
    public func describeLoadBalancers(_ input: DescribeLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancersResponse {
        try await self.client.execute(action: "DescribeLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询负载均衡实例列表
    ///
    /// 查询负载均衡实例列表。
    @inlinable
    public func describeLoadBalancers(ecmRegion: String? = nil, loadBalancerIds: [String]? = nil, loadBalancerName: String? = nil, loadBalancerVips: [String]? = nil, backendPrivateIps: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, withBackend: Int64? = nil, vpcId: String? = nil, filters: [Filter]? = nil, securityGroup: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoadBalancersResponse> {
        let input = DescribeLoadBalancersRequest(ecmRegion: ecmRegion, loadBalancerIds: loadBalancerIds, loadBalancerName: loadBalancerName, loadBalancerVips: loadBalancerVips, backendPrivateIps: backendPrivateIps, offset: offset, limit: limit, withBackend: withBackend, vpcId: vpcId, filters: filters, securityGroup: securityGroup)
        return self.client.execute(action: "DescribeLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡实例列表
    ///
    /// 查询负载均衡实例列表。
    @inlinable
    public func describeLoadBalancers(ecmRegion: String? = nil, loadBalancerIds: [String]? = nil, loadBalancerName: String? = nil, loadBalancerVips: [String]? = nil, backendPrivateIps: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, withBackend: Int64? = nil, vpcId: String? = nil, filters: [Filter]? = nil, securityGroup: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoadBalancersResponse {
        let input = DescribeLoadBalancersRequest(ecmRegion: ecmRegion, loadBalancerIds: loadBalancerIds, loadBalancerName: loadBalancerName, loadBalancerVips: loadBalancerVips, backendPrivateIps: backendPrivateIps, offset: offset, limit: limit, withBackend: withBackend, vpcId: vpcId, filters: filters, securityGroup: securityGroup)
        return try await self.client.execute(action: "DescribeLoadBalancers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询负载均衡实例列表
    ///
    /// 查询负载均衡实例列表。
    @inlinable
    public func describeLoadBalancersPaginated(_ input: DescribeLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [LoadBalancer])> {
        self.client.paginate(input: input, region: region, command: self.describeLoadBalancers, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡实例列表
    ///
    /// 查询负载均衡实例列表。
    @inlinable @discardableResult
    public func describeLoadBalancersPaginated(_ input: DescribeLoadBalancersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeLoadBalancersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeLoadBalancers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询负载均衡实例列表
    ///
    /// 查询负载均衡实例列表。
    @inlinable
    public func describeLoadBalancersPaginator(_ input: DescribeLoadBalancersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeLoadBalancersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeLoadBalancers, logger: logger, on: eventLoop)
    }
}
