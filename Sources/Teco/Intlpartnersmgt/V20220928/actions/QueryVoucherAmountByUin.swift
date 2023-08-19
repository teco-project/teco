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

extension Intlpartnersmgt {
    /// QueryVoucherAmountByUin请求参数结构体
    public struct QueryVoucherAmountByUinRequest: TCRequest {
        /// 子客uin列表
        public let clientUins: [UInt64]

        public init(clientUins: [UInt64]) {
            self.clientUins = clientUins
        }

        enum CodingKeys: String, CodingKey {
            case clientUins = "ClientUins"
        }
    }

    /// QueryVoucherAmountByUin返回参数结构体
    public struct QueryVoucherAmountByUinResponse: TCResponse {
        /// 子客代金券额度数据
        public let data: [QueryVoucherAmountByUinItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 根据客户uin查询代金券额度
    @inlinable
    public func queryVoucherAmountByUin(_ input: QueryVoucherAmountByUinRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryVoucherAmountByUinResponse> {
        self.client.execute(action: "QueryVoucherAmountByUin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据客户uin查询代金券额度
    @inlinable
    public func queryVoucherAmountByUin(_ input: QueryVoucherAmountByUinRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryVoucherAmountByUinResponse {
        try await self.client.execute(action: "QueryVoucherAmountByUin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据客户uin查询代金券额度
    @inlinable
    public func queryVoucherAmountByUin(clientUins: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryVoucherAmountByUinResponse> {
        self.queryVoucherAmountByUin(.init(clientUins: clientUins), region: region, logger: logger, on: eventLoop)
    }

    /// 根据客户uin查询代金券额度
    @inlinable
    public func queryVoucherAmountByUin(clientUins: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryVoucherAmountByUinResponse {
        try await self.queryVoucherAmountByUin(.init(clientUins: clientUins), region: region, logger: logger, on: eventLoop)
    }
}
