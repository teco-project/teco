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

extension Lighthouse {
    /// DescribeBundleDiscount请求参数结构体
    public struct DescribeBundleDiscountRequest: TCRequestModel {
        /// 套餐 ID。
        public let bundleId: String

        public init(bundleId: String) {
            self.bundleId = bundleId
        }

        enum CodingKeys: String, CodingKey {
            case bundleId = "BundleId"
        }
    }

    /// DescribeBundleDiscount返回参数结构体
    public struct DescribeBundleDiscountResponse: TCResponseModel {
        /// 币种：CNY人民币，USD 美元。
        public let currency: String

        /// 折扣梯度详情，每个梯度包含的信息有：时长，折扣数，总价，折扣价，折扣详情（用户折扣、官网折扣、最终折扣）。
        public let discountDetail: [DiscountDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case currency = "Currency"
            case discountDetail = "DiscountDetail"
            case requestId = "RequestId"
        }
    }

    /// 查询套餐折扣
    ///
    /// 本接口（DescribeBundleDiscount）用于查询套餐折扣信息。
    @inlinable
    public func describeBundleDiscount(_ input: DescribeBundleDiscountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBundleDiscountResponse> {
        self.client.execute(action: "DescribeBundleDiscount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询套餐折扣
    ///
    /// 本接口（DescribeBundleDiscount）用于查询套餐折扣信息。
    @inlinable
    public func describeBundleDiscount(_ input: DescribeBundleDiscountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBundleDiscountResponse {
        try await self.client.execute(action: "DescribeBundleDiscount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询套餐折扣
    ///
    /// 本接口（DescribeBundleDiscount）用于查询套餐折扣信息。
    @inlinable
    public func describeBundleDiscount(bundleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBundleDiscountResponse> {
        self.describeBundleDiscount(.init(bundleId: bundleId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询套餐折扣
    ///
    /// 本接口（DescribeBundleDiscount）用于查询套餐折扣信息。
    @inlinable
    public func describeBundleDiscount(bundleId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBundleDiscountResponse {
        try await self.describeBundleDiscount(.init(bundleId: bundleId), region: region, logger: logger, on: eventLoop)
    }
}
