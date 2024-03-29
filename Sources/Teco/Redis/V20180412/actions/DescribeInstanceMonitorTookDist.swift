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

extension Redis {
    /// DescribeInstanceMonitorTookDist请求参数结构体
    public struct DescribeInstanceMonitorTookDistRequest: TCRequest {
        /// 实例Id
        public let instanceId: String

        /// 时间；例如："20190219"
        public let date: String

        /// 时间范围：1——实时，2——近30分钟，3——近6小时，4——近24小时
        public let spanType: Int64

        public init(instanceId: String, date: String, spanType: Int64) {
            self.instanceId = instanceId
            self.date = date
            self.spanType = spanType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case date = "Date"
            case spanType = "SpanType"
        }
    }

    /// DescribeInstanceMonitorTookDist返回参数结构体
    public struct DescribeInstanceMonitorTookDistResponse: TCResponse {
        /// 时延分布信息
        public let data: [DelayDistribution]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询实例访问的耗时分布
    @inlinable
    public func describeInstanceMonitorTookDist(_ input: DescribeInstanceMonitorTookDistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceMonitorTookDistResponse> {
        self.client.execute(action: "DescribeInstanceMonitorTookDist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例访问的耗时分布
    @inlinable
    public func describeInstanceMonitorTookDist(_ input: DescribeInstanceMonitorTookDistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorTookDistResponse {
        try await self.client.execute(action: "DescribeInstanceMonitorTookDist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例访问的耗时分布
    @inlinable
    public func describeInstanceMonitorTookDist(instanceId: String, date: String, spanType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceMonitorTookDistResponse> {
        self.describeInstanceMonitorTookDist(.init(instanceId: instanceId, date: date, spanType: spanType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例访问的耗时分布
    @inlinable
    public func describeInstanceMonitorTookDist(instanceId: String, date: String, spanType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceMonitorTookDistResponse {
        try await self.describeInstanceMonitorTookDist(.init(instanceId: instanceId, date: date, spanType: spanType), region: region, logger: logger, on: eventLoop)
    }
}
