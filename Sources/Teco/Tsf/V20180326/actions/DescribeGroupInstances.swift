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

extension Tsf {
    /// DescribeGroupInstances请求参数结构体
    public struct DescribeGroupInstancesRequest: TCPaginatedRequest {
        /// 部署组ID
        public let groupId: String

        /// 搜索字段
        public let searchWord: String?

        /// 排序字段
        public let orderBy: String?

        /// 排序类型
        public let orderType: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 分页个数
        public let limit: Int64?

        public init(groupId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.groupId = groupId
            self.searchWord = searchWord
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case searchWord = "SearchWord"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGroupInstancesResponse) -> DescribeGroupInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGroupInstancesRequest(groupId: self.groupId, searchWord: self.searchWord, orderBy: self.orderBy, orderType: self.orderType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeGroupInstances返回参数结构体
    public struct DescribeGroupInstancesResponse: TCPaginatedResponse {
        /// 部署组机器信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageInstance?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Instance`` list from the paginated response.
        public func getItems() -> [Instance] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable
    public func describeGroupInstances(_ input: DescribeGroupInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupInstancesResponse> {
        self.client.execute(action: "DescribeGroupInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable
    public func describeGroupInstances(_ input: DescribeGroupInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupInstancesResponse {
        try await self.client.execute(action: "DescribeGroupInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable
    public func describeGroupInstances(groupId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupInstancesResponse> {
        self.describeGroupInstances(.init(groupId: groupId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable
    public func describeGroupInstances(groupId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupInstancesResponse {
        try await self.describeGroupInstances(.init(groupId: groupId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable
    public func describeGroupInstancesPaginated(_ input: DescribeGroupInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Instance])> {
        self.client.paginate(input: input, region: region, command: self.describeGroupInstances, logger: logger, on: eventLoop)
    }

    /// 查询虚拟机部署组云主机列表
    @inlinable @discardableResult
    public func describeGroupInstancesPaginated(_ input: DescribeGroupInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGroupInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGroupInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询虚拟机部署组云主机列表
    ///
    /// - Returns: `AsyncSequence`s of `Instance` and `DescribeGroupInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGroupInstancesPaginator(_ input: DescribeGroupInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGroupInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGroupInstances, logger: logger, on: eventLoop)
    }
}
