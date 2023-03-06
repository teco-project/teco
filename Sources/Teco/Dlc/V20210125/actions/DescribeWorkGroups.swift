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

import TecoPaginationHelpers

extension Dlc {
    /// DescribeWorkGroups请求参数结构体
    public struct DescribeWorkGroupsRequest: TCPaginatedRequest {
        /// 查询的工作组Id，不填或填0表示不过滤。
        public let workGroupId: Int64?

        /// 过滤条件，当前仅支持按照工作组名称进行模糊搜索。Key为workgroup-name
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认20，最大值100
        public let limit: Int64?

        /// 排序字段，支持如下字段类型，create-time
        public let sortBy: String?

        /// 排序方式，desc表示正序，asc表示反序， 默认为asc
        public let sorting: String?

        public init(workGroupId: Int64? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, sorting: String? = nil) {
            self.workGroupId = workGroupId
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.sortBy = sortBy
            self.sorting = sorting
        }

        enum CodingKeys: String, CodingKey {
            case workGroupId = "WorkGroupId"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case sortBy = "SortBy"
            case sorting = "Sorting"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeWorkGroupsResponse) -> DescribeWorkGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeWorkGroupsRequest(workGroupId: self.workGroupId, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, sortBy: self.sortBy, sorting: self.sorting)
        }
    }

    /// DescribeWorkGroups返回参数结构体
    public struct DescribeWorkGroupsResponse: TCPaginatedResponse {
        /// 工作组总数
        public let totalCount: Int64

        /// 工作组信息集合
        public let workGroupSet: [WorkGroupInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case workGroupSet = "WorkGroupSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [WorkGroupInfo] {
            self.workGroupSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取工作组列表
    @inlinable
    public func describeWorkGroups(_ input: DescribeWorkGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkGroupsResponse> {
        self.client.execute(action: "DescribeWorkGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取工作组列表
    @inlinable
    public func describeWorkGroups(_ input: DescribeWorkGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkGroupsResponse {
        try await self.client.execute(action: "DescribeWorkGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取工作组列表
    @inlinable
    public func describeWorkGroups(workGroupId: Int64? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWorkGroupsResponse> {
        let input = DescribeWorkGroupsRequest(workGroupId: workGroupId, filters: filters, offset: offset, limit: limit, sortBy: sortBy, sorting: sorting)
        return self.client.execute(action: "DescribeWorkGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取工作组列表
    @inlinable
    public func describeWorkGroups(workGroupId: Int64? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWorkGroupsResponse {
        let input = DescribeWorkGroupsRequest(workGroupId: workGroupId, filters: filters, offset: offset, limit: limit, sortBy: sortBy, sorting: sorting)
        return try await self.client.execute(action: "DescribeWorkGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取工作组列表
    @inlinable
    public func describeWorkGroupsPaginated(_ input: DescribeWorkGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [WorkGroupInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeWorkGroups, logger: logger, on: eventLoop)
    }

    /// 获取工作组列表
    @inlinable @discardableResult
    public func describeWorkGroupsPaginated(_ input: DescribeWorkGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeWorkGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeWorkGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取工作组列表
    ///
    /// - Returns: `AsyncSequence`s of `WorkGroupInfo` and `DescribeWorkGroupsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeWorkGroupsPaginator(_ input: DescribeWorkGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeWorkGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeWorkGroups, logger: logger, on: eventLoop)
    }
}
