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

extension Dsgc {
    /// DescribeDSPAESDataAssetDetail请求参数结构体
    public struct DescribeDSPAESDataAssetDetailRequest: TCPaginatedRequest {
        /// dspa实例id
        public let dspaId: String

        /// 合规组id
        public let complianceId: Int64

        /// 偏移量
        public let offset: Int64

        /// 限制条目数
        public let limit: Int64

        /// 过滤条件
        public let filters: [Filter]?

        public init(dspaId: String, complianceId: Int64, offset: Int64, limit: Int64, filters: [Filter]? = nil) {
            self.dspaId = dspaId
            self.complianceId = complianceId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case complianceId = "ComplianceId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDSPAESDataAssetDetailResponse) -> DescribeDSPAESDataAssetDetailRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(dspaId: self.dspaId, complianceId: self.complianceId, offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeDSPAESDataAssetDetail返回参数结构体
    public struct DescribeDSPAESDataAssetDetailResponse: TCPaginatedResponse {
        /// 总的个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 概览详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let details: [ESDataAssetDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case details = "Details"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ESDataAssetDetail`` list from the paginated response.
        public func getItems() -> [ESDataAssetDetail] {
            self.details ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询ES的资产概览统计列表数据
    ///
    /// 根据合规组id，去查询ES的概览页下的统计列表数据
    @inlinable
    public func describeDSPAESDataAssetDetail(_ input: DescribeDSPAESDataAssetDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAESDataAssetDetailResponse> {
        self.client.execute(action: "DescribeDSPAESDataAssetDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询ES的资产概览统计列表数据
    ///
    /// 根据合规组id，去查询ES的概览页下的统计列表数据
    @inlinable
    public func describeDSPAESDataAssetDetail(_ input: DescribeDSPAESDataAssetDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAESDataAssetDetailResponse {
        try await self.client.execute(action: "DescribeDSPAESDataAssetDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询ES的资产概览统计列表数据
    ///
    /// 根据合规组id，去查询ES的概览页下的统计列表数据
    @inlinable
    public func describeDSPAESDataAssetDetail(dspaId: String, complianceId: Int64, offset: Int64, limit: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAESDataAssetDetailResponse> {
        self.describeDSPAESDataAssetDetail(.init(dspaId: dspaId, complianceId: complianceId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询ES的资产概览统计列表数据
    ///
    /// 根据合规组id，去查询ES的概览页下的统计列表数据
    @inlinable
    public func describeDSPAESDataAssetDetail(dspaId: String, complianceId: Int64, offset: Int64, limit: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAESDataAssetDetailResponse {
        try await self.describeDSPAESDataAssetDetail(.init(dspaId: dspaId, complianceId: complianceId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询ES的资产概览统计列表数据
    ///
    /// 根据合规组id，去查询ES的概览页下的统计列表数据
    @inlinable
    public func describeDSPAESDataAssetDetailPaginated(_ input: DescribeDSPAESDataAssetDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ESDataAssetDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeDSPAESDataAssetDetail, logger: logger, on: eventLoop)
    }

    /// 查询ES的资产概览统计列表数据
    ///
    /// 根据合规组id，去查询ES的概览页下的统计列表数据
    @inlinable @discardableResult
    public func describeDSPAESDataAssetDetailPaginated(_ input: DescribeDSPAESDataAssetDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDSPAESDataAssetDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDSPAESDataAssetDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询ES的资产概览统计列表数据
    ///
    /// 根据合规组id，去查询ES的概览页下的统计列表数据
    ///
    /// - Returns: `AsyncSequence`s of ``ESDataAssetDetail`` and ``DescribeDSPAESDataAssetDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDSPAESDataAssetDetailPaginator(_ input: DescribeDSPAESDataAssetDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDSPAESDataAssetDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDSPAESDataAssetDetail, logger: logger, on: eventLoop)
    }
}
