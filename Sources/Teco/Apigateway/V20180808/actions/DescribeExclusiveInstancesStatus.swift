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
    /// DescribeExclusiveInstancesStatus请求参数结构体
    public struct DescribeExclusiveInstancesStatusRequest: TCRequestModel {
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

    /// DescribeExclusiveInstancesStatus返回参数结构体
    public struct DescribeExclusiveInstancesStatusResponse: TCResponseModel {
        /// 独享实例列表查询结果
        public let result: InstanceSummary

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询专享实例列表（新）
    @inlinable
    public func describeExclusiveInstancesStatus(_ input: DescribeExclusiveInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveInstancesStatusResponse> {
        self.client.execute(action: "DescribeExclusiveInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专享实例列表（新）
    @inlinable
    public func describeExclusiveInstancesStatus(_ input: DescribeExclusiveInstancesStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveInstancesStatusResponse {
        try await self.client.execute(action: "DescribeExclusiveInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专享实例列表（新）
    @inlinable
    public func describeExclusiveInstancesStatus(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExclusiveInstancesStatusResponse> {
        let input = DescribeExclusiveInstancesStatusRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeExclusiveInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专享实例列表（新）
    @inlinable
    public func describeExclusiveInstancesStatus(limit: UInt64, offset: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusiveInstancesStatusResponse {
        let input = DescribeExclusiveInstancesStatusRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeExclusiveInstancesStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
