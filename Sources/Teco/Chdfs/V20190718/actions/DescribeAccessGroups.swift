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

extension Chdfs {
    /// DescribeAccessGroups请求参数结构体
    public struct DescribeAccessGroupsRequest: TCPaginatedRequest {
        /// 过滤条件，Name可选“AccessGroupId“和“AccessGroupName”，Values上限为10
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为所有
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

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAccessGroupsResponse) -> DescribeAccessGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAccessGroupsRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAccessGroups返回参数结构体
    public struct DescribeAccessGroupsResponse: TCPaginatedResponse {
        /// 权限组列表
        public let accessGroups: [AccessGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessGroups = "AccessGroups"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AccessGroup] {
            self.accessGroups
        }
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessGroups(_ input: DescribeAccessGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessGroupsResponse> {
        self.client.execute(action: "DescribeAccessGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessGroups(_ input: DescribeAccessGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessGroupsResponse {
        try await self.client.execute(action: "DescribeAccessGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessGroups(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccessGroupsResponse> {
        let input = DescribeAccessGroupsRequest(filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeAccessGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessGroups(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessGroupsResponse {
        let input = DescribeAccessGroupsRequest(filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeAccessGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessGroupsPaginated(_ input: DescribeAccessGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [AccessGroup])> {
        self.client.paginate(input: input, region: region, command: self.describeAccessGroups, logger: logger, on: eventLoop)
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func describeAccessGroupsPaginated(_ input: DescribeAccessGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAccessGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAccessGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看权限组列表
    ///
    /// 查看权限组列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeAccessGroupsPaginator(_ input: DescribeAccessGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAccessGroupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAccessGroups, logger: logger, on: eventLoop)
    }
}
