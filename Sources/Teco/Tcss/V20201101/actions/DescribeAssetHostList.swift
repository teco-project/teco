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
    /// DescribeAssetHostList请求参数结构体
    public struct DescribeAssetHostListRequest: TCPaginatedRequest {
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Status - String - 是否必填：否 - agent状态筛选，"ALL":"全部"(或不传该字段),"UNINSTALL"："未安装","OFFLINE"："离线", "ONLINE"："防护中"</li>
        /// <li>HostName - String - 是否必填：否 - 主机名筛选</li>
        /// <li>Group- String - 是否必填：否 - 主机群组搜索</li>
        /// <li>HostIP- string - 是否必填：否 - 主机ip搜索</li>
        /// <li>HostID- string - 是否必填：否 - 主机id搜索</li>
        /// <li>DockerVersion- string - 是否必填：否 - docker版本搜索</li>
        /// <li>MachineType- string - 是否必填：否 - 主机来源MachineType搜索，"ALL":"全部"(或不传该字段),主机来源：["CVM", "ECM", "LH", "BM"]  中的之一为腾讯云服务器；["Other"]之一非腾讯云服务器；</li>
        /// <li>DockerStatus- string - 是否必填：否 - docker安装状态，"ALL":"全部"(或不传该字段),"INSTALL":"已安装","UNINSTALL":"未安装"</li>
        /// <li>ProjectID- string - 是否必填：否 - 所属项目id搜索</li>
        /// <li>Tag:xxx(tag:key)- string- 是否必填：否 - 标签键值搜索 示例Filters":[{"Name":"tag:tke-kind","Values":["service"]}]</li>
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
        public func getNextPaginatedRequest(with response: DescribeAssetHostListResponse) -> DescribeAssetHostListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAssetHostListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, by: self.by, order: self.order)
        }
    }

    /// DescribeAssetHostList返回参数结构体
    public struct DescribeAssetHostListResponse: TCPaginatedResponse {
        /// 主机列表
        public let list: [HostInfo]

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
        public func getItems() -> [HostInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询主机列表
    ///
    /// 容器安全搜索查询主机列表
    @inlinable
    public func describeAssetHostList(_ input: DescribeAssetHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetHostListResponse> {
        self.client.execute(action: "DescribeAssetHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 容器安全搜索查询主机列表
    @inlinable
    public func describeAssetHostList(_ input: DescribeAssetHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetHostListResponse {
        try await self.client.execute(action: "DescribeAssetHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主机列表
    ///
    /// 容器安全搜索查询主机列表
    @inlinable
    public func describeAssetHostList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetHostListResponse> {
        let input = DescribeAssetHostListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order)
        return self.client.execute(action: "DescribeAssetHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 容器安全搜索查询主机列表
    @inlinable
    public func describeAssetHostList(limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetHostListResponse {
        let input = DescribeAssetHostListRequest(limit: limit, offset: offset, filters: filters, by: by, order: order)
        return try await self.client.execute(action: "DescribeAssetHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主机列表
    ///
    /// 容器安全搜索查询主机列表
    @inlinable
    public func describeAssetHostListPaginated(_ input: DescribeAssetHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [HostInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeAssetHostList, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 容器安全搜索查询主机列表
    @inlinable @discardableResult
    public func describeAssetHostListPaginated(_ input: DescribeAssetHostListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAssetHostListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAssetHostList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 容器安全搜索查询主机列表
    @inlinable
    public func describeAssetHostListPaginator(_ input: DescribeAssetHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAssetHostListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAssetHostList, logger: logger, on: eventLoop)
    }
}
