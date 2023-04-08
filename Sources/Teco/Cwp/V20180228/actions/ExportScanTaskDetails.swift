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

import TecoCore

extension Cwp {
    /// ExportScanTaskDetails请求参数结构体
    public struct ExportScanTaskDetailsRequest: TCRequestModel {
        /// 本次检测的任务id（不同于出参的导出本次检测Excel的任务Id）
        public let taskId: UInt64

        /// 模块类型，当前提供：Malware 木马 , Vul 漏洞 , Baseline 基线
        public let moduleType: String

        /// 过滤参数：ipOrAlias（服务器名/ip）
        public let filters: [Filters]?

        public init(taskId: UInt64, moduleType: String, filters: [Filters]? = nil) {
            self.taskId = taskId
            self.moduleType = moduleType
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case moduleType = "ModuleType"
            case filters = "Filters"
        }
    }

    /// ExportScanTaskDetails返回参数结构体
    public struct ExportScanTaskDetailsResponse: TCResponseModel {
        /// 任务ID,需要到接口“异步导出任务”ExportTasks获取DownloadUrl下载地址(不同于入参的本次检测任务id)
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出扫描任务详情
    ///
    /// 根据任务id导出指定扫描任务详情
    @inlinable
    public func exportScanTaskDetails(_ input: ExportScanTaskDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportScanTaskDetailsResponse> {
        self.client.execute(action: "ExportScanTaskDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出扫描任务详情
    ///
    /// 根据任务id导出指定扫描任务详情
    @inlinable
    public func exportScanTaskDetails(_ input: ExportScanTaskDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportScanTaskDetailsResponse {
        try await self.client.execute(action: "ExportScanTaskDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出扫描任务详情
    ///
    /// 根据任务id导出指定扫描任务详情
    @inlinable
    public func exportScanTaskDetails(taskId: UInt64, moduleType: String, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportScanTaskDetailsResponse> {
        self.exportScanTaskDetails(.init(taskId: taskId, moduleType: moduleType, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 导出扫描任务详情
    ///
    /// 根据任务id导出指定扫描任务详情
    @inlinable
    public func exportScanTaskDetails(taskId: UInt64, moduleType: String, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportScanTaskDetailsResponse {
        try await self.exportScanTaskDetails(.init(taskId: taskId, moduleType: moduleType, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
