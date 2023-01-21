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

extension Cpdp {
    /// QueryFlexFreezeOrderList请求参数结构体
    public struct QueryFlexFreezeOrderListRequest: TCRequestModel {
        /// 收款用户ID
        public let payeeId: String

        /// 操作类型
        /// FREEZE:冻结
        /// UNFREEZE:解冻
        public let operationType: String

        /// 开始时间，格式"yyyy-MM-dd hh:mm:ss"
        public let startTime: String

        /// 结束时间，格式"yyyy-MM-dd hh:mm:ss"
        public let endTime: String

        /// 分页
        public let pageNumber: Paging

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?

        public init(payeeId: String, operationType: String, startTime: String, endTime: String, pageNumber: Paging, environment: String? = nil) {
            self.payeeId = payeeId
            self.operationType = operationType
            self.startTime = startTime
            self.endTime = endTime
            self.pageNumber = pageNumber
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case payeeId = "PayeeId"
            case operationType = "OperationType"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pageNumber = "PageNumber"
            case environment = "Environment"
        }
    }

    /// QueryFlexFreezeOrderList返回参数结构体
    public struct QueryFlexFreezeOrderListResponse: TCResponseModel {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: FreezeOrders?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-查询冻结订单列表
    @inlinable
    public func queryFlexFreezeOrderList(_ input: QueryFlexFreezeOrderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexFreezeOrderListResponse> {
        self.client.execute(action: "QueryFlexFreezeOrderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-查询冻结订单列表
    @inlinable
    public func queryFlexFreezeOrderList(_ input: QueryFlexFreezeOrderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexFreezeOrderListResponse {
        try await self.client.execute(action: "QueryFlexFreezeOrderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-查询冻结订单列表
    @inlinable
    public func queryFlexFreezeOrderList(payeeId: String, operationType: String, startTime: String, endTime: String, pageNumber: Paging, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexFreezeOrderListResponse> {
        self.queryFlexFreezeOrderList(QueryFlexFreezeOrderListRequest(payeeId: payeeId, operationType: operationType, startTime: startTime, endTime: endTime, pageNumber: pageNumber, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-查询冻结订单列表
    @inlinable
    public func queryFlexFreezeOrderList(payeeId: String, operationType: String, startTime: String, endTime: String, pageNumber: Paging, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexFreezeOrderListResponse {
        try await self.queryFlexFreezeOrderList(QueryFlexFreezeOrderListRequest(payeeId: payeeId, operationType: operationType, startTime: startTime, endTime: endTime, pageNumber: pageNumber, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
