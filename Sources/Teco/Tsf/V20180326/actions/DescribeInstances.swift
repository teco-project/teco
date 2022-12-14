//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tsf {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCRequestModel {
        /// 过滤条件
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 分页个数，默认为20，最大100
        public let limit: UInt64?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
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

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCResponseModel {
        /// 机器列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: InstanceEnrichedInfoPage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询机器列表
    ///
    /// 无
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesResponse > {
        self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询机器列表
    ///
    /// 无
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询机器列表
    ///
    /// 无
    @inlinable
    public func describeInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesResponse > {
        self.describeInstances(DescribeInstancesRequest(filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询机器列表
    ///
    /// 无
    @inlinable
    public func describeInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(DescribeInstancesRequest(filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
