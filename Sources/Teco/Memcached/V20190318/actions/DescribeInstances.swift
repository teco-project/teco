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

extension Memcached {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCPaginatedRequest {
        /// 枚举范围： AddTimeStamp, InstanceName, ProjectId
        public let orderBy: String?

        /// 查找的关键字
        public let searchKeys: [String]?

        /// 子网ID列表
        public let uniqSubnetIds: [String]?

        /// VIP列表
        public let vips: [String]?

        /// 0倒序，1正序，默认倒序
        public let orderType: Int64?

        /// 实例名称列表
        public let instanceNames: [String]?

        /// VPC ID列表
        public let uniqVpcIds: [String]?

        /// 项目ID列表
        public let projectIds: [Int64]?

        /// 偏移量，取Limit整数倍
        public let offset: UInt64?

        /// 实例列表的大小，参数默认值100
        public let limit: UInt64?

        /// 实例ID列表
        public let instanceIds: [String]?

        public init(orderBy: String? = nil, searchKeys: [String]? = nil, uniqSubnetIds: [String]? = nil, vips: [String]? = nil, orderType: Int64? = nil, instanceNames: [String]? = nil, uniqVpcIds: [String]? = nil, projectIds: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, instanceIds: [String]? = nil) {
            self.orderBy = orderBy
            self.searchKeys = searchKeys
            self.uniqSubnetIds = uniqSubnetIds
            self.vips = vips
            self.orderType = orderType
            self.instanceNames = instanceNames
            self.uniqVpcIds = uniqVpcIds
            self.projectIds = projectIds
            self.offset = offset
            self.limit = limit
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case orderBy = "OrderBy"
            case searchKeys = "SearchKeys"
            case uniqSubnetIds = "UniqSubnetIds"
            case vips = "Vips"
            case orderType = "OrderType"
            case instanceNames = "InstanceNames"
            case uniqVpcIds = "UniqVpcIds"
            case projectIds = "ProjectIds"
            case offset = "Offset"
            case limit = "Limit"
            case instanceIds = "InstanceIds"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInstancesResponse) -> DescribeInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesRequest(orderBy: self.orderBy, searchKeys: self.searchKeys, uniqSubnetIds: self.uniqSubnetIds, vips: self.vips, orderType: self.orderType, instanceNames: self.instanceNames, uniqVpcIds: self.uniqVpcIds, projectIds: self.projectIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, instanceIds: self.instanceIds)
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCPaginatedResponse {
        /// 实例详细信息列表
        public let instanceList: [InstanceListInfo]

        /// 实例数量
        public let totalNum: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceList = "InstanceList"
            case totalNum = "TotalNum"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceListInfo] {
            self.instanceList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNum
        }
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstances(orderBy: String? = nil, searchKeys: [String]? = nil, uniqSubnetIds: [String]? = nil, vips: [String]? = nil, orderType: Int64? = nil, instanceNames: [String]? = nil, uniqVpcIds: [String]? = nil, projectIds: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, instanceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        let input = DescribeInstancesRequest(orderBy: orderBy, searchKeys: searchKeys, uniqSubnetIds: uniqSubnetIds, vips: vips, orderType: orderType, instanceNames: instanceNames, uniqVpcIds: uniqVpcIds, projectIds: projectIds, offset: offset, limit: limit, instanceIds: instanceIds)
        return self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstances(orderBy: String? = nil, searchKeys: [String]? = nil, uniqSubnetIds: [String]? = nil, vips: [String]? = nil, orderType: Int64? = nil, instanceNames: [String]? = nil, uniqVpcIds: [String]? = nil, projectIds: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, instanceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        let input = DescribeInstancesRequest(orderBy: orderBy, searchKeys: searchKeys, uniqSubnetIds: uniqSubnetIds, vips: vips, orderType: orderType, instanceNames: instanceNames, uniqVpcIds: uniqVpcIds, projectIds: projectIds, offset: offset, limit: limit, instanceIds: instanceIds)
        return try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceListInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }

    /// 获取Cmem实例列表
    @inlinable @discardableResult
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstancesPaginator(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }
}
