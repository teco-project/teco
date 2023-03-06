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

extension Tcss {
    /// DescribeAssetContainerList请求参数结构体
    public struct DescribeAssetContainerListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>ContainerName - String - 是否必填：否 - 容器名称模糊搜索</li>
        /// <li>Status - String - 是否必填：否 - 容器运行状态筛选，0："created",1："running", 2："paused", 3："restarting", 4："removing", 5："exited", 6："dead" </li>
        /// <li>Runas - String - 是否必填：否 - 运行用户筛选</li>
        /// <li>ImageName- String - 是否必填：否 - 镜像名称搜索</li>
        /// <li>HostIP- string - 是否必填：否 - 主机ip搜索</li>
        /// <li>OrderBy - String 是否必填：否 -排序字段，支持：cpu_usage, mem_usage的动态排序 ["cpu_usage","+"]  '+'升序、'-'降序</li>
        /// <li>NetStatus - String -是否必填: 否 -  容器网络状态筛选 normal isolated isolating isolate_failed restoring restore_failed</li>
        public let filters: [AssetFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式 asc,desc
        public let order: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetContainerListResponse) -> DescribeAssetContainerListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetContainerListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeAssetContainerList返回参数结构体
    public struct DescribeAssetContainerListResponse: TCPaginatedResponse {
        /// 容器列表
        public let list: [ContainerInfo]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ContainerInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询容器列表
    ///
    /// 搜索查询容器列表
    @inlinable
    public func describeAssetContainerList(_ input: DescribeAssetContainerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetContainerListResponse> {
        self.client.execute(action: "DescribeAssetContainerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器列表
    ///
    /// 搜索查询容器列表
    @inlinable
    public func describeAssetContainerList(_ input: DescribeAssetContainerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetContainerListResponse {
        try await self.client.execute(action: "DescribeAssetContainerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器列表
    ///
    /// 搜索查询容器列表
    @inlinable
    public func describeAssetContainerList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetContainerListResponse> {
        let input = DescribeAssetContainerListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order)
        return self.client.execute(action: "DescribeAssetContainerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器列表
    ///
    /// 搜索查询容器列表
    @inlinable
    public func describeAssetContainerList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetContainerListResponse {
        let input = DescribeAssetContainerListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order)
        return try await self.client.execute(action: "DescribeAssetContainerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器列表
    ///
    /// 搜索查询容器列表
    @inlinable
    public func describeAssetContainerListPaginated(_ input: DescribeAssetContainerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ContainerInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetContainerList, logger: logger, on: eventLoop)
    }

    /// 查询容器列表
    ///
    /// 搜索查询容器列表
    @inlinable @discardableResult
    public func describeAssetContainerListPaginated(_ input: DescribeAssetContainerListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetContainerListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetContainerList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询容器列表
    ///
    /// 搜索查询容器列表
    ///
    /// - Returns: `AsyncSequence`s of `ContainerInfo` and `DescribeAssetContainerListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetContainerListPaginator(_ input: DescribeAssetContainerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetContainerListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetContainerList, logger: logger, on: eventLoop)
    }
}
