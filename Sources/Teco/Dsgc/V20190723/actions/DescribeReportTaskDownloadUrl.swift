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

extension Dsgc {
    /// DescribeReportTaskDownloadUrl请求参数结构体
    public struct DescribeReportTaskDownloadUrlRequest: TCRequest {
        /// 任务id
        public let reportTaskId: UInt64

        /// dspa实例id
        public let dspaId: String

        /// 是否同时下载敏感资产详情报告
        public let isWithSensitiveDetailReport: Bool?

        public init(reportTaskId: UInt64, dspaId: String, isWithSensitiveDetailReport: Bool? = nil) {
            self.reportTaskId = reportTaskId
            self.dspaId = dspaId
            self.isWithSensitiveDetailReport = isWithSensitiveDetailReport
        }

        enum CodingKeys: String, CodingKey {
            case reportTaskId = "ReportTaskId"
            case dspaId = "DspaId"
            case isWithSensitiveDetailReport = "IsWithSensitiveDetailReport"
        }
    }

    /// DescribeReportTaskDownloadUrl返回参数结构体
    public struct DescribeReportTaskDownloadUrlResponse: TCResponse {
        /// 下载链接集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrlSet: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrlSet = "DownloadUrlSet"
            case requestId = "RequestId"
        }
    }

    /// 获取报表下载链接
    @inlinable
    public func describeReportTaskDownloadUrl(_ input: DescribeReportTaskDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReportTaskDownloadUrlResponse> {
        self.client.execute(action: "DescribeReportTaskDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取报表下载链接
    @inlinable
    public func describeReportTaskDownloadUrl(_ input: DescribeReportTaskDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReportTaskDownloadUrlResponse {
        try await self.client.execute(action: "DescribeReportTaskDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取报表下载链接
    @inlinable
    public func describeReportTaskDownloadUrl(reportTaskId: UInt64, dspaId: String, isWithSensitiveDetailReport: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReportTaskDownloadUrlResponse> {
        self.describeReportTaskDownloadUrl(.init(reportTaskId: reportTaskId, dspaId: dspaId, isWithSensitiveDetailReport: isWithSensitiveDetailReport), region: region, logger: logger, on: eventLoop)
    }

    /// 获取报表下载链接
    @inlinable
    public func describeReportTaskDownloadUrl(reportTaskId: UInt64, dspaId: String, isWithSensitiveDetailReport: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReportTaskDownloadUrlResponse {
        try await self.describeReportTaskDownloadUrl(.init(reportTaskId: reportTaskId, dspaId: dspaId, isWithSensitiveDetailReport: isWithSensitiveDetailReport), region: region, logger: logger, on: eventLoop)
    }
}
