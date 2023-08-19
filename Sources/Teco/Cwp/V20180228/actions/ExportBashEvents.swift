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
    /// ExportBashEvents请求参数结构体
    public struct ExportBashEventsRequest: TCRequest {
        /// 过滤参数
        public let filters: [Filters]?

        public init(filters: [Filters]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// ExportBashEvents返回参数结构体
    public struct ExportBashEventsResponse: TCResponse {
        /// 导出文件下载链接地址。
        public let downloadUrl: String

        /// 任务ID,需要到接口“异步导出任务”ExportTasks获取DownloadUrl下载地址
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出高危命令事件
    @inlinable
    public func exportBashEvents(_ input: ExportBashEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBashEventsResponse> {
        self.client.execute(action: "ExportBashEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出高危命令事件
    @inlinable
    public func exportBashEvents(_ input: ExportBashEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBashEventsResponse {
        try await self.client.execute(action: "ExportBashEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出高危命令事件
    @inlinable
    public func exportBashEvents(filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBashEventsResponse> {
        self.exportBashEvents(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 导出高危命令事件
    @inlinable
    public func exportBashEvents(filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBashEventsResponse {
        try await self.exportBashEvents(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
