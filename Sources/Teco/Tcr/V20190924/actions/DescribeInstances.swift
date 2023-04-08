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

extension Tcr {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCPaginatedRequest {
        /// 实例ID列表(为空时，
        /// 表示获取账号下所有实例)
        public let registryids: [String]?

        /// 偏移量,默认0
        public let offset: Int64?

        /// 最大输出条数，默认20，最大为100
        public let limit: Int64?

        /// 过滤条件
        public let filters: [Filter]?

        /// 获取所有地域的实例，默认为False
        public let allRegion: Bool?

        public init(registryids: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, allRegion: Bool? = nil) {
            self.registryids = registryids
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.allRegion = allRegion
        }

        enum CodingKeys: String, CodingKey {
            case registryids = "Registryids"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case allRegion = "AllRegion"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesResponse) -> DescribeInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesRequest(registryids: self.registryids, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, allRegion: self.allRegion)
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCPaginatedResponse {
        /// 总实例个数
        public let totalCount: Int64

        /// 实例信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registries: [Registry]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case registries = "Registries"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Registry] {
            self.registries ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例信息
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例信息
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例信息
    @inlinable
    public func describeInstances(registryids: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, allRegion: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.describeInstances(.init(registryids: registryids, offset: offset, limit: limit, filters: filters, allRegion: allRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例信息
    @inlinable
    public func describeInstances(registryids: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, allRegion: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(.init(registryids: registryids, offset: offset, limit: limit, filters: filters, allRegion: allRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例信息
    @inlinable
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Registry])> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }

    /// 查询实例信息
    @inlinable @discardableResult
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例信息
    ///
    /// - Returns: `AsyncSequence`s of `Registry` and `DescribeInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesPaginator(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }
}
