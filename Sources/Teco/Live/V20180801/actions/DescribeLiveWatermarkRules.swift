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

extension Live {
    /// DescribeLiveWatermarkRules请求参数结构体
    public struct DescribeLiveWatermarkRulesRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeLiveWatermarkRules返回参数结构体
    public struct DescribeLiveWatermarkRulesResponse: TCResponse {
        /// 水印规则列表。
        public let rules: [RuleInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case rules = "Rules"
            case requestId = "RequestId"
        }
    }

    /// 获取水印规则列表
    ///
    /// 获取水印规则列表。
    @inlinable
    public func describeLiveWatermarkRules(_ input: DescribeLiveWatermarkRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveWatermarkRulesResponse> {
        self.client.execute(action: "DescribeLiveWatermarkRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取水印规则列表
    ///
    /// 获取水印规则列表。
    @inlinable
    public func describeLiveWatermarkRules(_ input: DescribeLiveWatermarkRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveWatermarkRulesResponse {
        try await self.client.execute(action: "DescribeLiveWatermarkRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取水印规则列表
    ///
    /// 获取水印规则列表。
    @inlinable
    public func describeLiveWatermarkRules(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveWatermarkRulesResponse> {
        self.describeLiveWatermarkRules(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取水印规则列表
    ///
    /// 获取水印规则列表。
    @inlinable
    public func describeLiveWatermarkRules(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveWatermarkRulesResponse {
        try await self.describeLiveWatermarkRules(.init(), region: region, logger: logger, on: eventLoop)
    }
}
