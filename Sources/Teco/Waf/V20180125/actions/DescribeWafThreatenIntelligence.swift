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

extension Waf {
    /// DescribeWafThreatenIntelligence请求参数结构体
    public struct DescribeWafThreatenIntelligenceRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeWafThreatenIntelligence返回参数结构体
    public struct DescribeWafThreatenIntelligenceResponse: TCResponse {
        /// WAF 威胁情报封禁信息
        public let wafThreatenIntelligenceDetails: WafThreatenIntelligenceDetails

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case wafThreatenIntelligenceDetails = "WafThreatenIntelligenceDetails"
            case requestId = "RequestId"
        }
    }

    /// 描述WAF威胁情报封禁模块配置详情
    @inlinable
    public func describeWafThreatenIntelligence(_ input: DescribeWafThreatenIntelligenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafThreatenIntelligenceResponse> {
        self.client.execute(action: "DescribeWafThreatenIntelligence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述WAF威胁情报封禁模块配置详情
    @inlinable
    public func describeWafThreatenIntelligence(_ input: DescribeWafThreatenIntelligenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafThreatenIntelligenceResponse {
        try await self.client.execute(action: "DescribeWafThreatenIntelligence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述WAF威胁情报封禁模块配置详情
    @inlinable
    public func describeWafThreatenIntelligence(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafThreatenIntelligenceResponse> {
        self.describeWafThreatenIntelligence(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 描述WAF威胁情报封禁模块配置详情
    @inlinable
    public func describeWafThreatenIntelligence(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafThreatenIntelligenceResponse {
        try await self.describeWafThreatenIntelligence(.init(), region: region, logger: logger, on: eventLoop)
    }
}
