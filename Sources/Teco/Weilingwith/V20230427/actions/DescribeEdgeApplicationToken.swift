//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Weilingwith {
    /// DescribeEdgeApplicationToken请求参数结构体
    public struct DescribeEdgeApplicationTokenRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeEdgeApplicationToken返回参数结构体
    public struct DescribeEdgeApplicationTokenResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询边缘应用凭证
    @inlinable @discardableResult
    public func describeEdgeApplicationToken(_ input: DescribeEdgeApplicationTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeApplicationTokenResponse> {
        self.client.execute(action: "DescribeEdgeApplicationToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘应用凭证
    @inlinable @discardableResult
    public func describeEdgeApplicationToken(_ input: DescribeEdgeApplicationTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeApplicationTokenResponse {
        try await self.client.execute(action: "DescribeEdgeApplicationToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘应用凭证
    @inlinable @discardableResult
    public func describeEdgeApplicationToken(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeApplicationTokenResponse> {
        self.describeEdgeApplicationToken(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘应用凭证
    @inlinable @discardableResult
    public func describeEdgeApplicationToken(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeApplicationTokenResponse {
        try await self.describeEdgeApplicationToken(.init(), region: region, logger: logger, on: eventLoop)
    }
}
