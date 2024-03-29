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
    /// ExportIgnoreRuleEffectHostList请求参数结构体
    public struct ExportIgnoreRuleEffectHostListRequest: TCRequest {
        /// 检测项id
        public let ruleId: UInt64

        /// 过滤条件。
        /// - AliasName- String- 主机别名
        public let filters: [Filters]?

        public init(ruleId: UInt64, filters: [Filters]? = nil) {
            self.ruleId = ruleId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case ruleId = "RuleId"
            case filters = "Filters"
        }
    }

    /// ExportIgnoreRuleEffectHostList返回参数结构体
    public struct ExportIgnoreRuleEffectHostListResponse: TCResponse {
        /// 该参数已废弃
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

    /// 忽略检测项影响主机列表导出
    ///
    /// 根据检测项id导出忽略检测项影响主机列表
    @inlinable
    public func exportIgnoreRuleEffectHostList(_ input: ExportIgnoreRuleEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportIgnoreRuleEffectHostListResponse> {
        self.client.execute(action: "ExportIgnoreRuleEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 忽略检测项影响主机列表导出
    ///
    /// 根据检测项id导出忽略检测项影响主机列表
    @inlinable
    public func exportIgnoreRuleEffectHostList(_ input: ExportIgnoreRuleEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportIgnoreRuleEffectHostListResponse {
        try await self.client.execute(action: "ExportIgnoreRuleEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 忽略检测项影响主机列表导出
    ///
    /// 根据检测项id导出忽略检测项影响主机列表
    @inlinable
    public func exportIgnoreRuleEffectHostList(ruleId: UInt64, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportIgnoreRuleEffectHostListResponse> {
        self.exportIgnoreRuleEffectHostList(.init(ruleId: ruleId, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 忽略检测项影响主机列表导出
    ///
    /// 根据检测项id导出忽略检测项影响主机列表
    @inlinable
    public func exportIgnoreRuleEffectHostList(ruleId: UInt64, filters: [Filters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportIgnoreRuleEffectHostListResponse {
        try await self.exportIgnoreRuleEffectHostList(.init(ruleId: ruleId, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
