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
    /// DescribeTaskByCycleReport请求参数结构体
    public struct DescribeTaskByCycleReportRequest: TCRequestModel {
        /// 项目id
        public let projectId: String

        /// 任务周期类型
        public let type: String?

        /// 开始时间
        public let startTime: String?

        /// 结束时间
        public let endTime: String?

        public init(projectId: String, type: String? = nil, startTime: String? = nil, endTime: String? = nil) {
            self.projectId = projectId
            self.type = type
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case type = "Type"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeTaskByCycleReport返回参数结构体
    public struct DescribeTaskByCycleReportResponse: TCResponseModel {
        /// 任务周期增长趋势统计
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TaskByStatus]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 任务状态周期增长趋势
    @inlinable
    public func describeTaskByCycleReport(_ input: DescribeTaskByCycleReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskByCycleReportResponse> {
        self.client.execute(action: "DescribeTaskByCycleReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 任务状态周期增长趋势
    @inlinable
    public func describeTaskByCycleReport(_ input: DescribeTaskByCycleReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskByCycleReportResponse {
        try await self.client.execute(action: "DescribeTaskByCycleReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 任务状态周期增长趋势
    @inlinable
    public func describeTaskByCycleReport(projectId: String, type: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskByCycleReportResponse> {
        self.describeTaskByCycleReport(.init(projectId: projectId, type: type, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 任务状态周期增长趋势
    @inlinable
    public func describeTaskByCycleReport(projectId: String, type: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskByCycleReportResponse {
        try await self.describeTaskByCycleReport(.init(projectId: projectId, type: type, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}