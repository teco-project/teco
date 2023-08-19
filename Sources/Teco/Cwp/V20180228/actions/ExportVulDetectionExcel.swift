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

extension Cwp {
    /// ExportVulDetectionExcel请求参数结构体
    public struct ExportVulDetectionExcelRequest: TCRequest {
        /// 本次漏洞检测任务id（不同于出参的导出本次漏洞检测Excel的任务Id）
        public let taskId: UInt64

        public init(taskId: UInt64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// ExportVulDetectionExcel返回参数结构体
    public struct ExportVulDetectionExcelResponse: TCResponse {
        /// 该参数已废弃
        public let downloadUrl: String

        /// 任务ID,需要到接口“异步导出任务”ExportTasks获取DownloadUrl下载地址（不同于入参的本次漏洞检测任务id）
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出本次漏洞检测Excel
    @inlinable
    public func exportVulDetectionExcel(_ input: ExportVulDetectionExcelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVulDetectionExcelResponse> {
        self.client.execute(action: "ExportVulDetectionExcel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出本次漏洞检测Excel
    @inlinable
    public func exportVulDetectionExcel(_ input: ExportVulDetectionExcelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVulDetectionExcelResponse {
        try await self.client.execute(action: "ExportVulDetectionExcel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出本次漏洞检测Excel
    @inlinable
    public func exportVulDetectionExcel(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVulDetectionExcelResponse> {
        self.exportVulDetectionExcel(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 导出本次漏洞检测Excel
    @inlinable
    public func exportVulDetectionExcel(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVulDetectionExcelResponse {
        try await self.exportVulDetectionExcel(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
