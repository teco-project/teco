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

extension Dbdc {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCPaginatedRequest {
        /// 集群类型: 0 一主一备, 1 一主两备...N-1 一主N备
        public let instanceTypes: [Int64]?

        /// 产品ID:  0 MYSQL，1 TDSQL
        public let productIds: [Int64]?

        /// 集群uuid: 如 dbdc-q810131s
        public let instanceIds: [String]?

        /// 是否按金融围笼标志搜索
        public let fenceFlag: Bool?

        /// 按实例名字模糊匹配
        public let instanceName: String?

        /// 每页数目, 整型
        public let pageSize: Int64?

        /// 页码, 整型
        public let pageNumber: Int64?

        /// 排序字段，枚举：createtime,groupname
        public let orderBy: String?

        /// 排序方式: asc升序, desc降序
        public let orderByType: String?

        /// 集群状态: -2 已删除, -1 已隔离, 0 创建中, 1 运行中, 2 扩容中, 3 删除中
        public let instanceStatus: Int64?

        public init(instanceTypes: [Int64]? = nil, productIds: [Int64]? = nil, instanceIds: [String]? = nil, fenceFlag: Bool? = nil, instanceName: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, instanceStatus: Int64? = nil) {
            self.instanceTypes = instanceTypes
            self.productIds = productIds
            self.instanceIds = instanceIds
            self.fenceFlag = fenceFlag
            self.instanceName = instanceName
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.instanceStatus = instanceStatus
        }

        enum CodingKeys: String, CodingKey {
            case instanceTypes = "InstanceTypes"
            case productIds = "ProductIds"
            case instanceIds = "InstanceIds"
            case fenceFlag = "FenceFlag"
            case instanceName = "InstanceName"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case instanceStatus = "InstanceStatus"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInstancesResponse) -> DescribeInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesRequest(instanceTypes: self.instanceTypes, productIds: self.productIds, instanceIds: self.instanceIds, fenceFlag: self.fenceFlag, instanceName: self.instanceName, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, orderBy: self.orderBy, orderByType: self.orderByType, instanceStatus: self.instanceStatus)
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCPaginatedResponse {
        /// 集群数量
        public let totalCount: Int64

        /// 集群扩展信息
        public let instances: [InstanceExpand]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instances = "Instances"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceExpand] {
            self.instances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询独享集群列表
    ///
    /// 根据不同地域不同用户，获取集群列表信息
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询独享集群列表
    ///
    /// 根据不同地域不同用户，获取集群列表信息
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询独享集群列表
    ///
    /// 根据不同地域不同用户，获取集群列表信息
    @inlinable
    public func describeInstances(instanceTypes: [Int64]? = nil, productIds: [Int64]? = nil, instanceIds: [String]? = nil, fenceFlag: Bool? = nil, instanceName: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, instanceStatus: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        let input = DescribeInstancesRequest(instanceTypes: instanceTypes, productIds: productIds, instanceIds: instanceIds, fenceFlag: fenceFlag, instanceName: instanceName, pageSize: pageSize, pageNumber: pageNumber, orderBy: orderBy, orderByType: orderByType, instanceStatus: instanceStatus)
        return self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询独享集群列表
    ///
    /// 根据不同地域不同用户，获取集群列表信息
    @inlinable
    public func describeInstances(instanceTypes: [Int64]? = nil, productIds: [Int64]? = nil, instanceIds: [String]? = nil, fenceFlag: Bool? = nil, instanceName: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, instanceStatus: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        let input = DescribeInstancesRequest(instanceTypes: instanceTypes, productIds: productIds, instanceIds: instanceIds, fenceFlag: fenceFlag, instanceName: instanceName, pageSize: pageSize, pageNumber: pageNumber, orderBy: orderBy, orderByType: orderByType, instanceStatus: instanceStatus)
        return try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询独享集群列表
    ///
    /// 根据不同地域不同用户，获取集群列表信息
    @inlinable
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceExpand])> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }

    /// 查询独享集群列表
    ///
    /// 根据不同地域不同用户，获取集群列表信息
    @inlinable @discardableResult
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询独享集群列表
    ///
    /// 根据不同地域不同用户，获取集群列表信息
    ///
    /// - Returns: `AsyncSequence`s of `InstanceExpand` and `DescribeInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesPaginator(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }
}
