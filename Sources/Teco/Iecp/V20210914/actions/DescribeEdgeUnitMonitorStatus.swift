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

extension Iecp {
    /// DescribeEdgeUnitMonitorStatus请求参数结构体
    public struct DescribeEdgeUnitMonitorStatusRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        public init(edgeUnitId: UInt64) {
            self.edgeUnitId = edgeUnitId
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
        }
    }

    /// DescribeEdgeUnitMonitorStatus返回参数结构体
    public struct DescribeEdgeUnitMonitorStatusResponse: TCResponseModel {
        /// 监控状态描述：
        /// "running" 单元监控正常运行
        /// "deploying" 单元监控部署中
        /// "norsc" 单元需要可用节点以部署监控
        /// "abnormal" 单元监控异常
        /// "none" 单元监控不可用
        public let monitorStatus: String

        /// 监控是否就绪
        public let isAvailable: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case monitorStatus = "MonitorStatus"
            case isAvailable = "IsAvailable"
            case requestId = "RequestId"
        }
    }

    /// 查询边缘集群监控状态
    @inlinable
    public func describeEdgeUnitMonitorStatus(_ input: DescribeEdgeUnitMonitorStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitMonitorStatusResponse> {
        self.client.execute(action: "DescribeEdgeUnitMonitorStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘集群监控状态
    @inlinable
    public func describeEdgeUnitMonitorStatus(_ input: DescribeEdgeUnitMonitorStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitMonitorStatusResponse {
        try await self.client.execute(action: "DescribeEdgeUnitMonitorStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘集群监控状态
    @inlinable
    public func describeEdgeUnitMonitorStatus(edgeUnitId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitMonitorStatusResponse> {
        self.describeEdgeUnitMonitorStatus(DescribeEdgeUnitMonitorStatusRequest(edgeUnitId: edgeUnitId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘集群监控状态
    @inlinable
    public func describeEdgeUnitMonitorStatus(edgeUnitId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitMonitorStatusResponse {
        try await self.describeEdgeUnitMonitorStatus(DescribeEdgeUnitMonitorStatusRequest(edgeUnitId: edgeUnitId), region: region, logger: logger, on: eventLoop)
    }
}
