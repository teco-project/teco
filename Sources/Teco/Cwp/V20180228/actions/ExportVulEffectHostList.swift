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
    /// ExportVulEffectHostList请求参数结构体
    public struct ExportVulEffectHostListRequest: TCRequestModel {
        /// 漏洞id
        public let vulId: UInt64

        /// 过滤条件。
        /// <li>AliasName - String - 主机名筛选</li>
        public let filters: [Filter]?

        public init(vulId: UInt64, filters: [Filter]? = nil) {
            self.vulId = vulId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case vulId = "VulId"
            case filters = "Filters"
        }
    }

    /// ExportVulEffectHostList返回参数结构体
    public struct ExportVulEffectHostListResponse: TCResponseModel {
        /// 已废弃
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrl: String?

        /// 导出任务Id , 可通过ExportTasks 接口下载
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出漏洞影响主机列表
    @inlinable
    public func exportVulEffectHostList(_ input: ExportVulEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVulEffectHostListResponse> {
        self.client.execute(action: "ExportVulEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出漏洞影响主机列表
    @inlinable
    public func exportVulEffectHostList(_ input: ExportVulEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVulEffectHostListResponse {
        try await self.client.execute(action: "ExportVulEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出漏洞影响主机列表
    @inlinable
    public func exportVulEffectHostList(vulId: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVulEffectHostListResponse> {
        self.exportVulEffectHostList(.init(vulId: vulId, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 导出漏洞影响主机列表
    @inlinable
    public func exportVulEffectHostList(vulId: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVulEffectHostListResponse {
        try await self.exportVulEffectHostList(.init(vulId: vulId, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
