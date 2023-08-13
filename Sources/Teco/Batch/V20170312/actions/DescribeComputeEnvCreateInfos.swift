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
import TecoPaginationHelpers

extension Batch {
    /// DescribeComputeEnvCreateInfos请求参数结构体
    public struct DescribeComputeEnvCreateInfosRequest: TCPaginatedRequest {
        /// 计算环境ID列表，与Filters参数不能同时指定。
        public let envIds: [String]?

        /// 过滤条件
        /// - zone - String - 是否必填：否 -（过滤条件）按照可用区过滤。
        /// - env-id - String - 是否必填：否 -（过滤条件）按照计算环境ID过滤。
        /// - env-name - String - 是否必填：否 -（过滤条件）按照计算环境名称过滤。
        /// 与EnvIds参数不能同时指定。
        public let filters: [Filter]?

        /// 偏移量
        public let offset: UInt64?

        /// 返回数量
        public let limit: UInt64?

        public init(envIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.envIds = envIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case envIds = "EnvIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeComputeEnvCreateInfosResponse) -> DescribeComputeEnvCreateInfosRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeComputeEnvCreateInfosRequest(envIds: self.envIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeComputeEnvCreateInfos返回参数结构体
    public struct DescribeComputeEnvCreateInfosResponse: TCPaginatedResponse {
        /// 计算环境数量
        public let totalCount: Int64

        /// 计算环境创建信息列表
        public let computeEnvCreateInfoSet: [ComputeEnvCreateInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case computeEnvCreateInfoSet = "ComputeEnvCreateInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ComputeEnvCreateInfo`` list from the paginated response.
        public func getItems() -> [ComputeEnvCreateInfo] {
            self.computeEnvCreateInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查看计算环境创建信息列表
    ///
    /// 用于查看计算环境创建信息列表，包括名称、描述、类型、环境参数、通知及期望节点数等。
    @inlinable
    public func describeComputeEnvCreateInfos(_ input: DescribeComputeEnvCreateInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComputeEnvCreateInfosResponse> {
        self.client.execute(action: "DescribeComputeEnvCreateInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看计算环境创建信息列表
    ///
    /// 用于查看计算环境创建信息列表，包括名称、描述、类型、环境参数、通知及期望节点数等。
    @inlinable
    public func describeComputeEnvCreateInfos(_ input: DescribeComputeEnvCreateInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComputeEnvCreateInfosResponse {
        try await self.client.execute(action: "DescribeComputeEnvCreateInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看计算环境创建信息列表
    ///
    /// 用于查看计算环境创建信息列表，包括名称、描述、类型、环境参数、通知及期望节点数等。
    @inlinable
    public func describeComputeEnvCreateInfos(envIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComputeEnvCreateInfosResponse> {
        self.describeComputeEnvCreateInfos(.init(envIds: envIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看计算环境创建信息列表
    ///
    /// 用于查看计算环境创建信息列表，包括名称、描述、类型、环境参数、通知及期望节点数等。
    @inlinable
    public func describeComputeEnvCreateInfos(envIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComputeEnvCreateInfosResponse {
        try await self.describeComputeEnvCreateInfos(.init(envIds: envIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看计算环境创建信息列表
    ///
    /// 用于查看计算环境创建信息列表，包括名称、描述、类型、环境参数、通知及期望节点数等。
    @inlinable
    public func describeComputeEnvCreateInfosPaginated(_ input: DescribeComputeEnvCreateInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ComputeEnvCreateInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeComputeEnvCreateInfos, logger: logger, on: eventLoop)
    }

    /// 查看计算环境创建信息列表
    ///
    /// 用于查看计算环境创建信息列表，包括名称、描述、类型、环境参数、通知及期望节点数等。
    @inlinable @discardableResult
    public func describeComputeEnvCreateInfosPaginated(_ input: DescribeComputeEnvCreateInfosRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeComputeEnvCreateInfosResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeComputeEnvCreateInfos, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看计算环境创建信息列表
    ///
    /// 用于查看计算环境创建信息列表，包括名称、描述、类型、环境参数、通知及期望节点数等。
    ///
    /// - Returns: `AsyncSequence`s of ``ComputeEnvCreateInfo`` and ``DescribeComputeEnvCreateInfosResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeComputeEnvCreateInfosPaginator(_ input: DescribeComputeEnvCreateInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeComputeEnvCreateInfosRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeComputeEnvCreateInfos, logger: logger, on: eventLoop)
    }
}
