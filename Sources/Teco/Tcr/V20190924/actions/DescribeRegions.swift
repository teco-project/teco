//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcr {
    /// DescribeRegions请求参数结构体
    public struct DescribeRegionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeRegions返回参数结构体
    public struct DescribeRegionsResponse: TCResponseModel {
        /// 返回的总数
        public let totalCount: UInt64

        /// 地域信息列表
        public let regions: [Region]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case regions = "Regions"
            case requestId = "RequestId"
        }
    }

    /// 列出TCR可用区域
    ///
    /// 用于在TCR中获取可用区域
    @inlinable
    public func describeRegions(_ input: DescribeRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionsResponse> {
        self.client.execute(action: "DescribeRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出TCR可用区域
    ///
    /// 用于在TCR中获取可用区域
    @inlinable
    public func describeRegions(_ input: DescribeRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionsResponse {
        try await self.client.execute(action: "DescribeRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出TCR可用区域
    ///
    /// 用于在TCR中获取可用区域
    @inlinable
    public func describeRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionsResponse> {
        self.describeRegions(DescribeRegionsRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 列出TCR可用区域
    ///
    /// 用于在TCR中获取可用区域
    @inlinable
    public func describeRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionsResponse {
        try await self.describeRegions(DescribeRegionsRequest(), region: region, logger: logger, on: eventLoop)
    }
}
