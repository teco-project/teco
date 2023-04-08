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

extension Intlpartnersmgt {
    /// QueryVoucherListByUin请求参数结构体
    public struct QueryVoucherListByUinRequest: TCRequestModel {
        /// 子客uin列表
        public let clientUins: [UInt64]

        /// 状态，不传时默认查询所有状态。Unused,Used,Expired
        public let status: String?

        public init(clientUins: [UInt64], status: String? = nil) {
            self.clientUins = clientUins
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case clientUins = "ClientUins"
            case status = "Status"
        }
    }

    /// QueryVoucherListByUin返回参数结构体
    public struct QueryVoucherListByUinResponse: TCResponseModel {
        /// 子客代金券数据
        public let data: [QueryVoucherListByUinItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 根据客户uin查询代金券列表
    @inlinable
    public func queryVoucherListByUin(_ input: QueryVoucherListByUinRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryVoucherListByUinResponse> {
        self.client.execute(action: "QueryVoucherListByUin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据客户uin查询代金券列表
    @inlinable
    public func queryVoucherListByUin(_ input: QueryVoucherListByUinRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryVoucherListByUinResponse {
        try await self.client.execute(action: "QueryVoucherListByUin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据客户uin查询代金券列表
    @inlinable
    public func queryVoucherListByUin(clientUins: [UInt64], status: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryVoucherListByUinResponse> {
        self.queryVoucherListByUin(.init(clientUins: clientUins, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 根据客户uin查询代金券列表
    @inlinable
    public func queryVoucherListByUin(clientUins: [UInt64], status: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryVoucherListByUinResponse {
        try await self.queryVoucherListByUin(.init(clientUins: clientUins, status: status), region: region, logger: logger, on: eventLoop)
    }
}
