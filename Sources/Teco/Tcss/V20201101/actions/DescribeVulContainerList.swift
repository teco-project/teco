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
    /// DescribeVulContainerList请求参数结构体
    public struct DescribeVulContainerListRequest: TCPaginatedRequest {
        /// 漏洞PocID
        public let pocID: String

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>OnlyAffectedNewestImage- Bool- 是否必填：否 - 仅展示影响最新版本镜像的漏洞</li>
        /// <li>ContainerID- string - 是否必填：否 - 容器ID</li>
        /// <li>ContainerName- String -是否必填: 否 - 容器名称</li>
        public let filters: [RunTimeFilters]?

        public init(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil) {
            self.pocID = pocID
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case pocID = "PocID"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeVulContainerListResponse) -> DescribeVulContainerListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVulContainerListRequest(pocID: self.pocID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeVulContainerList返回参数结构体
    public struct DescribeVulContainerListResponse: TCPaginatedResponse {
        /// 容器列表
        public let list: [VulAffectedContainerInfo]

        /// 容器总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VulAffectedContainerInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询受漏洞的容器列表
    @inlinable
    public func describeVulContainerList(_ input: DescribeVulContainerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulContainerListResponse> {
        self.client.execute(action: "DescribeVulContainerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询受漏洞的容器列表
    @inlinable
    public func describeVulContainerList(_ input: DescribeVulContainerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulContainerListResponse {
        try await self.client.execute(action: "DescribeVulContainerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询受漏洞的容器列表
    @inlinable
    public func describeVulContainerList(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulContainerListResponse> {
        let input = DescribeVulContainerListRequest(pocID: pocID, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeVulContainerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询受漏洞的容器列表
    @inlinable
    public func describeVulContainerList(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulContainerListResponse {
        let input = DescribeVulContainerListRequest(pocID: pocID, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeVulContainerList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询受漏洞的容器列表
    @inlinable
    public func describeVulContainerListPaginated(_ input: DescribeVulContainerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VulAffectedContainerInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeVulContainerList, logger: logger, on: eventLoop)
    }

    /// 查询受漏洞的容器列表
    @inlinable @discardableResult
    public func describeVulContainerListPaginated(_ input: DescribeVulContainerListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVulContainerListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVulContainerList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询受漏洞的容器列表
    ///
    /// - Returns: `AsyncSequence`s of `VulAffectedContainerInfo` and `DescribeVulContainerListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVulContainerListPaginator(_ input: DescribeVulContainerListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVulContainerListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVulContainerList, logger: logger, on: eventLoop)
    }
}
