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
    /// DescribeSystemVulList请求参数结构体
    public struct DescribeSystemVulListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>OnlyAffectedContainer- string - 是否必填：否 - 仅展示影响容器的漏洞true,false</li>
        /// <li>OnlyAffectedNewestImage-string - 是否必填：否 - 仅展示影响最新版本镜像的漏洞true,false</li>
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
        /// <li>FocusOnType - string - 是否必填：否 -关注紧急度类型 。ALL :全部，SERIOUS_LEVEL： 严重和高危 ，IS_SUGGEST： 重点关注，POC_EXP 有Poc或Exp ，NETWORK_EXP: 远程Exp</li>
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
        public func makeNextRequest(with response: DescribeSystemVulListResponse) -> DescribeSystemVulListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSystemVulListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, order: self.order, by: self.by)
        }
    }

    /// DescribeSystemVulList返回参数结构体
    public struct DescribeSystemVulListResponse: TCPaginatedResponse {
        /// 漏洞总数
        public let totalCount: Int64

        /// 漏洞列表
        public let list: [VulInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VulInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询系统漏洞列表
    @inlinable
    public func describeSystemVulList(_ input: DescribeSystemVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSystemVulListResponse> {
        self.client.execute(action: "DescribeSystemVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询系统漏洞列表
    @inlinable
    public func describeSystemVulList(_ input: DescribeSystemVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSystemVulListResponse {
        try await self.client.execute(action: "DescribeSystemVulList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询系统漏洞列表
    @inlinable
    public func describeSystemVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSystemVulListResponse> {
        self.describeSystemVulList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询系统漏洞列表
    @inlinable
    public func describeSystemVulList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSystemVulListResponse {
        try await self.describeSystemVulList(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询系统漏洞列表
    @inlinable
    public func describeSystemVulListPaginated(_ input: DescribeSystemVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VulInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeSystemVulList, logger: logger, on: eventLoop)
    }

    /// 查询系统漏洞列表
    @inlinable @discardableResult
    public func describeSystemVulListPaginated(_ input: DescribeSystemVulListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSystemVulListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSystemVulList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询系统漏洞列表
    ///
    /// - Returns: `AsyncSequence`s of `VulInfo` and `DescribeSystemVulListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSystemVulListPaginator(_ input: DescribeSystemVulListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSystemVulListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSystemVulList, logger: logger, on: eventLoop)
    }
}
