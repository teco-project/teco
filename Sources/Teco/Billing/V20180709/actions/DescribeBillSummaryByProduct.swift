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

extension Billing {
    /// 获取产品汇总费用分布
    @inlinable
    public func describeBillSummaryByProduct(_ input: DescribeBillSummaryByProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBillSummaryByProductResponse > {
        self.client.execute(action: "DescribeBillSummaryByProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取产品汇总费用分布
    @inlinable
    public func describeBillSummaryByProduct(_ input: DescribeBillSummaryByProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillSummaryByProductResponse {
        try await self.client.execute(action: "DescribeBillSummaryByProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBillSummaryByProduct请求参数结构体
    public struct DescribeBillSummaryByProductRequest: TCRequestModel {
        /// 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        public let beginTime: String
        
        /// 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        public let endTime: String
        
        /// 查询账单数据的用户UIN
        public let payerUin: String?
        
        /// 款项类别，与L0账单上的汇总类别对应。
        /// 此参数自账单3.0（即2021-05）之后开始生效。
        /// 枚举值：
        /// consume-消费
        /// refund-退款
        /// adjustment-调账
        public let payType: String?
        
        public init (beginTime: String, endTime: String, payerUin: String?, payType: String?) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.payerUin = payerUin
            self.payType = payType
        }
        
        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case payerUin = "PayerUin"
            case payType = "PayType"
        }
    }
    
    /// DescribeBillSummaryByProduct返回参数结构体
    public struct DescribeBillSummaryByProductResponse: TCResponseModel {
        /// 数据是否准备好，0未准备好，1准备好
        public let ready: UInt64
        
        /// 总花费详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let summaryTotal: BusinessSummaryTotal
        
        /// 各产品花费分布
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let summaryOverview: [BusinessSummaryOverviewItem]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case ready = "Ready"
            case summaryTotal = "SummaryTotal"
            case summaryOverview = "SummaryOverview"
            case requestId = "RequestId"
        }
    }
}
