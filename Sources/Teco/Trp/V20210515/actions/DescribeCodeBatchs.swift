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

extension Trp {
    /// DescribeCodeBatchs请求参数结构体
    public struct DescribeCodeBatchsRequest: TCPaginatedRequest {
        /// 查询商户ID
        public let merchantId: String?

        /// 查询商品ID
        public let productId: String?

        /// 查询关键字
        public let keyword: String?

        /// 条数
        public let pageSize: Int64?

        /// 页数
        public let pageNumber: Int64?

        /// 批次类型 0:溯源 1:营销
        public let batchType: String?

        /// 企业ID
        public let corpId: UInt64?

        public init(merchantId: String? = nil, productId: String? = nil, keyword: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, batchType: String? = nil, corpId: UInt64? = nil) {
            self.merchantId = merchantId
            self.productId = productId
            self.keyword = keyword
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.batchType = batchType
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case productId = "ProductId"
            case keyword = "Keyword"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case batchType = "BatchType"
            case corpId = "CorpId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCodeBatchsResponse) -> DescribeCodeBatchsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCodeBatchsRequest(merchantId: self.merchantId, productId: self.productId, keyword: self.keyword, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, batchType: self.batchType, corpId: self.corpId)
        }
    }

    /// DescribeCodeBatchs返回参数结构体
    public struct DescribeCodeBatchsResponse: TCPaginatedResponse {
        /// 批次列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeBatchs: [CodeBatch]?

        /// 总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case codeBatchs = "CodeBatchs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CodeBatch] {
            self.codeBatchs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询批次列表
    @inlinable
    public func describeCodeBatchs(_ input: DescribeCodeBatchsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeBatchsResponse> {
        self.client.execute(action: "DescribeCodeBatchs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询批次列表
    @inlinable
    public func describeCodeBatchs(_ input: DescribeCodeBatchsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeBatchsResponse {
        try await self.client.execute(action: "DescribeCodeBatchs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询批次列表
    @inlinable
    public func describeCodeBatchs(merchantId: String? = nil, productId: String? = nil, keyword: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, batchType: String? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeBatchsResponse> {
        self.describeCodeBatchs(.init(merchantId: merchantId, productId: productId, keyword: keyword, pageSize: pageSize, pageNumber: pageNumber, batchType: batchType, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询批次列表
    @inlinable
    public func describeCodeBatchs(merchantId: String? = nil, productId: String? = nil, keyword: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, batchType: String? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeBatchsResponse {
        try await self.describeCodeBatchs(.init(merchantId: merchantId, productId: productId, keyword: keyword, pageSize: pageSize, pageNumber: pageNumber, batchType: batchType, corpId: corpId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询批次列表
    @inlinable
    public func describeCodeBatchsPaginated(_ input: DescribeCodeBatchsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CodeBatch])> {
        self.client.paginate(input: input, region: region, command: self.describeCodeBatchs, logger: logger, on: eventLoop)
    }

    /// 查询批次列表
    @inlinable @discardableResult
    public func describeCodeBatchsPaginated(_ input: DescribeCodeBatchsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCodeBatchsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCodeBatchs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询批次列表
    ///
    /// - Returns: `AsyncSequence`s of `CodeBatch` and `DescribeCodeBatchsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCodeBatchsPaginator(_ input: DescribeCodeBatchsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCodeBatchsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCodeBatchs, logger: logger, on: eventLoop)
    }
}
