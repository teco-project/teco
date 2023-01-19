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

extension Cwp {
    /// DescribeBanRegions请求参数结构体
    public struct DescribeBanRegionsRequest: TCRequestModel {
        /// 阻断模式，STANDARD_MODE：标准阻断，DEEP_MODE：深度阻断
        public let mode: String

        public init(mode: String) {
            self.mode = mode
        }

        enum CodingKeys: String, CodingKey {
            case mode = "Mode"
        }
    }

    /// DescribeBanRegions返回参数结构体
    public struct DescribeBanRegionsResponse: TCResponseModel {
        /// 地域信息列表
        public let regionSet: [RegionSet]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regionSet = "RegionSet"
            case requestId = "RequestId"
        }
    }

    /// 获取阻断地域
    @inlinable
    public func describeBanRegions(_ input: DescribeBanRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBanRegionsResponse> {
        self.client.execute(action: "DescribeBanRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取阻断地域
    @inlinable
    public func describeBanRegions(_ input: DescribeBanRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBanRegionsResponse {
        try await self.client.execute(action: "DescribeBanRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取阻断地域
    @inlinable
    public func describeBanRegions(mode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBanRegionsResponse> {
        self.describeBanRegions(DescribeBanRegionsRequest(mode: mode), region: region, logger: logger, on: eventLoop)
    }

    /// 获取阻断地域
    @inlinable
    public func describeBanRegions(mode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBanRegionsResponse {
        try await self.describeBanRegions(DescribeBanRegionsRequest(mode: mode), region: region, logger: logger, on: eventLoop)
    }
}
