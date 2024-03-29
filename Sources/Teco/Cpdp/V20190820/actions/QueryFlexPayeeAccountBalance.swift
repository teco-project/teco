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
    /// QueryFlexPayeeAccountBalance请求参数结构体
    public struct QueryFlexPayeeAccountBalanceRequest: TCRequest {
        /// 收款用户ID
        public let payeeId: String

        /// 收入类型
        /// LABOR:劳务所得
        /// OCCASION:偶然所得
        public let incomeType: String

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?

        /// 快照日期。格式yyyy-MM-dd
        public let snapshotDate: String?

        public init(payeeId: String, incomeType: String, environment: String? = nil, snapshotDate: String? = nil) {
            self.payeeId = payeeId
            self.incomeType = incomeType
            self.environment = environment
            self.snapshotDate = snapshotDate
        }

        enum CodingKeys: String, CodingKey {
            case payeeId = "PayeeId"
            case incomeType = "IncomeType"
            case environment = "Environment"
            case snapshotDate = "SnapshotDate"
        }
    }

    /// QueryFlexPayeeAccountBalance返回参数结构体
    public struct QueryFlexPayeeAccountBalanceResponse: TCResponse {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: PayeeAccountBalanceResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-收款用户账户余额查询
    @inlinable
    public func queryFlexPayeeAccountBalance(_ input: QueryFlexPayeeAccountBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexPayeeAccountBalanceResponse> {
        self.client.execute(action: "QueryFlexPayeeAccountBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-收款用户账户余额查询
    @inlinable
    public func queryFlexPayeeAccountBalance(_ input: QueryFlexPayeeAccountBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexPayeeAccountBalanceResponse {
        try await self.client.execute(action: "QueryFlexPayeeAccountBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-收款用户账户余额查询
    @inlinable
    public func queryFlexPayeeAccountBalance(payeeId: String, incomeType: String, environment: String? = nil, snapshotDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexPayeeAccountBalanceResponse> {
        self.queryFlexPayeeAccountBalance(.init(payeeId: payeeId, incomeType: incomeType, environment: environment, snapshotDate: snapshotDate), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-收款用户账户余额查询
    @inlinable
    public func queryFlexPayeeAccountBalance(payeeId: String, incomeType: String, environment: String? = nil, snapshotDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexPayeeAccountBalanceResponse {
        try await self.queryFlexPayeeAccountBalance(.init(payeeId: payeeId, incomeType: incomeType, environment: environment, snapshotDate: snapshotDate), region: region, logger: logger, on: eventLoop)
    }
}
