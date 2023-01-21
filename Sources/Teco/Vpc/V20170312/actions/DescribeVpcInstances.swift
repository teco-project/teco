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

extension Vpc {
    /// DescribeVpcInstances请求参数结构体
    public struct DescribeVpcInstancesRequest: TCRequestModel {
        /// 过滤条件，参数不支持同时指定RouteTableIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        /// <li>instance-id - String - （过滤条件）云主机实例ID。</li>
        /// <li>instance-name - String - （过滤条件）云主机名称。</li>
        public let filters: [Filter]

        /// 偏移量。
        public let offset: UInt64?

        /// 请求对象个数。
        public let limit: UInt64?

        public init(filters: [Filter], offset: UInt64? = nil, limit: UInt64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeVpcInstances返回参数结构体
    public struct DescribeVpcInstancesResponse: TCResponseModel {
        /// 云主机实例列表。
        public let instanceSet: [CvmInstance]

        /// 满足条件的云主机实例个数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceSet = "InstanceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询VPC下的云主机实例列表
    ///
    ///  本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable
    public func describeVpcInstances(_ input: DescribeVpcInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcInstancesResponse> {
        self.client.execute(action: "DescribeVpcInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询VPC下的云主机实例列表
    ///
    ///  本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable
    public func describeVpcInstances(_ input: DescribeVpcInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcInstancesResponse {
        try await self.client.execute(action: "DescribeVpcInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询VPC下的云主机实例列表
    ///
    ///  本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable
    public func describeVpcInstances(filters: [Filter], offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcInstancesResponse> {
        self.describeVpcInstances(DescribeVpcInstancesRequest(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询VPC下的云主机实例列表
    ///
    ///  本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。
    @inlinable
    public func describeVpcInstances(filters: [Filter], offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcInstancesResponse {
        try await self.describeVpcInstances(DescribeVpcInstancesRequest(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
