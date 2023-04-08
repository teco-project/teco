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

extension Vpc {
    /// DescribeProductQuota请求参数结构体
    public struct DescribeProductQuotaRequest: TCRequestModel {
        /// 查询的网络产品名称，可查询的产品有：vpc、ccn、vpn、dc、dfw、clb、eip。
        public let product: String

        public init(product: String) {
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
        }
    }

    /// DescribeProductQuota返回参数结构体
    public struct DescribeProductQuotaResponse: TCResponseModel {
        /// ProductQuota对象数组
        public let productQuotaSet: [ProductQuota]

        /// 符合条件的产品类型个数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case productQuotaSet = "ProductQuotaSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询网络产品配额信息
    ///
    /// 本接口用于查询网络产品的配额信息
    @inlinable
    public func describeProductQuota(_ input: DescribeProductQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductQuotaResponse> {
        self.client.execute(action: "DescribeProductQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网络产品配额信息
    ///
    /// 本接口用于查询网络产品的配额信息
    @inlinable
    public func describeProductQuota(_ input: DescribeProductQuotaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductQuotaResponse {
        try await self.client.execute(action: "DescribeProductQuota", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网络产品配额信息
    ///
    /// 本接口用于查询网络产品的配额信息
    @inlinable
    public func describeProductQuota(product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProductQuotaResponse> {
        self.describeProductQuota(.init(product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网络产品配额信息
    ///
    /// 本接口用于查询网络产品的配额信息
    @inlinable
    public func describeProductQuota(product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductQuotaResponse {
        try await self.describeProductQuota(.init(product: product), region: region, logger: logger, on: eventLoop)
    }
}
