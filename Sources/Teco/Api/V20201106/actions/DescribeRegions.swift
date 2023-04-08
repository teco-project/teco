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

extension Api {
    /// DescribeRegions请求参数结构体
    public struct DescribeRegionsRequest: TCRequestModel {
        /// 待查询产品的名称，例如cvm，具体取值请查询DescribeProducts接口
        public let product: String

        public init(product: String) {
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
        }
    }

    /// DescribeRegions返回参数结构体
    public struct DescribeRegionsResponse: TCResponseModel {
        /// 地域数量
        public let totalCount: UInt64

        /// 地域列表信息
        public let regionSet: [RegionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case regionSet = "RegionSet"
            case requestId = "RequestId"
        }
    }

    /// 查询产品支持的地域列表
    ///
    /// 本接口(DescribeRegions)用于查询各个产品支持地域信息。
    @inlinable
    public func describeRegions(_ input: DescribeRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionsResponse> {
        self.client.execute(action: "DescribeRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询产品支持的地域列表
    ///
    /// 本接口(DescribeRegions)用于查询各个产品支持地域信息。
    @inlinable
    public func describeRegions(_ input: DescribeRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionsResponse {
        try await self.client.execute(action: "DescribeRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询产品支持的地域列表
    ///
    /// 本接口(DescribeRegions)用于查询各个产品支持地域信息。
    @inlinable
    public func describeRegions(product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionsResponse> {
        self.describeRegions(.init(product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 查询产品支持的地域列表
    ///
    /// 本接口(DescribeRegions)用于查询各个产品支持地域信息。
    @inlinable
    public func describeRegions(product: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionsResponse {
        try await self.describeRegions(.init(product: product), region: region, logger: logger, on: eventLoop)
    }
}
