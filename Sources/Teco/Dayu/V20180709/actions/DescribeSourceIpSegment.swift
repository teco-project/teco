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

extension Dayu {
    /// DescribeSourceIpSegment请求参数结构体
    public struct DescribeSourceIpSegmentRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        public init(business: String, id: String) {
            self.business = business
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
        }
    }

    /// DescribeSourceIpSegment返回参数结构体
    public struct DescribeSourceIpSegmentResponse: TCResponseModel {
        /// 回源IP段，多个用"；"分隔
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取回源IP段
    ///
    /// 获取回源IP段，支持的产品：高防IP，高防IP专业版；
    @inlinable
    public func describeSourceIpSegment(_ input: DescribeSourceIpSegmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSourceIpSegmentResponse> {
        self.client.execute(action: "DescribeSourceIpSegment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取回源IP段
    ///
    /// 获取回源IP段，支持的产品：高防IP，高防IP专业版；
    @inlinable
    public func describeSourceIpSegment(_ input: DescribeSourceIpSegmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSourceIpSegmentResponse {
        try await self.client.execute(action: "DescribeSourceIpSegment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取回源IP段
    ///
    /// 获取回源IP段，支持的产品：高防IP，高防IP专业版；
    @inlinable
    public func describeSourceIpSegment(business: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSourceIpSegmentResponse> {
        self.describeSourceIpSegment(.init(business: business, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取回源IP段
    ///
    /// 获取回源IP段，支持的产品：高防IP，高防IP专业版；
    @inlinable
    public func describeSourceIpSegment(business: String, id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSourceIpSegmentResponse {
        try await self.describeSourceIpSegment(.init(business: business, id: id), region: region, logger: logger, on: eventLoop)
    }
}
