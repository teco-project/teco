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

extension Tcb {
    /// DescribeGatewayCurveData请求参数结构体
    public struct DescribeGatewayCurveDataRequest: TCRequest {
        /// 环境id
        public let envId: String

        /// 网关id
        public let gatewayId: String

        /// 监控类型 GWQps GWBandwidth GwHttpError GwHttp404 GwHttp502 GwConnect GwCircuit
        public let metricName: String

        /// 监控起始时间
        public let startTime: String

        /// 监控结束时间
        public let endTime: String

        /// 网关版本
        public let gatewayVersion: String?

        /// 网关路由名称
        public let gatewayRoute: String?

        public init(envId: String, gatewayId: String, metricName: String, startTime: String, endTime: String, gatewayVersion: String? = nil, gatewayRoute: String? = nil) {
            self.envId = envId
            self.gatewayId = gatewayId
            self.metricName = metricName
            self.startTime = startTime
            self.endTime = endTime
            self.gatewayVersion = gatewayVersion
            self.gatewayRoute = gatewayRoute
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case gatewayId = "GatewayId"
            case metricName = "MetricName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case gatewayVersion = "GatewayVersion"
            case gatewayRoute = "GatewayRoute"
        }
    }

    /// DescribeGatewayCurveData返回参数结构体
    public struct DescribeGatewayCurveDataResponse: TCResponse {
        /// 监控类型
        public let metricName: String

        /// 监控起始时间
        public let startTime: String

        /// 监控结束时间
        public let endTime: String

        /// 监控数据间隔
        public let period: Int64

        /// 监控值
        public let values: [Float]

        /// 监控时间
        public let time: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metricName = "MetricName"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case period = "Period"
            case values = "Values"
            case time = "Time"
            case requestId = "RequestId"
        }
    }

    /// 查询网关监控数据
    @inlinable
    public func describeGatewayCurveData(_ input: DescribeGatewayCurveDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayCurveDataResponse> {
        self.client.execute(action: "DescribeGatewayCurveData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网关监控数据
    @inlinable
    public func describeGatewayCurveData(_ input: DescribeGatewayCurveDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayCurveDataResponse {
        try await self.client.execute(action: "DescribeGatewayCurveData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网关监控数据
    @inlinable
    public func describeGatewayCurveData(envId: String, gatewayId: String, metricName: String, startTime: String, endTime: String, gatewayVersion: String? = nil, gatewayRoute: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayCurveDataResponse> {
        self.describeGatewayCurveData(.init(envId: envId, gatewayId: gatewayId, metricName: metricName, startTime: startTime, endTime: endTime, gatewayVersion: gatewayVersion, gatewayRoute: gatewayRoute), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网关监控数据
    @inlinable
    public func describeGatewayCurveData(envId: String, gatewayId: String, metricName: String, startTime: String, endTime: String, gatewayVersion: String? = nil, gatewayRoute: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayCurveDataResponse {
        try await self.describeGatewayCurveData(.init(envId: envId, gatewayId: gatewayId, metricName: metricName, startTime: startTime, endTime: endTime, gatewayVersion: gatewayVersion, gatewayRoute: gatewayRoute), region: region, logger: logger, on: eventLoop)
    }
}
