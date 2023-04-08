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

extension Pts {
    /// DescribeAvailableMetrics请求参数结构体
    public struct DescribeAvailableMetricsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeAvailableMetrics返回参数结构体
    public struct DescribeAvailableMetricsResponse: TCResponseModel {
        /// 系统支持的所有指标
        public let metricSet: [MetricInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metricSet = "MetricSet"
            case requestId = "RequestId"
        }
    }

    /// 查询系统支持的指标
    @inlinable
    public func describeAvailableMetrics(_ input: DescribeAvailableMetricsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableMetricsResponse> {
        self.client.execute(action: "DescribeAvailableMetrics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询系统支持的指标
    @inlinable
    public func describeAvailableMetrics(_ input: DescribeAvailableMetricsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableMetricsResponse {
        try await self.client.execute(action: "DescribeAvailableMetrics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询系统支持的指标
    @inlinable
    public func describeAvailableMetrics(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableMetricsResponse> {
        self.describeAvailableMetrics(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询系统支持的指标
    @inlinable
    public func describeAvailableMetrics(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableMetricsResponse {
        try await self.describeAvailableMetrics(.init(), region: region, logger: logger, on: eventLoop)
    }
}
