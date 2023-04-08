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

extension Ssm {
    /// GetRegions请求参数结构体
    public struct GetRegionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetRegions返回参数结构体
    public struct GetRegionsResponse: TCResponseModel {
        /// region列表。
        public let regions: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regions = "Regions"
            case requestId = "RequestId"
        }
    }

    /// 获取控制台展示region列表
    @inlinable
    public func getRegions(_ input: GetRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRegionsResponse> {
        self.client.execute(action: "GetRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取控制台展示region列表
    @inlinable
    public func getRegions(_ input: GetRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRegionsResponse {
        try await self.client.execute(action: "GetRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取控制台展示region列表
    @inlinable
    public func getRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetRegionsResponse> {
        self.getRegions(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取控制台展示region列表
    @inlinable
    public func getRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRegionsResponse {
        try await self.getRegions(.init(), region: region, logger: logger, on: eventLoop)
    }
}
