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

extension Ssm {
    /// DescribeSupportedProducts请求参数结构体
    public struct DescribeSupportedProductsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeSupportedProducts返回参数结构体
    public struct DescribeSupportedProductsResponse: TCResponseModel {
        /// 支持的产品列表。
        public let products: [String]

        /// 支持的产品个数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询支持的云产品列表
    @inlinable
    public func describeSupportedProducts(_ input: DescribeSupportedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSupportedProductsResponse> {
        self.client.execute(action: "DescribeSupportedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询支持的云产品列表
    @inlinable
    public func describeSupportedProducts(_ input: DescribeSupportedProductsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSupportedProductsResponse {
        try await self.client.execute(action: "DescribeSupportedProducts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询支持的云产品列表
    @inlinable
    public func describeSupportedProducts(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSupportedProductsResponse> {
        self.describeSupportedProducts(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询支持的云产品列表
    @inlinable
    public func describeSupportedProducts(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSupportedProductsResponse {
        try await self.describeSupportedProducts(.init(), region: region, logger: logger, on: eventLoop)
    }
}
