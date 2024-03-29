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
    /// QueryAgentTaxPaymentBatch请求参数结构体
    public struct QueryAgentTaxPaymentBatchRequest: TCRequest {
        /// 批次号
        public let batchNum: Int64

        /// 接入环境。沙箱环境填sandbox
        public let profile: String?

        public init(batchNum: Int64, profile: String? = nil) {
            self.batchNum = batchNum
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case batchNum = "BatchNum"
            case profile = "Profile"
        }
    }

    /// QueryAgentTaxPaymentBatch返回参数结构体
    public struct QueryAgentTaxPaymentBatchResponse: TCResponse {
        /// 代理商完税证明批次信息
        public let agentTaxPaymentBatch: AgentTaxPaymentBatch

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case agentTaxPaymentBatch = "AgentTaxPaymentBatch"
            case requestId = "RequestId"
        }
    }

    /// 直播平台-查询批次信息
    @inlinable
    public func queryAgentTaxPaymentBatch(_ input: QueryAgentTaxPaymentBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryAgentTaxPaymentBatchResponse> {
        self.client.execute(action: "QueryAgentTaxPaymentBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播平台-查询批次信息
    @inlinable
    public func queryAgentTaxPaymentBatch(_ input: QueryAgentTaxPaymentBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAgentTaxPaymentBatchResponse {
        try await self.client.execute(action: "QueryAgentTaxPaymentBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播平台-查询批次信息
    @inlinable
    public func queryAgentTaxPaymentBatch(batchNum: Int64, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryAgentTaxPaymentBatchResponse> {
        self.queryAgentTaxPaymentBatch(.init(batchNum: batchNum, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 直播平台-查询批次信息
    @inlinable
    public func queryAgentTaxPaymentBatch(batchNum: Int64, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAgentTaxPaymentBatchResponse {
        try await self.queryAgentTaxPaymentBatch(.init(batchNum: batchNum, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
