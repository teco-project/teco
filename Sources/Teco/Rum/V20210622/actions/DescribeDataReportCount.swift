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

extension Rum {
    /// DescribeDataReportCount请求参数结构体
    public struct DescribeDataReportCountRequest: TCRequest {
        /// 开始时间
        public let startTime: Int64

        /// 结束时间
        public let endTime: Int64

        /// 项目ID
        public let id: Int64?

        /// 上报类型
        public let reportType: String?

        /// 实例ID
        public let instanceID: String?

        public init(startTime: Int64, endTime: Int64, id: Int64? = nil, reportType: String? = nil, instanceID: String? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.id = id
            self.reportType = reportType
            self.instanceID = instanceID
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case id = "ID"
            case reportType = "ReportType"
            case instanceID = "InstanceID"
        }
    }

    /// DescribeDataReportCount返回参数结构体
    public struct DescribeDataReportCountResponse: TCResponse {
        /// 返回值
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取上报量
    ///
    /// 获取项目上报量
    @inlinable
    public func describeDataReportCount(_ input: DescribeDataReportCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataReportCountResponse> {
        self.client.execute(action: "DescribeDataReportCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取上报量
    ///
    /// 获取项目上报量
    @inlinable
    public func describeDataReportCount(_ input: DescribeDataReportCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataReportCountResponse {
        try await self.client.execute(action: "DescribeDataReportCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取上报量
    ///
    /// 获取项目上报量
    @inlinable
    public func describeDataReportCount(startTime: Int64, endTime: Int64, id: Int64? = nil, reportType: String? = nil, instanceID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataReportCountResponse> {
        self.describeDataReportCount(.init(startTime: startTime, endTime: endTime, id: id, reportType: reportType, instanceID: instanceID), region: region, logger: logger, on: eventLoop)
    }

    /// 获取上报量
    ///
    /// 获取项目上报量
    @inlinable
    public func describeDataReportCount(startTime: Int64, endTime: Int64, id: Int64? = nil, reportType: String? = nil, instanceID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataReportCountResponse {
        try await self.describeDataReportCount(.init(startTime: startTime, endTime: endTime, id: id, reportType: reportType, instanceID: instanceID), region: region, logger: logger, on: eventLoop)
    }
}
