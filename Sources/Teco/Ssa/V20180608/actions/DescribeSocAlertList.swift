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

extension Ssa {
    /// DescribeSocAlertList请求参数结构体
    public struct DescribeSocAlertListRequest: TCPaginatedRequest {
        /// 页大小
        public let pageSize: Int64

        /// 页码
        public let pageIndex: Int64

        /// 1:急需关注 2.重保监控 3.全量告警
        public let scenes: Int64

        /// 查询参数
        public let filter: [QueryFilter]?

        /// 排序参数
        public let sorter: [QuerySort]?

        /// 是否导出
        public let exportFlag: Bool?

        public init(pageSize: Int64, pageIndex: Int64, scenes: Int64, filter: [QueryFilter]? = nil, sorter: [QuerySort]? = nil, exportFlag: Bool? = nil) {
            self.pageSize = pageSize
            self.pageIndex = pageIndex
            self.scenes = scenes
            self.filter = filter
            self.sorter = sorter
            self.exportFlag = exportFlag
        }

        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageIndex = "PageIndex"
            case scenes = "Scenes"
            case filter = "Filter"
            case sorter = "Sorter"
            case exportFlag = "ExportFlag"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSocAlertListResponse) -> DescribeSocAlertListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeSocAlertListRequest(pageSize: self.pageSize, pageIndex: self.pageIndex + 1, scenes: self.scenes, filter: self.filter, sorter: self.sorter, exportFlag: self.exportFlag)
        }
    }

    /// DescribeSocAlertList返回参数结构体
    public struct DescribeSocAlertListResponse: TCPaginatedResponse {
        /// 业务数据
        public let data: AlertListData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AlertType] {
            self.data.alertList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.total
        }
    }

    /// 告警列表
    ///
    /// 拉取告警列表
    @inlinable
    public func describeSocAlertList(_ input: DescribeSocAlertListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSocAlertListResponse> {
        self.client.execute(action: "DescribeSocAlertList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 告警列表
    ///
    /// 拉取告警列表
    @inlinable
    public func describeSocAlertList(_ input: DescribeSocAlertListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSocAlertListResponse {
        try await self.client.execute(action: "DescribeSocAlertList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 告警列表
    ///
    /// 拉取告警列表
    @inlinable
    public func describeSocAlertList(pageSize: Int64, pageIndex: Int64, scenes: Int64, filter: [QueryFilter]? = nil, sorter: [QuerySort]? = nil, exportFlag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSocAlertListResponse> {
        self.describeSocAlertList(.init(pageSize: pageSize, pageIndex: pageIndex, scenes: scenes, filter: filter, sorter: sorter, exportFlag: exportFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 告警列表
    ///
    /// 拉取告警列表
    @inlinable
    public func describeSocAlertList(pageSize: Int64, pageIndex: Int64, scenes: Int64, filter: [QueryFilter]? = nil, sorter: [QuerySort]? = nil, exportFlag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSocAlertListResponse {
        try await self.describeSocAlertList(.init(pageSize: pageSize, pageIndex: pageIndex, scenes: scenes, filter: filter, sorter: sorter, exportFlag: exportFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 告警列表
    ///
    /// 拉取告警列表
    @inlinable
    public func describeSocAlertListPaginated(_ input: DescribeSocAlertListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AlertType])> {
        self.client.paginate(input: input, region: region, command: self.describeSocAlertList, logger: logger, on: eventLoop)
    }

    /// 告警列表
    ///
    /// 拉取告警列表
    @inlinable @discardableResult
    public func describeSocAlertListPaginated(_ input: DescribeSocAlertListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSocAlertListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSocAlertList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 告警列表
    ///
    /// 拉取告警列表
    ///
    /// - Returns: `AsyncSequence`s of `AlertType` and `DescribeSocAlertListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSocAlertListPaginator(_ input: DescribeSocAlertListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSocAlertListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSocAlertList, logger: logger, on: eventLoop)
    }
}
