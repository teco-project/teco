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
    /// QueryExchangeRate请求参数结构体
    public struct QueryExchangeRateRequest: TCRequestModel {
        /// 源币种 (默认CNY)
        public let sourceCurrency: String

        /// 目的币种 (见常见问题-汇出币种)
        public let targetCurrency: String?

        /// 接入环境。沙箱环境填sandbox
        public let profile: String?

        public init(sourceCurrency: String, targetCurrency: String? = nil, profile: String? = nil) {
            self.sourceCurrency = sourceCurrency
            self.targetCurrency = targetCurrency
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case sourceCurrency = "SourceCurrency"
            case targetCurrency = "TargetCurrency"
            case profile = "Profile"
        }
    }

    /// QueryExchangeRate返回参数结构体
    public struct QueryExchangeRateResponse: TCResponseModel {
        /// 查询汇率结果
        public let result: QueryExchangerateResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 跨境-查询汇率
    @inlinable
    public func queryExchangeRate(_ input: QueryExchangeRateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExchangeRateResponse> {
        self.client.execute(action: "QueryExchangeRate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 跨境-查询汇率
    @inlinable
    public func queryExchangeRate(_ input: QueryExchangeRateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExchangeRateResponse {
        try await self.client.execute(action: "QueryExchangeRate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 跨境-查询汇率
    @inlinable
    public func queryExchangeRate(sourceCurrency: String, targetCurrency: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryExchangeRateResponse> {
        self.queryExchangeRate(.init(sourceCurrency: sourceCurrency, targetCurrency: targetCurrency, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 跨境-查询汇率
    @inlinable
    public func queryExchangeRate(sourceCurrency: String, targetCurrency: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExchangeRateResponse {
        try await self.queryExchangeRate(.init(sourceCurrency: sourceCurrency, targetCurrency: targetCurrency, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
