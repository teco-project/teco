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

extension Monitor {
    /// DescribePrometheusInstanceUsage请求参数结构体
    public struct DescribePrometheusInstanceUsageRequest: TCRequestModel {
        /// 按照一个或者多个实例ID查询。实例ID形如：prom-xxxxxxxx。请求的实例的上限为100。
        public let instanceIds: [String]

        /// 开始时间
        public let startCalcDate: String

        /// 结束时间
        public let endCalcDate: String

        public init(instanceIds: [String], startCalcDate: String, endCalcDate: String) {
            self.instanceIds = instanceIds
            self.startCalcDate = startCalcDate
            self.endCalcDate = endCalcDate
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case startCalcDate = "StartCalcDate"
            case endCalcDate = "EndCalcDate"
        }
    }

    /// DescribePrometheusInstanceUsage返回参数结构体
    public struct DescribePrometheusInstanceUsageResponse: TCResponseModel {
        /// 用量列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let usageSet: [PrometheusInstanceTenantUsage]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case usageSet = "UsageSet"
            case requestId = "RequestId"
        }
    }

    /// 查询Prometheus按量实例用量
    @inlinable
    public func describePrometheusInstanceUsage(_ input: DescribePrometheusInstanceUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstanceUsageResponse> {
        self.client.execute(action: "DescribePrometheusInstanceUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Prometheus按量实例用量
    @inlinable
    public func describePrometheusInstanceUsage(_ input: DescribePrometheusInstanceUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstanceUsageResponse {
        try await self.client.execute(action: "DescribePrometheusInstanceUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Prometheus按量实例用量
    @inlinable
    public func describePrometheusInstanceUsage(instanceIds: [String], startCalcDate: String, endCalcDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusInstanceUsageResponse> {
        self.describePrometheusInstanceUsage(.init(instanceIds: instanceIds, startCalcDate: startCalcDate, endCalcDate: endCalcDate), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Prometheus按量实例用量
    @inlinable
    public func describePrometheusInstanceUsage(instanceIds: [String], startCalcDate: String, endCalcDate: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusInstanceUsageResponse {
        try await self.describePrometheusInstanceUsage(.init(instanceIds: instanceIds, startCalcDate: startCalcDate, endCalcDate: endCalcDate), region: region, logger: logger, on: eventLoop)
    }
}
