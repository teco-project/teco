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

extension Tcss {
    /// DescribeVulDefenceHost请求参数结构体
    public struct DescribeVulDefenceHostRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// - Status- String - 是否必填：否 - 插件状态，正常：SUCCESS，异常：FAIL， NO_DEFENCE:未防御
        /// - HostName- String - 是否必填：否 - 主机名称/超级节点名称
        /// - HostIP- String - 是否必填：否 - 主机IP
        /// - NodeType- String - 是否必填：否 - 节点类型
        /// - HostName- String - 是否必填：否 - 超级节点名称
        /// - NodeSubNetCIDR- String - 是否必填：否 - 超级节点CIDR
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式：asc/desc
        public let order: String?

        /// 排序字段：更新时间：ModifyTime/首次开启时间：CreateTime
        public let by: String?

        public init(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVulDefenceHostResponse) -> DescribeVulDefenceHostRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVulDefenceHostRequest(filters: self.filters, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeVulDefenceHost返回参数结构体
    public struct DescribeVulDefenceHostResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: Int64

        /// 漏洞防御的主机列表
        public let list: [VulDefenceHost]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``VulDefenceHost`` list from the paginated response.
        public func getItems() -> [VulDefenceHost] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询漏洞防御的主机列表
    @inlinable
    public func describeVulDefenceHost(_ input: DescribeVulDefenceHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefenceHostResponse> {
        self.client.execute(action: "DescribeVulDefenceHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御的主机列表
    @inlinable
    public func describeVulDefenceHost(_ input: DescribeVulDefenceHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefenceHostResponse {
        try await self.client.execute(action: "DescribeVulDefenceHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞防御的主机列表
    @inlinable
    public func describeVulDefenceHost(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDefenceHostResponse> {
        self.describeVulDefenceHost(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御的主机列表
    @inlinable
    public func describeVulDefenceHost(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDefenceHostResponse {
        try await self.describeVulDefenceHost(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御的主机列表
    @inlinable
    public func describeVulDefenceHostPaginated(_ input: DescribeVulDefenceHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VulDefenceHost])> {
        self.client.paginate(input: input, region: region, command: self.describeVulDefenceHost, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御的主机列表
    @inlinable @discardableResult
    public func describeVulDefenceHostPaginated(_ input: DescribeVulDefenceHostRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVulDefenceHostResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVulDefenceHost, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询漏洞防御的主机列表
    ///
    /// - Returns: `AsyncSequence`s of ``VulDefenceHost`` and ``DescribeVulDefenceHostResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVulDefenceHostPaginator(_ input: DescribeVulDefenceHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVulDefenceHostRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVulDefenceHost, logger: logger, on: eventLoop)
    }
}
