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
    /// CreateCodeBatch请求参数结构体
    public struct CreateCodeBatchRequest: TCRequest {
        /// 企业ID
        public let corpId: UInt64?

        /// 商户ID
        public let merchantId: String?

        /// 产品ID
        public let productId: String?

        /// 批次类型 0:溯源 1:营销
        public let batchType: UInt64?

        /// 批次ID，留空时系统自动生成
        public let batchId: String?

        /// 备注
        public let remark: String?

        /// 模版ID，或者活动ID
        public let mpTpl: String?

        /// 克隆批次ID，同时会复制溯源信息
        public let cloneId: String?

        /// 批次编号，业务字段不判断唯一性
        public let batchCode: String?

        /// 有效期
        public let validDate: String?

        /// 生产日期
        public let productionDate: String?

        public init(corpId: UInt64? = nil, merchantId: String? = nil, productId: String? = nil, batchType: UInt64? = nil, batchId: String? = nil, remark: String? = nil, mpTpl: String? = nil, cloneId: String? = nil, batchCode: String? = nil, validDate: String? = nil, productionDate: String? = nil) {
            self.corpId = corpId
            self.merchantId = merchantId
            self.productId = productId
            self.batchType = batchType
            self.batchId = batchId
            self.remark = remark
            self.mpTpl = mpTpl
            self.cloneId = cloneId
            self.batchCode = batchCode
            self.validDate = validDate
            self.productionDate = productionDate
        }

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case merchantId = "MerchantId"
            case productId = "ProductId"
            case batchType = "BatchType"
            case batchId = "BatchId"
            case remark = "Remark"
            case mpTpl = "MpTpl"
            case cloneId = "CloneId"
            case batchCode = "BatchCode"
            case validDate = "ValidDate"
            case productionDate = "ProductionDate"
        }
    }

    /// CreateCodeBatch返回参数结构体
    public struct CreateCodeBatchResponse: TCResponse {
        /// 批次ID
        public let batchId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case requestId = "RequestId"
        }
    }

    /// 新增批次
    @inlinable
    public func createCodeBatch(_ input: CreateCodeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCodeBatchResponse> {
        self.client.execute(action: "CreateCodeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增批次
    @inlinable
    public func createCodeBatch(_ input: CreateCodeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCodeBatchResponse {
        try await self.client.execute(action: "CreateCodeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增批次
    @inlinable
    public func createCodeBatch(corpId: UInt64? = nil, merchantId: String? = nil, productId: String? = nil, batchType: UInt64? = nil, batchId: String? = nil, remark: String? = nil, mpTpl: String? = nil, cloneId: String? = nil, batchCode: String? = nil, validDate: String? = nil, productionDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCodeBatchResponse> {
        self.createCodeBatch(.init(corpId: corpId, merchantId: merchantId, productId: productId, batchType: batchType, batchId: batchId, remark: remark, mpTpl: mpTpl, cloneId: cloneId, batchCode: batchCode, validDate: validDate, productionDate: productionDate), region: region, logger: logger, on: eventLoop)
    }

    /// 新增批次
    @inlinable
    public func createCodeBatch(corpId: UInt64? = nil, merchantId: String? = nil, productId: String? = nil, batchType: UInt64? = nil, batchId: String? = nil, remark: String? = nil, mpTpl: String? = nil, cloneId: String? = nil, batchCode: String? = nil, validDate: String? = nil, productionDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCodeBatchResponse {
        try await self.createCodeBatch(.init(corpId: corpId, merchantId: merchantId, productId: productId, batchType: batchType, batchId: batchId, remark: remark, mpTpl: mpTpl, cloneId: cloneId, batchCode: batchCode, validDate: validDate, productionDate: productionDate), region: region, logger: logger, on: eventLoop)
    }
}
