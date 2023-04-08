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
    /// DescribeVulDefencePlugin请求参数结构体
    public struct DescribeVulDefencePluginRequest: TCPaginatedRequest {
        /// 主机HostID即quuid
        public let hostID: String?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Status- String - 是否必填：否 -插件运行状态：注入中:INJECTING，注入成功：SUCCESS，注入失败：FAIL，插件超时：TIMEOUT，插件退出：QUIT</li>
        public let filters: [RunTimeFilters]?

        public init(hostID: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil) {
            self.hostID = hostID
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case hostID = "HostID"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVulDefencePluginResponse) -> DescribeVulDefencePluginRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVulDefencePluginRequest(hostID: self.hostID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeVulDefencePlugin返回参数结构体
    public struct DescribeVulDefencePluginResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: Int64

        /// 漏洞防御插件列表
        public let list: [VulDefencePlugin]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VulDefencePlugin] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询漏洞防御插件列表
    @inlinable
    public func describeVulDefencePlugin(_ input: DescribeVulDefencePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefencePluginResponse> {
        self.client.execute(action: "DescribeVulDefencePlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御插件列表
    @inlinable
    public func describeVulDefencePlugin(_ input: DescribeVulDefencePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefencePluginResponse {
        try await self.client.execute(action: "DescribeVulDefencePlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞防御插件列表
    @inlinable
    public func describeVulDefencePlugin(hostID: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefencePluginResponse> {
        self.describeVulDefencePlugin(.init(hostID: hostID, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御插件列表
    @inlinable
    public func describeVulDefencePlugin(hostID: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefencePluginResponse {
        try await self.describeVulDefencePlugin(.init(hostID: hostID, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御插件列表
    @inlinable
    public func describeVulDefencePluginPaginated(_ input: DescribeVulDefencePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VulDefencePlugin])> {
        self.client.paginate(input: input, region: region, command: self.describeVulDefencePlugin, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御插件列表
    @inlinable @discardableResult
    public func describeVulDefencePluginPaginated(_ input: DescribeVulDefencePluginRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVulDefencePluginResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVulDefencePlugin, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御插件列表
    ///
    /// - Returns: `AsyncSequence`s of `VulDefencePlugin` and `DescribeVulDefencePluginResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVulDefencePluginPaginator(_ input: DescribeVulDefencePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVulDefencePluginRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVulDefencePlugin, logger: logger, on: eventLoop)
    }
}
