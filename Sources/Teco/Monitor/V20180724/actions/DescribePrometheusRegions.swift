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

extension Monitor {
    /// DescribePrometheusRegions请求参数结构体
    public struct DescribePrometheusRegionsRequest: TCRequest {
        /// 1-预付费，2-后付费，3-全地域（不填默认全地域）
        public let payMode: Int64?

        public init(payMode: Int64? = nil) {
            self.payMode = payMode
        }

        enum CodingKeys: String, CodingKey {
            case payMode = "PayMode"
        }
    }

    /// DescribePrometheusRegions返回参数结构体
    public struct DescribePrometheusRegionsResponse: TCResponse {
        /// 区域列表
        public let regionSet: [PrometheusRegionItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regionSet = "RegionSet"
            case requestId = "RequestId"
        }
    }

    /// 列出 Prometheus 服务所有可用的地域
    @inlinable
    public func describePrometheusRegions(_ input: DescribePrometheusRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusRegionsResponse> {
        self.client.execute(action: "DescribePrometheusRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出 Prometheus 服务所有可用的地域
    @inlinable
    public func describePrometheusRegions(_ input: DescribePrometheusRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusRegionsResponse {
        try await self.client.execute(action: "DescribePrometheusRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出 Prometheus 服务所有可用的地域
    @inlinable
    public func describePrometheusRegions(payMode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusRegionsResponse> {
        self.describePrometheusRegions(.init(payMode: payMode), region: region, logger: logger, on: eventLoop)
    }

    /// 列出 Prometheus 服务所有可用的地域
    @inlinable
    public func describePrometheusRegions(payMode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusRegionsResponse {
        try await self.describePrometheusRegions(.init(payMode: payMode), region: region, logger: logger, on: eventLoop)
    }
}
