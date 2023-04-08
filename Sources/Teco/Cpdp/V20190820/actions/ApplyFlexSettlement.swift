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

import TecoCore

extension Cpdp {
    /// ApplyFlexSettlement请求参数结构体
    public struct ApplyFlexSettlementRequest: TCRequestModel {
        /// 收款用户ID
        public let payeeId: String

        /// 收入类型
        /// LABOR:劳务所得
        /// OCCASION:偶然所得
        public let incomeType: String

        /// 税前金额
        public let amountBeforeTax: String

        /// 外部订单ID
        public let outOrderId: String

        /// 备注
        public let remark: String

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?

        public init(payeeId: String, incomeType: String, amountBeforeTax: String, outOrderId: String, remark: String, environment: String? = nil) {
            self.payeeId = payeeId
            self.incomeType = incomeType
            self.amountBeforeTax = amountBeforeTax
            self.outOrderId = outOrderId
            self.remark = remark
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case payeeId = "PayeeId"
            case incomeType = "IncomeType"
            case amountBeforeTax = "AmountBeforeTax"
            case outOrderId = "OutOrderId"
            case remark = "Remark"
            case environment = "Environment"
        }
    }

    /// ApplyFlexSettlement返回参数结构体
    public struct ApplyFlexSettlementResponse: TCResponseModel {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApplyFlexSettlementResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-结算
    @inlinable
    public func applyFlexSettlement(_ input: ApplyFlexSettlementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyFlexSettlementResponse> {
        self.client.execute(action: "ApplyFlexSettlement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-结算
    @inlinable
    public func applyFlexSettlement(_ input: ApplyFlexSettlementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyFlexSettlementResponse {
        try await self.client.execute(action: "ApplyFlexSettlement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-结算
    @inlinable
    public func applyFlexSettlement(payeeId: String, incomeType: String, amountBeforeTax: String, outOrderId: String, remark: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyFlexSettlementResponse> {
        self.applyFlexSettlement(.init(payeeId: payeeId, incomeType: incomeType, amountBeforeTax: amountBeforeTax, outOrderId: outOrderId, remark: remark, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-结算
    @inlinable
    public func applyFlexSettlement(payeeId: String, incomeType: String, amountBeforeTax: String, outOrderId: String, remark: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyFlexSettlementResponse {
        try await self.applyFlexSettlement(.init(payeeId: payeeId, incomeType: incomeType, amountBeforeTax: amountBeforeTax, outOrderId: outOrderId, remark: remark, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
