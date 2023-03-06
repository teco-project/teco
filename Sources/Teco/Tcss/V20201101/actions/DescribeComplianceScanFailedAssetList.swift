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
    /// DescribeComplianceScanFailedAssetList请求参数结构体
    public struct DescribeComplianceScanFailedAssetListRequest: TCPaginatedRequest {
        /// 资产类型列表。
        /// ASSET_CONTAINER, 容器
        /// ASSET_IMAGE, 镜像
        /// ASSET_HOST, 主机
        /// ASSET_K8S, K8S资产
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
        public func getNextPaginatedRequest(with response: DescribeComplianceScanFailedAssetListResponse) -> DescribeComplianceScanFailedAssetListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeComplianceScanFailedAssetListRequest(assetTypeSet: self.assetTypeSet, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeComplianceScanFailedAssetList返回参数结构体
    public struct DescribeComplianceScanFailedAssetListResponse: TCPaginatedResponse {
        /// 返回检测失败的资产的总数。
        public let totalCount: UInt64

        /// 返回各类检测失败的资产的汇总信息的列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scanFailedAssetList: [ComplianceScanFailedAsset]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case scanFailedAssetList = "ScanFailedAssetList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ComplianceScanFailedAsset] {
            self.scanFailedAssetList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 安全合规查询上次检测失败的资产的列表
    ///
    /// 按照 资产 → 检测项 二层结构展示的信息。这里查询第一层 资产的通过率汇总信息。
    @inlinable
    public func describeComplianceScanFailedAssetList(_ input: DescribeComplianceScanFailedAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceScanFailedAssetListResponse> {
        self.client.execute(action: "DescribeComplianceScanFailedAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次检测失败的资产的列表
    ///
    /// 按照 资产 → 检测项 二层结构展示的信息。这里查询第一层 资产的通过率汇总信息。
    @inlinable
    public func describeComplianceScanFailedAssetList(_ input: DescribeComplianceScanFailedAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceScanFailedAssetListResponse {
        try await self.client.execute(action: "DescribeComplianceScanFailedAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询上次检测失败的资产的列表
    ///
    /// 按照 资产 → 检测项 二层结构展示的信息。这里查询第一层 资产的通过率汇总信息。
    @inlinable
    public func describeComplianceScanFailedAssetList(assetTypeSet: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeComplianceScanFailedAssetListResponse> {
        let input = DescribeComplianceScanFailedAssetListRequest(assetTypeSet: assetTypeSet, offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribeComplianceScanFailedAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次检测失败的资产的列表
    ///
    /// 按照 资产 → 检测项 二层结构展示的信息。这里查询第一层 资产的通过率汇总信息。
    @inlinable
    public func describeComplianceScanFailedAssetList(assetTypeSet: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, filters: [ComplianceFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComplianceScanFailedAssetListResponse {
        let input = DescribeComplianceScanFailedAssetListRequest(assetTypeSet: assetTypeSet, offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribeComplianceScanFailedAssetList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询上次检测失败的资产的列表
    ///
    /// 按照 资产 → 检测项 二层结构展示的信息。这里查询第一层 资产的通过率汇总信息。
    @inlinable
    public func describeComplianceScanFailedAssetListPaginated(_ input: DescribeComplianceScanFailedAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ComplianceScanFailedAsset])> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceScanFailedAssetList, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次检测失败的资产的列表
    ///
    /// 按照 资产 → 检测项 二层结构展示的信息。这里查询第一层 资产的通过率汇总信息。
    @inlinable @discardableResult
    public func describeComplianceScanFailedAssetListPaginated(_ input: DescribeComplianceScanFailedAssetListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeComplianceScanFailedAssetListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeComplianceScanFailedAssetList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 安全合规查询上次检测失败的资产的列表
    ///
    /// 按照 资产 → 检测项 二层结构展示的信息。这里查询第一层 资产的通过率汇总信息。
    @inlinable
    public func describeComplianceScanFailedAssetListPaginator(_ input: DescribeComplianceScanFailedAssetListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeComplianceScanFailedAssetListRequest, DescribeComplianceScanFailedAssetListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeComplianceScanFailedAssetListRequest, DescribeComplianceScanFailedAssetListResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeComplianceScanFailedAssetList, logger: logger, on: eventLoop)
    }
}
