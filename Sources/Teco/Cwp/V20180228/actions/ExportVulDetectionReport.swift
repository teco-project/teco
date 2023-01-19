//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cwp {
    /// ExportVulDetectionReport请求参数结构体
    public struct ExportVulDetectionReportRequest: TCRequestModel {
        /// 漏洞扫描任务id（不同于出参的导出检测报告的任务Id）
        public let taskId: UInt64

        /// 过滤参数
        public let filters: [Filters]?

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(taskId: UInt64, filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.taskId = taskId
            self.filters = filters
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// ExportVulDetectionReport返回参数结构体
    public struct ExportVulDetectionReportResponse: TCResponseModel {
        /// 导出文件下载链接地址
        public let downloadUrl: String

        /// 导出检测报告的任务Id（不同于入参的漏洞扫描任务id）
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出漏洞检测报告
    ///
    /// 导出漏洞检测报告。
    @inlinable
    public func exportVulDetectionReport(_ input: ExportVulDetectionReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVulDetectionReportResponse> {
        self.client.execute(action: "ExportVulDetectionReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出漏洞检测报告
    ///
    /// 导出漏洞检测报告。
    @inlinable
    public func exportVulDetectionReport(_ input: ExportVulDetectionReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVulDetectionReportResponse {
        try await self.client.execute(action: "ExportVulDetectionReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出漏洞检测报告
    ///
    /// 导出漏洞检测报告。
    @inlinable
    public func exportVulDetectionReport(taskId: UInt64, filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVulDetectionReportResponse> {
        self.exportVulDetectionReport(ExportVulDetectionReportRequest(taskId: taskId, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 导出漏洞检测报告
    ///
    /// 导出漏洞检测报告。
    @inlinable
    public func exportVulDetectionReport(taskId: UInt64, filters: [Filters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVulDetectionReportResponse {
        try await self.exportVulDetectionReport(ExportVulDetectionReportRequest(taskId: taskId, filters: filters, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
