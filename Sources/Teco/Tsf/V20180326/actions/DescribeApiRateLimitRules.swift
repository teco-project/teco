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

extension Tsf {
    /// DescribeApiRateLimitRules请求参数结构体
    public struct DescribeApiRateLimitRulesRequest: TCRequest {
        /// Api ID
        public let apiId: String

        public init(apiId: String) {
            self.apiId = apiId
        }

        enum CodingKeys: String, CodingKey {
            case apiId = "ApiId"
        }
    }

    /// DescribeApiRateLimitRules返回参数结构体
    public struct DescribeApiRateLimitRulesResponse: TCResponse {
        /// 限流结果
        public let result: [ApiRateLimitRule]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询API限流规则
    @inlinable
    public func describeApiRateLimitRules(_ input: DescribeApiRateLimitRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiRateLimitRulesResponse> {
        self.client.execute(action: "DescribeApiRateLimitRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询API限流规则
    @inlinable
    public func describeApiRateLimitRules(_ input: DescribeApiRateLimitRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiRateLimitRulesResponse {
        try await self.client.execute(action: "DescribeApiRateLimitRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询API限流规则
    @inlinable
    public func describeApiRateLimitRules(apiId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiRateLimitRulesResponse> {
        self.describeApiRateLimitRules(.init(apiId: apiId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询API限流规则
    @inlinable
    public func describeApiRateLimitRules(apiId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiRateLimitRulesResponse {
        try await self.describeApiRateLimitRules(.init(apiId: apiId), region: region, logger: logger, on: eventLoop)
    }
}
