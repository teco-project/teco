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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// QueryTrade请求参数结构体
    public struct QueryTradeRequest: TCRequestModel {
        /// 贸易材料流水号
        public let tradeFileId: String

        /// 接入环境。沙箱环境填sandbox
        public let profile: String?

        public init(tradeFileId: String, profile: String? = nil) {
            self.tradeFileId = tradeFileId
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case tradeFileId = "TradeFileId"
            case profile = "Profile"
        }
    }

    /// QueryTrade返回参数结构体
    public struct QueryTradeResponse: TCResponseModel {
        /// 贸易材料明细查询结果
        public let result: QueryTradeResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 跨境-贸易材料明细查询
    ///
    /// 跨境-贸易材料明细查询。
    @inlinable
    public func queryTrade(_ input: QueryTradeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryTradeResponse> {
        self.client.execute(action: "QueryTrade", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跨境-贸易材料明细查询
    ///
    /// 跨境-贸易材料明细查询。
    @inlinable
    public func queryTrade(_ input: QueryTradeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryTradeResponse {
        try await self.client.execute(action: "QueryTrade", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跨境-贸易材料明细查询
    ///
    /// 跨境-贸易材料明细查询。
    @inlinable
    public func queryTrade(tradeFileId: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryTradeResponse> {
        self.queryTrade(.init(tradeFileId: tradeFileId, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 跨境-贸易材料明细查询
    ///
    /// 跨境-贸易材料明细查询。
    @inlinable
    public func queryTrade(tradeFileId: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryTradeResponse {
        try await self.queryTrade(.init(tradeFileId: tradeFileId, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
