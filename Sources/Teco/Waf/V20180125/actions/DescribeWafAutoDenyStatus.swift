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

extension Waf {
    /// DescribeWafAutoDenyStatus请求参数结构体
    public struct DescribeWafAutoDenyStatusRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeWafAutoDenyStatus返回参数结构体
    public struct DescribeWafAutoDenyStatusResponse: TCResponseModel {
        /// WAF 自动封禁详情
        public let wafAutoDenyDetails: AutoDenyDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case wafAutoDenyDetails = "WafAutoDenyDetails"
            case requestId = "RequestId"
        }
    }

    /// 描述WAF自动封禁模块详情
    @inlinable
    public func describeWafAutoDenyStatus(_ input: DescribeWafAutoDenyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafAutoDenyStatusResponse> {
        self.client.execute(action: "DescribeWafAutoDenyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述WAF自动封禁模块详情
    @inlinable
    public func describeWafAutoDenyStatus(_ input: DescribeWafAutoDenyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafAutoDenyStatusResponse {
        try await self.client.execute(action: "DescribeWafAutoDenyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述WAF自动封禁模块详情
    @inlinable
    public func describeWafAutoDenyStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWafAutoDenyStatusResponse> {
        self.describeWafAutoDenyStatus(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 描述WAF自动封禁模块详情
    @inlinable
    public func describeWafAutoDenyStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWafAutoDenyStatusResponse {
        try await self.describeWafAutoDenyStatus(.init(), region: region, logger: logger, on: eventLoop)
    }
}
