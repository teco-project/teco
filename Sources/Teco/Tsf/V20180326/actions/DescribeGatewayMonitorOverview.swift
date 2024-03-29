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
    /// DescribeGatewayMonitorOverview请求参数结构体
    public struct DescribeGatewayMonitorOverviewRequest: TCRequest {
        /// 网关部署组ID
        public let gatewayDeployGroupId: String

        public init(gatewayDeployGroupId: String) {
            self.gatewayDeployGroupId = gatewayDeployGroupId
        }

        enum CodingKeys: String, CodingKey {
            case gatewayDeployGroupId = "GatewayDeployGroupId"
        }
    }

    /// DescribeGatewayMonitorOverview返回参数结构体
    public struct DescribeGatewayMonitorOverviewResponse: TCResponse {
        /// 监控概览对象
        public let result: MonitorOverview

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询网关监控概览
    @inlinable
    public func describeGatewayMonitorOverview(_ input: DescribeGatewayMonitorOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayMonitorOverviewResponse> {
        self.client.execute(action: "DescribeGatewayMonitorOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网关监控概览
    @inlinable
    public func describeGatewayMonitorOverview(_ input: DescribeGatewayMonitorOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayMonitorOverviewResponse {
        try await self.client.execute(action: "DescribeGatewayMonitorOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网关监控概览
    @inlinable
    public func describeGatewayMonitorOverview(gatewayDeployGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayMonitorOverviewResponse> {
        self.describeGatewayMonitorOverview(.init(gatewayDeployGroupId: gatewayDeployGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网关监控概览
    @inlinable
    public func describeGatewayMonitorOverview(gatewayDeployGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayMonitorOverviewResponse {
        try await self.describeGatewayMonitorOverview(.init(gatewayDeployGroupId: gatewayDeployGroupId), region: region, logger: logger, on: eventLoop)
    }
}
