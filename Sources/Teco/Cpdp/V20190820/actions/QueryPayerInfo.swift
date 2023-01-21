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
    /// QueryPayerInfo请求参数结构体
    public struct QueryPayerInfoRequest: TCRequestModel {
        /// 付款人ID
        public let payerId: String

        /// 接入环境。沙箱环境填sandbox
        public let profile: String?

        public init(payerId: String, profile: String? = nil) {
            self.payerId = payerId
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case payerId = "PayerId"
            case profile = "Profile"
        }
    }

    /// QueryPayerInfo返回参数结构体
    public struct QueryPayerInfoResponse: TCResponseModel {
        /// 付款人查询结果
        public let result: QueryPayerinfoResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 跨境-付款人查询
    @inlinable
    public func queryPayerInfo(_ input: QueryPayerInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryPayerInfoResponse> {
        self.client.execute(action: "QueryPayerInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跨境-付款人查询
    @inlinable
    public func queryPayerInfo(_ input: QueryPayerInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryPayerInfoResponse {
        try await self.client.execute(action: "QueryPayerInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跨境-付款人查询
    @inlinable
    public func queryPayerInfo(payerId: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryPayerInfoResponse> {
        self.queryPayerInfo(QueryPayerInfoRequest(payerId: payerId, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 跨境-付款人查询
    @inlinable
    public func queryPayerInfo(payerId: String, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryPayerInfoResponse {
        try await self.queryPayerInfo(QueryPayerInfoRequest(payerId: payerId, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
