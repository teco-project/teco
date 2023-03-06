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

extension Postgres {
    /// DescribeReadOnlyGroups请求参数结构体
    public struct DescribeReadOnlyGroupsRequest: TCPaginatedRequest {
        /// 过滤条件，必须传入主实例ID进行过滤，否则返回值将为空，过滤参数为：db-master-instance-id
        public let filters: [Filter]?

        /// 查询每一页的条数，默认为10
        public let pageSize: Int64?

        /// 查询的页码，默认为1
        public let pageNumber: Int64?

        /// 查询排序依据，目前支持:ROGroupId,CreateTime,Name
        public let orderBy: String?

        /// 查询排序依据类型，目前支持:desc,asc
        public let orderByType: String?

        public init(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.filters = filters
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeReadOnlyGroupsResponse) -> DescribeReadOnlyGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeReadOnlyGroupsRequest(filters: self.filters, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeReadOnlyGroups返回参数结构体
    public struct DescribeReadOnlyGroupsResponse: TCPaginatedResponse {
        /// 只读组列表
        public let readOnlyGroupList: [ReadOnlyGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case readOnlyGroupList = "ReadOnlyGroupList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ReadOnlyGroup] {
            self.readOnlyGroupList
        }
    }

    /// 查询只读组信息
    ///
    /// 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组
    @inlinable
    public func describeReadOnlyGroups(_ input: DescribeReadOnlyGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReadOnlyGroupsResponse> {
        self.client.execute(action: "DescribeReadOnlyGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询只读组信息
    ///
    /// 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组
    @inlinable
    public func describeReadOnlyGroups(_ input: DescribeReadOnlyGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReadOnlyGroupsResponse {
        try await self.client.execute(action: "DescribeReadOnlyGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询只读组信息
    ///
    /// 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组
    @inlinable
    public func describeReadOnlyGroups(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReadOnlyGroupsResponse> {
        let input = DescribeReadOnlyGroupsRequest(filters: filters, pageSize: pageSize, pageNumber: pageNumber, orderBy: orderBy, orderByType: orderByType)
        return self.client.execute(action: "DescribeReadOnlyGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询只读组信息
    ///
    /// 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组
    @inlinable
    public func describeReadOnlyGroups(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReadOnlyGroupsResponse {
        let input = DescribeReadOnlyGroupsRequest(filters: filters, pageSize: pageSize, pageNumber: pageNumber, orderBy: orderBy, orderByType: orderByType)
        return try await self.client.execute(action: "DescribeReadOnlyGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询只读组信息
    ///
    /// 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组
    @inlinable
    public func describeReadOnlyGroupsPaginated(_ input: DescribeReadOnlyGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ReadOnlyGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeReadOnlyGroups, logger: logger, on: eventLoop)
    }

    /// 查询只读组信息
    ///
    /// 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组
    @inlinable @discardableResult
    public func describeReadOnlyGroupsPaginated(_ input: DescribeReadOnlyGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeReadOnlyGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeReadOnlyGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询只读组信息
    ///
    /// 本接口(DescribeReadOnlyGroups)用于查询用户输入指定实例的只读组
    ///
    /// - Returns: `AsyncSequence`s of `ReadOnlyGroup` and `DescribeReadOnlyGroupsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeReadOnlyGroupsPaginator(_ input: DescribeReadOnlyGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeReadOnlyGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeReadOnlyGroups, logger: logger, on: eventLoop)
    }
}
