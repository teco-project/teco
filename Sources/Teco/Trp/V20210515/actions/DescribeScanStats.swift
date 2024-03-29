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

extension Trp {
    /// DescribeScanStats请求参数结构体
    public struct DescribeScanStatsRequest: TCPaginatedRequest {
        /// 企业ID
        public let corpId: UInt64?

        /// 分页数量
        public let pageSize: UInt64?

        /// 当前分页
        public let pageNumber: UInt64?

        /// 商户ID
        public let merchantId: String?

        /// 产品ID
        public let productId: String?

        /// 批次ID
        public let batchId: String?

        /// 安心码
        public let code: String?

        public init(corpId: UInt64? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, merchantId: String? = nil, productId: String? = nil, batchId: String? = nil, code: String? = nil) {
            self.corpId = corpId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.merchantId = merchantId
            self.productId = productId
            self.batchId = batchId
            self.code = code
        }

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case merchantId = "MerchantId"
            case productId = "ProductId"
            case batchId = "BatchId"
            case code = "Code"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScanStatsResponse) -> DescribeScanStatsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(corpId: self.corpId, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, merchantId: self.merchantId, productId: self.productId, batchId: self.batchId, code: self.code)
        }
    }

    /// DescribeScanStats返回参数结构体
    public struct DescribeScanStatsResponse: TCPaginatedResponse {
        /// 统计记录
        public let scanStats: [ScanStat]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scanStats = "ScanStats"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ScanStat`` list from the paginated response.
        public func getItems() -> [ScanStat] {
            self.scanStats
        }
    }

    /// 查询扫码统计列表
    ///
    /// 查询扫码的统计信息列表，支持按照商户ID，产品ID，批次ID，安心码筛选，筛选条件至少有一个
    /// 没有被扫过的不会返回
    @inlinable
    public func describeScanStats(_ input: DescribeScanStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanStatsResponse> {
        self.client.execute(action: "DescribeScanStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询扫码统计列表
    ///
    /// 查询扫码的统计信息列表，支持按照商户ID，产品ID，批次ID，安心码筛选，筛选条件至少有一个
    /// 没有被扫过的不会返回
    @inlinable
    public func describeScanStats(_ input: DescribeScanStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanStatsResponse {
        try await self.client.execute(action: "DescribeScanStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询扫码统计列表
    ///
    /// 查询扫码的统计信息列表，支持按照商户ID，产品ID，批次ID，安心码筛选，筛选条件至少有一个
    /// 没有被扫过的不会返回
    @inlinable
    public func describeScanStats(corpId: UInt64? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, merchantId: String? = nil, productId: String? = nil, batchId: String? = nil, code: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanStatsResponse> {
        self.describeScanStats(.init(corpId: corpId, pageSize: pageSize, pageNumber: pageNumber, merchantId: merchantId, productId: productId, batchId: batchId, code: code), region: region, logger: logger, on: eventLoop)
    }

    /// 查询扫码统计列表
    ///
    /// 查询扫码的统计信息列表，支持按照商户ID，产品ID，批次ID，安心码筛选，筛选条件至少有一个
    /// 没有被扫过的不会返回
    @inlinable
    public func describeScanStats(corpId: UInt64? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, merchantId: String? = nil, productId: String? = nil, batchId: String? = nil, code: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanStatsResponse {
        try await self.describeScanStats(.init(corpId: corpId, pageSize: pageSize, pageNumber: pageNumber, merchantId: merchantId, productId: productId, batchId: batchId, code: code), region: region, logger: logger, on: eventLoop)
    }

    /// 查询扫码统计列表
    ///
    /// 查询扫码的统计信息列表，支持按照商户ID，产品ID，批次ID，安心码筛选，筛选条件至少有一个
    /// 没有被扫过的不会返回
    @inlinable
    public func describeScanStatsPaginated(_ input: DescribeScanStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ScanStat])> {
        self.client.paginate(input: input, region: region, command: self.describeScanStats, logger: logger, on: eventLoop)
    }

    /// 查询扫码统计列表
    ///
    /// 查询扫码的统计信息列表，支持按照商户ID，产品ID，批次ID，安心码筛选，筛选条件至少有一个
    /// 没有被扫过的不会返回
    @inlinable @discardableResult
    public func describeScanStatsPaginated(_ input: DescribeScanStatsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScanStatsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScanStats, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询扫码统计列表
    ///
    /// 查询扫码的统计信息列表，支持按照商户ID，产品ID，批次ID，安心码筛选，筛选条件至少有一个
    /// 没有被扫过的不会返回
    ///
    /// - Returns: `AsyncSequence`s of ``ScanStat`` and ``DescribeScanStatsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScanStatsPaginator(_ input: DescribeScanStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScanStatsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScanStats, logger: logger, on: eventLoop)
    }
}
