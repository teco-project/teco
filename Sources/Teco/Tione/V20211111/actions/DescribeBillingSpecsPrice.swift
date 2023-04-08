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

extension Tione {
    /// DescribeBillingSpecsPrice请求参数结构体
    public struct DescribeBillingSpecsPriceRequest: TCRequestModel {
        /// 询价参数，支持批量询价
        public let specsParam: [SpecUnit]

        public init(specsParam: [SpecUnit]) {
            self.specsParam = specsParam
        }

        enum CodingKeys: String, CodingKey {
            case specsParam = "SpecsParam"
        }
    }

    /// DescribeBillingSpecsPrice返回参数结构体
    public struct DescribeBillingSpecsPriceResponse: TCResponseModel {
        /// 计费项价格，支持批量返回
        public let specsPrice: [SpecPrice]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case specsPrice = "SpecsPrice"
            case requestId = "RequestId"
        }
    }

    /// 查询计费项价格
    ///
    /// 本接口(DescribeBillingSpecsPrice)用于查询计费项价格。
    @inlinable
    public func describeBillingSpecsPrice(_ input: DescribeBillingSpecsPriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillingSpecsPriceResponse> {
        self.client.execute(action: "DescribeBillingSpecsPrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询计费项价格
    ///
    /// 本接口(DescribeBillingSpecsPrice)用于查询计费项价格。
    @inlinable
    public func describeBillingSpecsPrice(_ input: DescribeBillingSpecsPriceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillingSpecsPriceResponse {
        try await self.client.execute(action: "DescribeBillingSpecsPrice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询计费项价格
    ///
    /// 本接口(DescribeBillingSpecsPrice)用于查询计费项价格。
    @inlinable
    public func describeBillingSpecsPrice(specsParam: [SpecUnit], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillingSpecsPriceResponse> {
        self.describeBillingSpecsPrice(.init(specsParam: specsParam), region: region, logger: logger, on: eventLoop)
    }

    /// 查询计费项价格
    ///
    /// 本接口(DescribeBillingSpecsPrice)用于查询计费项价格。
    @inlinable
    public func describeBillingSpecsPrice(specsParam: [SpecUnit], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillingSpecsPriceResponse {
        try await self.describeBillingSpecsPrice(.init(specsParam: specsParam), region: region, logger: logger, on: eventLoop)
    }
}
