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

extension Wedata {
    /// DescribeInstanceByCycleReport请求参数结构体
    public struct DescribeInstanceByCycleReportRequest: TCRequest {
        /// 周期类型
        public let type: String

        /// 项目ID
        public let projectId: String

        /// 开始日期
        public let startTime: String?

        /// 结束日期
        public let endTime: String?

        public init(type: String, projectId: String, startTime: String? = nil, endTime: String? = nil) {
            self.type = type
            self.projectId = projectId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case projectId = "ProjectId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeInstanceByCycleReport返回参数结构体
    public struct DescribeInstanceByCycleReportResponse: TCResponse {
        /// 实例周期统计
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TaskByStatus]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 实例状态周期增长趋势
    @inlinable
    public func describeInstanceByCycleReport(_ input: DescribeInstanceByCycleReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceByCycleReportResponse> {
        self.client.execute(action: "DescribeInstanceByCycleReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例状态周期增长趋势
    @inlinable
    public func describeInstanceByCycleReport(_ input: DescribeInstanceByCycleReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceByCycleReportResponse {
        try await self.client.execute(action: "DescribeInstanceByCycleReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例状态周期增长趋势
    @inlinable
    public func describeInstanceByCycleReport(type: String, projectId: String, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceByCycleReportResponse> {
        self.describeInstanceByCycleReport(.init(type: type, projectId: projectId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 实例状态周期增长趋势
    @inlinable
    public func describeInstanceByCycleReport(type: String, projectId: String, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceByCycleReportResponse {
        try await self.describeInstanceByCycleReport(.init(type: type, projectId: projectId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
