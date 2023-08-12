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
    /// DescribeEmergencyVulList请求参数结构体
    public struct DescribeEmergencyVulListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Level- String - 是否必填：否 - 威胁等级，CRITICAL:严重 HIGH:高/MIDDLE:中/LOW:低</li>
        /// <li>Tags- string - 是否必填：否 - 漏洞标签，POC，EXP。</li>
        /// <li>CanBeFixed- string - 是否必填：否 - 是否可修复true,false。</li>
        /// <li>CVEID- string - 是否必填：否 - CVE编号</li>
        /// <li>ImageID- string - 是否必填：否 - 镜像ID</li>
        /// <li>ImageName- String -是否必填: 否 - 镜像名称</li>
        /// <li>ContainerID- string -是否必填: 否 - 容器ID</li>
        /// <li>ContainerName- string -是否必填: 否 - 容器名称</li>
        /// <li>ComponentName- string -是否必填: 否 - 组件名称</li>
        /// <li>ComponentVersion- string -是否必填: 否 - 组件版本</li>
        /// <li>Name- string -是否必填: 否 - 漏洞名称</li>
        public let filters: [RunTimeFilters]?

        /// 排序方式
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeEmergencyVulListResponse) -> DescribeEmergencyVulListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEmergencyVulListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeEmergencyVulList返回参数结构体
    public struct DescribeEmergencyVulListResponse: TCPaginatedResponse {
        /// 漏洞总数
        public let totalCount: Int64

        /// 漏洞列表
        public let list: [EmergencyVulInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``EmergencyVulInfo`` list from the paginated response.
        public func getItems() -> [EmergencyVulInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询应急漏洞列表
    @inlinable
    public func describeEmergencyVulList(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEmergencyVulListResponse> {
        self.client.execute(action: "DescribeEmergencyVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应急漏洞列表
    @inlinable
    public func describeEmergencyVulList(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEmergencyVulListResponse {
        try await self.client.execute(action: "DescribeEmergencyVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应急漏洞列表
    @inlinable
    public func describeEmergencyVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEmergencyVulListResponse> {
        self.describeEmergencyVulList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应急漏洞列表
    @inlinable
    public func describeEmergencyVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEmergencyVulListResponse {
        try await self.describeEmergencyVulList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应急漏洞列表
    @inlinable
    public func describeEmergencyVulListPaginated(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [EmergencyVulInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeEmergencyVulList, logger: logger, on: eventLoop)
    }

    /// 查询应急漏洞列表
    @inlinable @discardableResult
    public func describeEmergencyVulListPaginated(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEmergencyVulListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEmergencyVulList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询应急漏洞列表
    ///
    /// - Returns: `AsyncSequence`s of `EmergencyVulInfo` and `DescribeEmergencyVulListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeEmergencyVulListPaginator(_ input: DescribeEmergencyVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEmergencyVulListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEmergencyVulList, logger: logger, on: eventLoop)
    }
}
