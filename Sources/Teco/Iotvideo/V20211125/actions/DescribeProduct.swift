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

extension Iotvideo {
    /// DescribeProduct请求参数结构体
    public struct DescribeProductRequest: TCRequestModel {
        /// 产品id
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// DescribeProduct返回参数结构体
    public struct DescribeProductResponse: TCResponseModel {
        /// 产品详情
        public let data: VideoProduct

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取产品详情
    @inlinable
    public func describeProduct(_ input: DescribeProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductResponse> {
        self.client.execute(action: "DescribeProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品详情
    @inlinable
    public func describeProduct(_ input: DescribeProductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductResponse {
        try await self.client.execute(action: "DescribeProduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品详情
    @inlinable
    public func describeProduct(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductResponse> {
        self.describeProduct(DescribeProductRequest(productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品详情
    @inlinable
    public func describeProduct(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductResponse {
        try await self.describeProduct(DescribeProductRequest(productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
