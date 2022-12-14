//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// ExportBaselineEffectHostList请求参数结构体
    public struct ExportBaselineEffectHostListRequest: TCRequestModel {
        /// 基线id
        public let baselineId: UInt64

        /// 筛选条件
        /// <li>AliasName- String- 主机别名</li>
        public let filters: [Filters]?

        /// 策略id
        public let strategyId: UInt64?

        /// 主机uuid数组
        public let uuidList: [String]?

        /// 基线名称
        public let baselineName: String?

        public init(baselineId: UInt64, filters: [Filters]? = nil, strategyId: UInt64? = nil, uuidList: [String]? = nil, baselineName: String? = nil) {
            self.baselineId = baselineId
            self.filters = filters
            self.strategyId = strategyId
            self.uuidList = uuidList
            self.baselineName = baselineName
        }

        enum CodingKeys: String, CodingKey {
            case baselineId = "BaselineId"
            case filters = "Filters"
            case strategyId = "StrategyId"
            case uuidList = "UuidList"
            case baselineName = "BaselineName"
        }
    }

    /// ExportBaselineEffectHostList返回参数结构体
    public struct ExportBaselineEffectHostListResponse: TCResponseModel {
        /// 下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrl: String?

        /// 导出任务id 可通过 ExportTasks接口下载
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 基线影响主机列表导出
    ///
    /// 导出基线影响主机列表
    @inlinable
    public func exportBaselineEffectHostList(_ input: ExportBaselineEffectHostListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExportBaselineEffectHostListResponse > {
        self.client.execute(action: "ExportBaselineEffectHostList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 基线影响主机列表导出
    ///
    /// 导出基线影响主机列表
    @inlinable
    public func exportBaselineEffectHostList(_ input: ExportBaselineEffectHostListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBaselineEffectHostListResponse {
        try await self.client.execute(action: "ExportBaselineEffectHostList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 基线影响主机列表导出
    ///
    /// 导出基线影响主机列表
    @inlinable
    public func exportBaselineEffectHostList(baselineId: UInt64, filters: [Filters]? = nil, strategyId: UInt64? = nil, uuidList: [String]? = nil, baselineName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ExportBaselineEffectHostListResponse > {
        self.exportBaselineEffectHostList(ExportBaselineEffectHostListRequest(baselineId: baselineId, filters: filters, strategyId: strategyId, uuidList: uuidList, baselineName: baselineName), logger: logger, on: eventLoop)
    }

    /// 基线影响主机列表导出
    ///
    /// 导出基线影响主机列表
    @inlinable
    public func exportBaselineEffectHostList(baselineId: UInt64, filters: [Filters]? = nil, strategyId: UInt64? = nil, uuidList: [String]? = nil, baselineName: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBaselineEffectHostListResponse {
        try await self.exportBaselineEffectHostList(ExportBaselineEffectHostListRequest(baselineId: baselineId, filters: filters, strategyId: strategyId, uuidList: uuidList, baselineName: baselineName), logger: logger, on: eventLoop)
    }
}
