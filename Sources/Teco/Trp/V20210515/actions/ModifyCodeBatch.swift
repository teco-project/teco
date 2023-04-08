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
    /// ModifyCodeBatch请求参数结构体
    public struct ModifyCodeBatchRequest: TCRequestModel {
        /// 批次ID
        public let batchId: String

        /// 企业ID
        public let corpId: UInt64?

        /// 状态 0: 未激活 1: 已激活 -1: 已冻结
        public let status: Int64?

        /// 模板ID，或者活动ID
        public let mpTpl: String?

        /// 商户ID
        public let merchantId: String?

        /// 商品ID
        public let productId: String?

        /// 备注
        public let remark: String?

        /// 批次编码，业务字段不判断唯一性
        public let batchCode: String?

        public init(batchId: String, corpId: UInt64? = nil, status: Int64? = nil, mpTpl: String? = nil, merchantId: String? = nil, productId: String? = nil, remark: String? = nil, batchCode: String? = nil) {
            self.batchId = batchId
            self.corpId = corpId
            self.status = status
            self.mpTpl = mpTpl
            self.merchantId = merchantId
            self.productId = productId
            self.remark = remark
            self.batchCode = batchCode
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case corpId = "CorpId"
            case status = "Status"
            case mpTpl = "MpTpl"
            case merchantId = "MerchantId"
            case productId = "ProductId"
            case remark = "Remark"
            case batchCode = "BatchCode"
        }
    }

    /// ModifyCodeBatch返回参数结构体
    public struct ModifyCodeBatchResponse: TCResponseModel {
        /// 批次ID
        public let batchId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case requestId = "RequestId"
        }
    }

    /// 修改批次
    @inlinable
    public func modifyCodeBatch(_ input: ModifyCodeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCodeBatchResponse> {
        self.client.execute(action: "ModifyCodeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改批次
    @inlinable
    public func modifyCodeBatch(_ input: ModifyCodeBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCodeBatchResponse {
        try await self.client.execute(action: "ModifyCodeBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改批次
    @inlinable
    public func modifyCodeBatch(batchId: String, corpId: UInt64? = nil, status: Int64? = nil, mpTpl: String? = nil, merchantId: String? = nil, productId: String? = nil, remark: String? = nil, batchCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCodeBatchResponse> {
        self.modifyCodeBatch(.init(batchId: batchId, corpId: corpId, status: status, mpTpl: mpTpl, merchantId: merchantId, productId: productId, remark: remark, batchCode: batchCode), region: region, logger: logger, on: eventLoop)
    }

    /// 修改批次
    @inlinable
    public func modifyCodeBatch(batchId: String, corpId: UInt64? = nil, status: Int64? = nil, mpTpl: String? = nil, merchantId: String? = nil, productId: String? = nil, remark: String? = nil, batchCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCodeBatchResponse {
        try await self.modifyCodeBatch(.init(batchId: batchId, corpId: corpId, status: status, mpTpl: mpTpl, merchantId: merchantId, productId: productId, remark: remark, batchCode: batchCode), region: region, logger: logger, on: eventLoop)
    }
}
