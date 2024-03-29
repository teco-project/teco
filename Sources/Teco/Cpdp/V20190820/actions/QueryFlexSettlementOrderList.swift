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
    /// QueryFlexSettlementOrderList请求参数结构体
    public struct QueryFlexSettlementOrderListRequest: TCRequest {
        /// 收款用户ID
        public let payeeId: String

        /// 开始时间，格式"yyyy-MM-dd hh:mm:ss"
        public let startTime: String

        /// 结束时间，格式"yyyy-MM-dd hh:mm:ss"
        public let endTime: String

        /// 分页
        public let pageNumber: Paging

        /// 操作类型。
        /// ENABLE_SETTLE: 正常结算
        /// DISABLE_SETTLE: 停用结算
        /// UNFREEZE_SETTLE: 解冻结算
        /// 若需要支持多个操作类型，则以;分隔
        public let operationType: String?

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?

        public init(payeeId: String, startTime: String, endTime: String, pageNumber: Paging, operationType: String? = nil, environment: String? = nil) {
            self.payeeId = payeeId
            self.startTime = startTime
            self.endTime = endTime
            self.pageNumber = pageNumber
            self.operationType = operationType
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case payeeId = "PayeeId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pageNumber = "PageNumber"
            case operationType = "OperationType"
            case environment = "Environment"
        }
    }

    /// QueryFlexSettlementOrderList返回参数结构体
    public struct QueryFlexSettlementOrderListResponse: TCResponse {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: SettlementOrders?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-查询结算订单列表
    @inlinable
    public func queryFlexSettlementOrderList(_ input: QueryFlexSettlementOrderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexSettlementOrderListResponse> {
        self.client.execute(action: "QueryFlexSettlementOrderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-查询结算订单列表
    @inlinable
    public func queryFlexSettlementOrderList(_ input: QueryFlexSettlementOrderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexSettlementOrderListResponse {
        try await self.client.execute(action: "QueryFlexSettlementOrderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-查询结算订单列表
    @inlinable
    public func queryFlexSettlementOrderList(payeeId: String, startTime: String, endTime: String, pageNumber: Paging, operationType: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexSettlementOrderListResponse> {
        self.queryFlexSettlementOrderList(.init(payeeId: payeeId, startTime: startTime, endTime: endTime, pageNumber: pageNumber, operationType: operationType, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-查询结算订单列表
    @inlinable
    public func queryFlexSettlementOrderList(payeeId: String, startTime: String, endTime: String, pageNumber: Paging, operationType: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexSettlementOrderListResponse {
        try await self.queryFlexSettlementOrderList(.init(payeeId: payeeId, startTime: startTime, endTime: endTime, pageNumber: pageNumber, operationType: operationType, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
