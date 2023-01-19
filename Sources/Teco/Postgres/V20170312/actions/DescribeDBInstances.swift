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

extension Postgres {
    /// DescribeDBInstances请求参数结构体
    public struct DescribeDBInstancesRequest: TCRequestModel {
        /// 按照一个或者多个过滤条件进行查询，目前支持的过滤条件有：
        /// db-instance-id：按照实例ID过滤，类型为string
        /// db-instance-name：按照实例名过滤，类型为string
        /// db-project-id：按照项目ID过滤，类型为integer
        /// db-pay-mode：按照付费模式过滤，类型为string
        /// db-tag-key：按照标签键过滤，类型为string
        public let filters: [Filter]?

        /// 每页显示数量，取值范围为1-100，默认为返回10条。
        public let limit: UInt64?

        /// 数据偏移量，从0开始。
        public let offset: UInt64?

        /// 排序指标，如实例名、创建时间等，支持DBInstanceId,CreateTime,Name,EndTime
        public let orderBy: String?

        /// 排序方式，包括升序：asc、降序：desc。
        public let orderByType: String?

        public init(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }
    }

    /// DescribeDBInstances返回参数结构体
    public struct DescribeDBInstancesResponse: TCResponseModel {
        /// 查询到的实例数量。
        public let totalCount: UInt64

        /// 实例详细信息集合。
        public let dbInstanceSet: [DBInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dbInstanceSet = "DBInstanceSet"
            case requestId = "RequestId"
        }
    }

    /// 查询实例列表
    ///
    /// 本接口 (DescribeDBInstances) 用于查询一个或多个实例的详细信息。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstancesResponse> {
        self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口 (DescribeDBInstances) 用于查询一个或多个实例的详细信息。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        try await self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例列表
    ///
    /// 本接口 (DescribeDBInstances) 用于查询一个或多个实例的详细信息。
    @inlinable
    public func describeDBInstances(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstancesResponse> {
        self.describeDBInstances(DescribeDBInstancesRequest(filters: filters, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口 (DescribeDBInstances) 用于查询一个或多个实例的详细信息。
    @inlinable
    public func describeDBInstances(filters: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        try await self.describeDBInstances(DescribeDBInstancesRequest(filters: filters, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }
}
