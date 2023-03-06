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

extension Ssa {
    /// DescribeComplianceAssetList请求参数结构体
    public struct DescribeComplianceAssetListRequest: TCPaginatedRequest {
        /// 页码
        public let offset: Int64

        /// 每页数量
        public let limit: Int64

        /// 检查项uuid
        public let id: String

        /// 过滤条件
        public let filter: [Filter]?

        /// 查询条件
        public let search: [Filter]?

        public init(offset: Int64, limit: Int64, id: String, filter: [Filter]? = nil, search: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.id = id
            self.filter = filter
            self.search = search
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case id = "Id"
            case filter = "Filter"
            case search = "Search"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeComplianceAssetListResponse) -> DescribeComplianceAssetListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeComplianceAssetListRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, id: self.id, filter: self.filter, search: self.search)
        }
    }

    /// DescribeComplianceAssetList返回参数结构体
    public struct DescribeComplianceAssetListResponse: TCPaginatedResponse {
        /// 资产组列表
        public let checkAssetsList: [CheckAssetItem]

        /// 资产组列表总数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case checkAssetsList = "CheckAssetsList"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CheckAssetItem] {
            self.checkAssetsList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 合规管理-资产列表
    @inlinable
    public func describeComplianceAssetList(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceAssetListResponse> {
        self.client.execute(action: "DescribeComplianceAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合规管理-资产列表
    @inlinable
    public func describeComplianceAssetList(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceAssetListResponse {
        try await self.client.execute(action: "DescribeComplianceAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合规管理-资产列表
    @inlinable
    public func describeComplianceAssetList(offset: Int64, limit: Int64, id: String, filter: [Filter]? = nil, search: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceAssetListResponse> {
        let input = DescribeComplianceAssetListRequest(offset: offset, limit: limit, id: id, filter: filter, search: search)
        return self.client.execute(action: "DescribeComplianceAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合规管理-资产列表
    @inlinable
    public func describeComplianceAssetList(offset: Int64, limit: Int64, id: String, filter: [Filter]? = nil, search: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceAssetListResponse {
        let input = DescribeComplianceAssetListRequest(offset: offset, limit: limit, id: id, filter: filter, search: search)
        return try await self.client.execute(action: "DescribeComplianceAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合规管理-资产列表
    @inlinable
    public func describeComplianceAssetListPaginated(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CheckAssetItem])> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceAssetList, logger: logger, on: eventLoop)
    }

    /// 合规管理-资产列表
    @inlinable @discardableResult
    public func describeComplianceAssetListPaginated(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeComplianceAssetListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceAssetList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 合规管理-资产列表
    @inlinable
    public func describeComplianceAssetListPaginator(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeComplianceAssetListRequest, DescribeComplianceAssetListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeComplianceAssetListRequest, DescribeComplianceAssetListResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeComplianceAssetList, logger: logger, on: eventLoop)
    }
}
