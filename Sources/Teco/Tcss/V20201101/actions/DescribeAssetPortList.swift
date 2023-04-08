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
    /// DescribeAssetPortList请求参数结构体
    public struct DescribeAssetPortListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>All - String - 是否必填：否 - 模糊查询可选字段</li>
        /// <li>RunAs - String - 是否必填：否 - 运行用户筛选，</li>
        /// <li>ContainerID - String - 是否必填：否 - 容器id</li>
        /// <li>HostID- String - 是否必填：是 - 主机id</li>
        /// <li>HostIP- string - 是否必填：否 - 主机ip搜索</li>
        /// <li>ProcessName- string - 是否必填：否 - 进程名搜索</li>
        public let filters: [AssetFilters]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAssetPortListResponse) -> DescribeAssetPortListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetPortListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeAssetPortList返回参数结构体
    public struct DescribeAssetPortListResponse: TCPaginatedResponse {
        /// 端口列表
        public let list: [PortInfo]

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
        public func getItems() -> [PortInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询端口占用列表
    ///
    /// 容器安全搜索查询端口占用列表
    @inlinable
    public func describeAssetPortList(_ input: DescribeAssetPortListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetPortListResponse> {
        self.client.execute(action: "DescribeAssetPortList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询端口占用列表
    ///
    /// 容器安全搜索查询端口占用列表
    @inlinable
    public func describeAssetPortList(_ input: DescribeAssetPortListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetPortListResponse {
        try await self.client.execute(action: "DescribeAssetPortList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询端口占用列表
    ///
    /// 容器安全搜索查询端口占用列表
    @inlinable
    public func describeAssetPortList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetPortListResponse> {
        self.describeAssetPortList(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询端口占用列表
    ///
    /// 容器安全搜索查询端口占用列表
    @inlinable
    public func describeAssetPortList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetPortListResponse {
        try await self.describeAssetPortList(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询端口占用列表
    ///
    /// 容器安全搜索查询端口占用列表
    @inlinable
    public func describeAssetPortListPaginated(_ input: DescribeAssetPortListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PortInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetPortList, logger: logger, on: eventLoop)
    }

    /// 查询端口占用列表
    ///
    /// 容器安全搜索查询端口占用列表
    @inlinable @discardableResult
    public func describeAssetPortListPaginated(_ input: DescribeAssetPortListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetPortListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetPortList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询端口占用列表
    ///
    /// 容器安全搜索查询端口占用列表
    ///
    /// - Returns: `AsyncSequence`s of `PortInfo` and `DescribeAssetPortListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAssetPortListPaginator(_ input: DescribeAssetPortListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetPortListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetPortList, logger: logger, on: eventLoop)
    }
}
