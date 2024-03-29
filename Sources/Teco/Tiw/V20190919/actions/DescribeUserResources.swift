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

extension Tiw {
    /// DescribeUserResources请求参数结构体
    public struct DescribeUserResourcesRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeUserResources返回参数结构体
    public struct DescribeUserResourcesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询客户资源列表
    @inlinable @discardableResult
    public func describeUserResources(_ input: DescribeUserResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResourcesResponse> {
        self.client.execute(action: "DescribeUserResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户资源列表
    @inlinable @discardableResult
    public func describeUserResources(_ input: DescribeUserResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResourcesResponse {
        try await self.client.execute(action: "DescribeUserResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户资源列表
    @inlinable @discardableResult
    public func describeUserResources(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResourcesResponse> {
        self.describeUserResources(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户资源列表
    @inlinable @discardableResult
    public func describeUserResources(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResourcesResponse {
        try await self.describeUserResources(.init(), region: region, logger: logger, on: eventLoop)
    }
}
