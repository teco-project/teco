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

extension Pts {
    /// DescribeRegions请求参数结构体
    public struct DescribeRegionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeRegions返回参数结构体
    public struct DescribeRegionsResponse: TCResponseModel {
        /// 地域数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionSet: [RegionDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regionSet = "RegionSet"
            case requestId = "RequestId"
        }
    }

    /// 查询地域列表
    @inlinable
    public func describeRegions(_ input: DescribeRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionsResponse> {
        self.client.execute(action: "DescribeRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询地域列表
    @inlinable
    public func describeRegions(_ input: DescribeRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionsResponse {
        try await self.client.execute(action: "DescribeRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询地域列表
    @inlinable
    public func describeRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionsResponse> {
        self.describeRegions(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询地域列表
    @inlinable
    public func describeRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionsResponse {
        try await self.describeRegions(.init(), region: region, logger: logger, on: eventLoop)
    }
}
