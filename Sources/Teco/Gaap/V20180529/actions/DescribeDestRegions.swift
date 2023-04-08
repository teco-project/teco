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

extension Gaap {
    /// DescribeDestRegions请求参数结构体
    public struct DescribeDestRegionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeDestRegions返回参数结构体
    public struct DescribeDestRegionsResponse: TCResponseModel {
        /// 源站区域总数
        public let totalCount: UInt64

        /// 源站区域详情列表
        public let destRegionSet: [RegionDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case destRegionSet = "DestRegionSet"
            case requestId = "RequestId"
        }
    }

    /// 查询源站区域
    ///
    /// 本接口（DescribeDestRegions）用于查询源站区域，即源站服务器所在区域。
    @inlinable
    public func describeDestRegions(_ input: DescribeDestRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDestRegionsResponse> {
        self.client.execute(action: "DescribeDestRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询源站区域
    ///
    /// 本接口（DescribeDestRegions）用于查询源站区域，即源站服务器所在区域。
    @inlinable
    public func describeDestRegions(_ input: DescribeDestRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDestRegionsResponse {
        try await self.client.execute(action: "DescribeDestRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询源站区域
    ///
    /// 本接口（DescribeDestRegions）用于查询源站区域，即源站服务器所在区域。
    @inlinable
    public func describeDestRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDestRegionsResponse> {
        self.describeDestRegions(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询源站区域
    ///
    /// 本接口（DescribeDestRegions）用于查询源站区域，即源站服务器所在区域。
    @inlinable
    public func describeDestRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDestRegionsResponse {
        try await self.describeDestRegions(.init(), region: region, logger: logger, on: eventLoop)
    }
}
