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
    /// QueryBatchPaymentResult请求参数结构体
    public struct QueryBatchPaymentResultRequest: TCRequestModel {
        /// 批次号
        public let batchId: String

        public init(batchId: String) {
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
        }
    }

    /// QueryBatchPaymentResult返回参数结构体
    public struct QueryBatchPaymentResultResponse: TCResponseModel {
        /// 错误码。响应成功："SUCCESS"，其他为不成功。
        public let errCode: String

        /// 响应消息。
        public let errMessage: String

        /// 返回响应
        public let result: QueryBatchPaymentResultData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云-批量转账结果查询
    @inlinable
    public func queryBatchPaymentResult(_ input: QueryBatchPaymentResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryBatchPaymentResultResponse> {
        self.client.execute(action: "QueryBatchPaymentResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云-批量转账结果查询
    @inlinable
    public func queryBatchPaymentResult(_ input: QueryBatchPaymentResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryBatchPaymentResultResponse {
        try await self.client.execute(action: "QueryBatchPaymentResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云-批量转账结果查询
    @inlinable
    public func queryBatchPaymentResult(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryBatchPaymentResultResponse> {
        self.queryBatchPaymentResult(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云-批量转账结果查询
    @inlinable
    public func queryBatchPaymentResult(batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryBatchPaymentResultResponse {
        try await self.queryBatchPaymentResult(.init(batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
