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

extension Oceanus {
    /// DescribeWorkSpaces请求参数结构体
    public struct DescribeWorkSpacesRequest: TCPaginatedRequest {
        /// 偏移量，默认 0
        public let offset: Int64?

        /// 1 按照创建时间降序排序(默认) 2.按照创建时间升序排序，3. 按照状态降序排序 4. 按照状态升序排序 默认为0
        public let orderType: Int64?

        /// 请求的集群数量，默认 20
        public let limit: Int64?

        /// 过滤规则
        public let filters: [Filter]?

        public init(offset: Int64? = nil, orderType: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.orderType = orderType
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case orderType = "OrderType"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWorkSpacesResponse) -> DescribeWorkSpacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWorkSpacesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), orderType: self.orderType, limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeWorkSpaces返回参数结构体
    public struct DescribeWorkSpacesResponse: TCPaginatedResponse {
        /// 空间详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let workSpaceSetItem: [WorkSpaceSetItem]?

        /// 空间总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case workSpaceSetItem = "WorkSpaceSetItem"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [WorkSpaceSetItem] {
            self.workSpaceSetItem ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 授权工作空间列表
    @inlinable
    public func describeWorkSpaces(_ input: DescribeWorkSpacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkSpacesResponse> {
        self.client.execute(action: "DescribeWorkSpaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 授权工作空间列表
    @inlinable
    public func describeWorkSpaces(_ input: DescribeWorkSpacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkSpacesResponse {
        try await self.client.execute(action: "DescribeWorkSpaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 授权工作空间列表
    @inlinable
    public func describeWorkSpaces(offset: Int64? = nil, orderType: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkSpacesResponse> {
        self.describeWorkSpaces(.init(offset: offset, orderType: orderType, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 授权工作空间列表
    @inlinable
    public func describeWorkSpaces(offset: Int64? = nil, orderType: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkSpacesResponse {
        try await self.describeWorkSpaces(.init(offset: offset, orderType: orderType, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 授权工作空间列表
    @inlinable
    public func describeWorkSpacesPaginated(_ input: DescribeWorkSpacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [WorkSpaceSetItem])> {
        self.client.paginate(input: input, region: region, command: self.describeWorkSpaces, logger: logger, on: eventLoop)
    }

    /// 授权工作空间列表
    @inlinable @discardableResult
    public func describeWorkSpacesPaginated(_ input: DescribeWorkSpacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWorkSpacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWorkSpaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 授权工作空间列表
    ///
    /// - Returns: `AsyncSequence`s of `WorkSpaceSetItem` and `DescribeWorkSpacesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWorkSpacesPaginator(_ input: DescribeWorkSpacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWorkSpacesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWorkSpaces, logger: logger, on: eventLoop)
    }
}
