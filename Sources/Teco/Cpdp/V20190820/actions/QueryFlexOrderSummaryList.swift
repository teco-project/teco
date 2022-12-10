//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cpdp {
    /// 灵云V2-订单汇总列表查询
    ///
    /// 灵云V2-订单汇总列表查询
    @inlinable
    public func queryFlexOrderSummaryList(_ input: QueryFlexOrderSummaryListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryFlexOrderSummaryListResponse > {
        self.client.execute(action: "QueryFlexOrderSummaryList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 灵云V2-订单汇总列表查询
    ///
    /// 灵云V2-订单汇总列表查询
    @inlinable
    public func queryFlexOrderSummaryList(_ input: QueryFlexOrderSummaryListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexOrderSummaryListResponse {
        try await self.client.execute(action: "QueryFlexOrderSummaryList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryFlexOrderSummaryList请求参数结构体
    public struct QueryFlexOrderSummaryListRequest: TCRequestModel {
        /// 汇总日期:yyyy-MM-dd
        public let summaryDate: String
        
        /// 分页
        public let pageNumber: Paging
        
        /// 汇总订单类型:FREEZE, SETTLEMENT,PAYMENT
        public let orderType: String
        
        /// 收款用户ID
        public let payeeId: String?
        
        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?
        
        public init (summaryDate: String, pageNumber: Paging, orderType: String, payeeId: String?, environment: String?) {
            self.summaryDate = summaryDate
            self.pageNumber = pageNumber
            self.orderType = orderType
            self.payeeId = payeeId
            self.environment = environment
        }
        
        enum CodingKeys: String, CodingKey {
            case summaryDate = "SummaryDate"
            case pageNumber = "PageNumber"
            case orderType = "OrderType"
            case payeeId = "PayeeId"
            case environment = "Environment"
        }
    }
    
    /// QueryFlexOrderSummaryList返回参数结构体
    public struct QueryFlexOrderSummaryListResponse: TCResponseModel {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String
        
        /// 错误消息
        public let errMessage: String
        
        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: OrderSummaries
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}