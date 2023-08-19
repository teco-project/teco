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

extension Iotvideo {
    /// DescribeProduct请求参数结构体
    public struct DescribeProductRequest: TCRequest {
        /// 产品ID
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// DescribeProduct返回参数结构体
    public struct DescribeProductResponse: TCResponse {
        /// 产品详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: ProductData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取单个产品详细信息
    ///
    /// 本接口（DescribeProduct）用于获取单个产品的详细信息。
    @inlinable
    public func describeProduct(_ input: DescribeProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductResponse> {
        self.client.execute(action: "DescribeProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单个产品详细信息
    ///
    /// 本接口（DescribeProduct）用于获取单个产品的详细信息。
    @inlinable
    public func describeProduct(_ input: DescribeProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductResponse {
        try await self.client.execute(action: "DescribeProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单个产品详细信息
    ///
    /// 本接口（DescribeProduct）用于获取单个产品的详细信息。
    @inlinable
    public func describeProduct(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductResponse> {
        self.describeProduct(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单个产品详细信息
    ///
    /// 本接口（DescribeProduct）用于获取单个产品的详细信息。
    @inlinable
    public func describeProduct(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductResponse {
        try await self.describeProduct(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
