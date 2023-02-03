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

extension Apigateway {
    /// DescribeExclusiveInstances请求参数结构体
    public struct DescribeExclusiveInstancesRequest: TCRequestModel {
        /// 分页查询，limit
        public let limit: UInt64

        /// 分页查询，offset
        public let offset: UInt64

        /// 过滤条件
        public let filters: [Filter]?

        public init(limit: UInt64, offset: UInt64, filters: [Filter]? = nil) {
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

    /// DescribeExclusiveInstances返回参数结构体
    public struct DescribeExclusiveInstancesResponse: TCResponseModel {
        /// 独享实例列表查询结果
        public let result: InstanceInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询独享实例列表
    ///
    /// 本接口（DescribeExclusiveInstances）用于查询独享实例列表信息。
    @inlinable
    public func describeExclusiveInstances(_ input: DescribeExclusiveInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveInstancesResponse> {
        self.client.execute(action: "DescribeExclusiveInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询独享实例列表
    ///
    /// 本接口（DescribeExclusiveInstances）用于查询独享实例列表信息。
    @inlinable
    public func describeExclusiveInstances(_ input: DescribeExclusiveInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveInstancesResponse {
        try await self.client.execute(action: "DescribeExclusiveInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询独享实例列表
    ///
    /// 本接口（DescribeExclusiveInstances）用于查询独享实例列表信息。
    @inlinable
    public func describeExclusiveInstances(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveInstancesResponse> {
        let input = DescribeExclusiveInstancesRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeExclusiveInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询独享实例列表
    ///
    /// 本接口（DescribeExclusiveInstances）用于查询独享实例列表信息。
    @inlinable
    public func describeExclusiveInstances(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveInstancesResponse {
        let input = DescribeExclusiveInstancesRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeExclusiveInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
