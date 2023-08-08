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

extension Live {
    /// DescribeMonitorReport请求参数结构体
    public struct DescribeMonitorReportRequest: TCRequestModel {
        /// 监播任务ID。
        public let monitorId: String

        public init(monitorId: String) {
            self.monitorId = monitorId
        }

        enum CodingKeys: String, CodingKey {
            case monitorId = "MonitorId"
        }
    }

    /// DescribeMonitorReport返回参数结构体
    public struct DescribeMonitorReportResponse: TCResponseModel {
        /// 媒体处理结果信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mpsResult: MPSResult?

        /// 媒体诊断结果信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let diagnoseResult: DiagnoseResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mpsResult = "MPSResult"
            case diagnoseResult = "DiagnoseResult"
            case requestId = "RequestId"
        }
    }

    /// 查询监播报告
    ///
    /// 用来查询监播场次7天内的智能识别、断流、低帧率等信息的汇总报告。
    @inlinable
    public func describeMonitorReport(_ input: DescribeMonitorReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMonitorReportResponse> {
        self.client.execute(action: "DescribeMonitorReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询监播报告
    ///
    /// 用来查询监播场次7天内的智能识别、断流、低帧率等信息的汇总报告。
    @inlinable
    public func describeMonitorReport(_ input: DescribeMonitorReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMonitorReportResponse {
        try await self.client.execute(action: "DescribeMonitorReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询监播报告
    ///
    /// 用来查询监播场次7天内的智能识别、断流、低帧率等信息的汇总报告。
    @inlinable
    public func describeMonitorReport(monitorId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMonitorReportResponse> {
        self.describeMonitorReport(.init(monitorId: monitorId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询监播报告
    ///
    /// 用来查询监播场次7天内的智能识别、断流、低帧率等信息的汇总报告。
    @inlinable
    public func describeMonitorReport(monitorId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMonitorReportResponse {
        try await self.describeMonitorReport(.init(monitorId: monitorId), region: region, logger: logger, on: eventLoop)
    }
}
