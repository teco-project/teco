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

extension Cpdp {
    /// ApplyApplicationMaterial请求参数结构体
    public struct ApplyApplicationMaterialRequest: TCRequestModel {
        /// 对接方汇出指令编号
        public let transactionId: String

        /// 申报流水号
        public let declareId: String

        /// 付款人ID
        public let payerId: String

        /// 源币种
        public let sourceCurrency: String

        /// 目的币种
        public let targetCurrency: String

        /// 贸易编码
        public let tradeCode: String

        /// 原申报流水号
        public let originalDeclareId: String?

        /// 源金额
        public let sourceAmount: Int64?

        /// 目的金额
        public let targetAmount: Int64?

        /// 接入环境。沙箱环境填sandbox
        public let profile: String?

        public init(transactionId: String, declareId: String, payerId: String, sourceCurrency: String, targetCurrency: String, tradeCode: String, originalDeclareId: String? = nil, sourceAmount: Int64? = nil, targetAmount: Int64? = nil, profile: String? = nil) {
            self.transactionId = transactionId
            self.declareId = declareId
            self.payerId = payerId
            self.sourceCurrency = sourceCurrency
            self.targetCurrency = targetCurrency
            self.tradeCode = tradeCode
            self.originalDeclareId = originalDeclareId
            self.sourceAmount = sourceAmount
            self.targetAmount = targetAmount
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case transactionId = "TransactionId"
            case declareId = "DeclareId"
            case payerId = "PayerId"
            case sourceCurrency = "SourceCurrency"
            case targetCurrency = "TargetCurrency"
            case tradeCode = "TradeCode"
            case originalDeclareId = "OriginalDeclareId"
            case sourceAmount = "SourceAmount"
            case targetAmount = "TargetAmount"
            case profile = "Profile"
        }
    }

    /// ApplyApplicationMaterial返回参数结构体
    public struct ApplyApplicationMaterialResponse: TCResponseModel {
        /// 提交申报材料结果
        public let result: ApplyDeclareResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 跨境-提交申报材料
    ///
    /// 跨境-提交申报材料。申报材料的主体是付款人，需要提前调用【跨境-付款人申请】接口提交付款人信息且审核通过后调用。
    @inlinable
    public func applyApplicationMaterial(_ input: ApplyApplicationMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyApplicationMaterialResponse> {
        self.client.execute(action: "ApplyApplicationMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跨境-提交申报材料
    ///
    /// 跨境-提交申报材料。申报材料的主体是付款人，需要提前调用【跨境-付款人申请】接口提交付款人信息且审核通过后调用。
    @inlinable
    public func applyApplicationMaterial(_ input: ApplyApplicationMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyApplicationMaterialResponse {
        try await self.client.execute(action: "ApplyApplicationMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跨境-提交申报材料
    ///
    /// 跨境-提交申报材料。申报材料的主体是付款人，需要提前调用【跨境-付款人申请】接口提交付款人信息且审核通过后调用。
    @inlinable
    public func applyApplicationMaterial(transactionId: String, declareId: String, payerId: String, sourceCurrency: String, targetCurrency: String, tradeCode: String, originalDeclareId: String? = nil, sourceAmount: Int64? = nil, targetAmount: Int64? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyApplicationMaterialResponse> {
        self.applyApplicationMaterial(.init(transactionId: transactionId, declareId: declareId, payerId: payerId, sourceCurrency: sourceCurrency, targetCurrency: targetCurrency, tradeCode: tradeCode, originalDeclareId: originalDeclareId, sourceAmount: sourceAmount, targetAmount: targetAmount, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 跨境-提交申报材料
    ///
    /// 跨境-提交申报材料。申报材料的主体是付款人，需要提前调用【跨境-付款人申请】接口提交付款人信息且审核通过后调用。
    @inlinable
    public func applyApplicationMaterial(transactionId: String, declareId: String, payerId: String, sourceCurrency: String, targetCurrency: String, tradeCode: String, originalDeclareId: String? = nil, sourceAmount: Int64? = nil, targetAmount: Int64? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyApplicationMaterialResponse {
        try await self.applyApplicationMaterial(.init(transactionId: transactionId, declareId: declareId, payerId: payerId, sourceCurrency: sourceCurrency, targetCurrency: targetCurrency, tradeCode: tradeCode, originalDeclareId: originalDeclareId, sourceAmount: sourceAmount, targetAmount: targetAmount, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
