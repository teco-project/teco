//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Trp {
    /// DescribeCodeBatchs请求参数结构体
    public struct DescribeCodeBatchsRequest: TCRequestModel {
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
    }

    /// DescribeCodeBatchs返回参数结构体
    public struct DescribeCodeBatchsResponse: TCResponseModel {
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
    }

    /// 查询批次列表
    @inlinable
    public func describeCodeBatchs(_ input: DescribeCodeBatchsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCodeBatchsResponse > {
        self.client.execute(action: "DescribeCodeBatchs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询批次列表
    @inlinable
    public func describeCodeBatchs(_ input: DescribeCodeBatchsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeBatchsResponse {
        try await self.client.execute(action: "DescribeCodeBatchs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询批次列表
    @inlinable
    public func describeCodeBatchs(merchantId: String? = nil, productId: String? = nil, keyword: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, batchType: String? = nil, corpId: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCodeBatchsResponse > {
        self.describeCodeBatchs(DescribeCodeBatchsRequest(merchantId: merchantId, productId: productId, keyword: keyword, pageSize: pageSize, pageNumber: pageNumber, batchType: batchType, corpId: corpId), logger: logger, on: eventLoop)
    }

    /// 查询批次列表
    @inlinable
    public func describeCodeBatchs(merchantId: String? = nil, productId: String? = nil, keyword: String? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil, batchType: String? = nil, corpId: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodeBatchsResponse {
        try await self.describeCodeBatchs(DescribeCodeBatchsRequest(merchantId: merchantId, productId: productId, keyword: keyword, pageSize: pageSize, pageNumber: pageNumber, batchType: batchType, corpId: corpId), logger: logger, on: eventLoop)
    }
}
