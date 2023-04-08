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
    /// DescribeComplianceAssetList请求参数结构体
    public struct DescribeComplianceAssetListRequest: TCPaginatedRequest {
        /// 资产类型列表。
        public let assetTypeSet: [String]?

        /// 起始偏移量，默认为0。
        public let offset: UInt64?

        /// 返回的数据量，默认为10，最大为100。
        public let limit: UInt64?

        /// 查询过滤器
        public let filters: [ComplianceFilters]?

        public init(assetTypeSet: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil) {
            self.assetTypeSet = assetTypeSet
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case assetTypeSet = "AssetTypeSet"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeComplianceAssetListResponse) -> DescribeComplianceAssetListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeComplianceAssetListRequest(assetTypeSet: self.assetTypeSet, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeComplianceAssetList返回参数结构体
    public struct DescribeComplianceAssetListResponse: TCPaginatedResponse {
        /// 返回资产的总数。
        public let totalCount: UInt64

        /// 返回各类资产的列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let assetInfoList: [ComplianceAssetInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case assetInfoList = "AssetInfoList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ComplianceAssetInfo] {
            self.assetInfoList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 安全合规查询某类资产的列表
    ///
    /// 查询某类资产的列表
    @inlinable
    public func describeComplianceAssetList(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceAssetListResponse> {
        self.client.execute(action: "DescribeComplianceAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询某类资产的列表
    ///
    /// 查询某类资产的列表
    @inlinable
    public func describeComplianceAssetList(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceAssetListResponse {
        try await self.client.execute(action: "DescribeComplianceAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询某类资产的列表
    ///
    /// 查询某类资产的列表
    @inlinable
    public func describeComplianceAssetList(assetTypeSet: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceAssetListResponse> {
        self.describeComplianceAssetList(.init(assetTypeSet: assetTypeSet, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询某类资产的列表
    ///
    /// 查询某类资产的列表
    @inlinable
    public func describeComplianceAssetList(assetTypeSet: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceAssetListResponse {
        try await self.describeComplianceAssetList(.init(assetTypeSet: assetTypeSet, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询某类资产的列表
    ///
    /// 查询某类资产的列表
    @inlinable
    public func describeComplianceAssetListPaginated(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ComplianceAssetInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceAssetList, logger: logger, on: eventLoop)
    }

    /// 安全合规查询某类资产的列表
    ///
    /// 查询某类资产的列表
    @inlinable @discardableResult
    public func describeComplianceAssetListPaginated(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeComplianceAssetListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceAssetList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 安全合规查询某类资产的列表
    ///
    /// 查询某类资产的列表
    ///
    /// - Returns: `AsyncSequence`s of `ComplianceAssetInfo` and `DescribeComplianceAssetListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeComplianceAssetListPaginator(_ input: DescribeComplianceAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeComplianceAssetListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeComplianceAssetList, logger: logger, on: eventLoop)
    }
}
