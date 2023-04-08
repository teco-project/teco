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

extension Ms {
    /// DescribeResourceInstances请求参数结构体
    public struct DescribeResourceInstancesRequest: TCPaginatedRequest {
        /// 支持CreateTime、ExpireTime、AppName、AppPkgName、BindValue、IsBind过滤
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 数量限制，默认为20，最大值为100。
        public let limit: UInt64?

        /// 资源类别id数组，13624：加固专业版，12750：企业版。空数组表示返回全部资源。
        public let pids: [UInt64]?

        /// 按某个字段排序，目前支持CreateTime、ExpireTime其中的一个排序。
        public let orderField: String?

        /// 升序（asc）还是降序（desc），默认：desc。
        public let orderDirection: String?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, pids: [UInt64]? = nil, orderField: String? = nil, orderDirection: String? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.pids = pids
            self.orderField = orderField
            self.orderDirection = orderDirection
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case pids = "Pids"
            case orderField = "OrderField"
            case orderDirection = "OrderDirection"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeResourceInstancesResponse) -> DescribeResourceInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeResourceInstancesRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, pids: self.pids, orderField: self.orderField, orderDirection: self.orderDirection)
        }
    }

    /// DescribeResourceInstances返回参数结构体
    public struct DescribeResourceInstancesResponse: TCPaginatedResponse {
        /// 符合要求的资源数量
        public let totalCount: UInt64

        /// 符合要求的资源数组
        public let resourceSet: [ResourceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case resourceSet = "ResourceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ResourceInfo] {
            self.resourceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取用户的所有资源信息
    ///
    /// 获取某个用户的所有资源信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeResourceInstances(_ input: DescribeResourceInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceInstancesResponse> {
        self.client.execute(action: "DescribeResourceInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户的所有资源信息
    ///
    /// 获取某个用户的所有资源信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeResourceInstances(_ input: DescribeResourceInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceInstancesResponse {
        try await self.client.execute(action: "DescribeResourceInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户的所有资源信息
    ///
    /// 获取某个用户的所有资源信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeResourceInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, pids: [UInt64]? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceInstancesResponse> {
        self.describeResourceInstances(.init(filters: filters, offset: offset, limit: limit, pids: pids, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户的所有资源信息
    ///
    /// 获取某个用户的所有资源信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeResourceInstances(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, pids: [UInt64]? = nil, orderField: String? = nil, orderDirection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceInstancesResponse {
        try await self.describeResourceInstances(.init(filters: filters, offset: offset, limit: limit, pids: pids, orderField: orderField, orderDirection: orderDirection), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户的所有资源信息
    ///
    /// 获取某个用户的所有资源信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable
    public func describeResourceInstancesPaginated(_ input: DescribeResourceInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ResourceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeResourceInstances, logger: logger, on: eventLoop)
    }

    /// 获取用户的所有资源信息
    ///
    /// 获取某个用户的所有资源信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    @inlinable @discardableResult
    public func describeResourceInstancesPaginated(_ input: DescribeResourceInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeResourceInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeResourceInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取用户的所有资源信息
    ///
    /// 获取某个用户的所有资源信息。（注意：根据国家互联网用户实名制相关要求，使用该产品前，需先完成实名认证。）
    ///
    /// - Returns: `AsyncSequence`s of `ResourceInfo` and `DescribeResourceInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeResourceInstancesPaginator(_ input: DescribeResourceInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeResourceInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeResourceInstances, logger: logger, on: eventLoop)
    }
}
