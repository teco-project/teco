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

extension Bma {
    /// DescribeCRMonitors请求参数结构体
    public struct DescribeCRMonitorsRequest: TCPaginatedRequest {
        /// 过滤条件
        public let filters: [Filter]?

        /// 页数
        public let pageSize: Int64?

        /// 页码
        public let pageNumber: Int64?

        public init(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil) {
            self.filters = filters
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCRMonitorsResponse) -> DescribeCRMonitorsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCRMonitorsRequest(filters: self.filters, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1)
        }
    }

    /// DescribeCRMonitors返回参数结构体
    public struct DescribeCRMonitorsResponse: TCPaginatedResponse {
        /// 监测结果
        public let monitors: [Monitor]

        /// 记录总条数
        public let totalCount: Int64

        /// 导出地址
        public let exportURL: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case monitors = "Monitors"
            case totalCount = "TotalCount"
            case exportURL = "ExportURL"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Monitor] {
            self.monitors
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询监测列表
    ///
    /// 版权保护-查询监测列表接口
    @inlinable
    public func describeCRMonitors(_ input: DescribeCRMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCRMonitorsResponse> {
        self.client.execute(action: "DescribeCRMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询监测列表
    ///
    /// 版权保护-查询监测列表接口
    @inlinable
    public func describeCRMonitors(_ input: DescribeCRMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCRMonitorsResponse {
        try await self.client.execute(action: "DescribeCRMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询监测列表
    ///
    /// 版权保护-查询监测列表接口
    @inlinable
    public func describeCRMonitors(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCRMonitorsResponse> {
        let input = DescribeCRMonitorsRequest(filters: filters, pageSize: pageSize, pageNumber: pageNumber)
        return self.client.execute(action: "DescribeCRMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询监测列表
    ///
    /// 版权保护-查询监测列表接口
    @inlinable
    public func describeCRMonitors(filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCRMonitorsResponse {
        let input = DescribeCRMonitorsRequest(filters: filters, pageSize: pageSize, pageNumber: pageNumber)
        return try await self.client.execute(action: "DescribeCRMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询监测列表
    ///
    /// 版权保护-查询监测列表接口
    @inlinable
    public func describeCRMonitorsPaginated(_ input: DescribeCRMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Monitor])> {
        self.client.paginate(input: input, region: region, command: self.describeCRMonitors, logger: logger, on: eventLoop)
    }

    /// 查询监测列表
    ///
    /// 版权保护-查询监测列表接口
    @inlinable @discardableResult
    public func describeCRMonitorsPaginated(_ input: DescribeCRMonitorsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCRMonitorsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCRMonitors, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询监测列表
    ///
    /// 版权保护-查询监测列表接口
    ///
    /// - Returns: `AsyncSequence`s of `Monitor` and `DescribeCRMonitorsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCRMonitorsPaginator(_ input: DescribeCRMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCRMonitorsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCRMonitors, logger: logger, on: eventLoop)
    }
}
