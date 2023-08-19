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
    /// ExportBaselineFixList请求参数结构体
    public struct ExportBaselineFixListRequest: TCRequest {
        /// - ItemName - String - 是否必填：否 - 项名称
        public let filters: [Filter]?

        /// 0:过滤的结果导出；1:全部导出
        public let exportAll: Int64?

        public init(filters: [Filter]? = nil, exportAll: Int64? = nil) {
            self.filters = filters
            self.exportAll = exportAll
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case exportAll = "ExportAll"
        }
    }

    /// ExportBaselineFixList返回参数结构体
    public struct ExportBaselineFixListResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 导出修复列表
    @inlinable @discardableResult
    public func exportBaselineFixList(_ input: ExportBaselineFixListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBaselineFixListResponse> {
        self.client.execute(action: "ExportBaselineFixList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出修复列表
    @inlinable @discardableResult
    public func exportBaselineFixList(_ input: ExportBaselineFixListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBaselineFixListResponse {
        try await self.client.execute(action: "ExportBaselineFixList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出修复列表
    @inlinable @discardableResult
    public func exportBaselineFixList(filters: [Filter]? = nil, exportAll: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBaselineFixListResponse> {
        self.exportBaselineFixList(.init(filters: filters, exportAll: exportAll), region: region, logger: logger, on: eventLoop)
    }

    /// 导出修复列表
    @inlinable @discardableResult
    public func exportBaselineFixList(filters: [Filter]? = nil, exportAll: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBaselineFixListResponse {
        try await self.exportBaselineFixList(.init(filters: filters, exportAll: exportAll), region: region, logger: logger, on: eventLoop)
    }
}
