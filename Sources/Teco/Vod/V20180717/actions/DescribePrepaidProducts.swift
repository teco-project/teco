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

extension Vod {
    /// DescribePrepaidProducts请求参数结构体
    public struct DescribePrepaidProductsRequest: TCRequest {
        public init() {
        }
    }

    /// DescribePrepaidProducts返回参数结构体
    public struct DescribePrepaidProductsResponse: TCResponse {
        /// 购买的预付费商品实例列表。
        public let productInstanceSet: [ProductInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case productInstanceSet = "ProductInstanceSet"
            case requestId = "RequestId"
        }
    }

    /// 查询购买的预付费商品列表
    ///
    /// 该接口可以查询用户已经购买的预付费商品的信息，包括：
    ///     1. 商品的类型、生效和失效日期。
    ///     2. 商品中每种资源的额度和剩余额度。
    @inlinable
    public func describePrepaidProducts(_ input: DescribePrepaidProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrepaidProductsResponse> {
        self.client.execute(action: "DescribePrepaidProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询购买的预付费商品列表
    ///
    /// 该接口可以查询用户已经购买的预付费商品的信息，包括：
    ///     1. 商品的类型、生效和失效日期。
    ///     2. 商品中每种资源的额度和剩余额度。
    @inlinable
    public func describePrepaidProducts(_ input: DescribePrepaidProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrepaidProductsResponse {
        try await self.client.execute(action: "DescribePrepaidProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询购买的预付费商品列表
    ///
    /// 该接口可以查询用户已经购买的预付费商品的信息，包括：
    ///     1. 商品的类型、生效和失效日期。
    ///     2. 商品中每种资源的额度和剩余额度。
    @inlinable
    public func describePrepaidProducts(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrepaidProductsResponse> {
        self.describePrepaidProducts(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询购买的预付费商品列表
    ///
    /// 该接口可以查询用户已经购买的预付费商品的信息，包括：
    ///     1. 商品的类型、生效和失效日期。
    ///     2. 商品中每种资源的额度和剩余额度。
    @inlinable
    public func describePrepaidProducts(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrepaidProductsResponse {
        try await self.describePrepaidProducts(.init(), region: region, logger: logger, on: eventLoop)
    }
}
