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
    /// ExportBaselineItemList请求参数结构体
    public struct ExportBaselineItemListRequest: TCRequestModel {
        /// <li>PolicyId - int64 - 是否必填：否 - 策略Id</li>
        /// <li>RuleId - int64 - 是否必填：否 - 规则Id</li>
        /// <li>HostId - string - 是否必填：否 - 主机Id</li>
        /// <li>HostName - string - 是否必填：否 - 主机名</li>
        /// <li>HostIp - string - 是否必填：否 - 主机IP</li>
        /// <li>ItemId - String - 是否必填：否 - 检测项Id</li>
        /// <li>ItemName - String - 是否必填：否 - 项名称</li>
        /// <li>DetectStatus - int - 是否必填：否 - 检测状态[0:未通过|3:通过|5:检测中]</li>
        /// <li>Level - int - 是否必填：否 - 风险等级</li>
        /// <li>StartTime - string - 是否必填：否 - 开时时间</li>
        /// <li>EndTime - string - 是否必填：否 - 结束时间</li>
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

    /// ExportBaselineItemList返回参数结构体
    public struct ExportBaselineItemListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 导出检测项结果列表
    @inlinable @discardableResult
    public func exportBaselineItemList(_ input: ExportBaselineItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBaselineItemListResponse> {
        self.client.execute(action: "ExportBaselineItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出检测项结果列表
    @inlinable @discardableResult
    public func exportBaselineItemList(_ input: ExportBaselineItemListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBaselineItemListResponse {
        try await self.client.execute(action: "ExportBaselineItemList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出检测项结果列表
    @inlinable @discardableResult
    public func exportBaselineItemList(filters: [Filter]? = nil, exportAll: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBaselineItemListResponse> {
        self.exportBaselineItemList(.init(filters: filters, exportAll: exportAll), region: region, logger: logger, on: eventLoop)
    }

    /// 导出检测项结果列表
    @inlinable @discardableResult
    public func exportBaselineItemList(filters: [Filter]? = nil, exportAll: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBaselineItemListResponse {
        try await self.exportBaselineItemList(.init(filters: filters, exportAll: exportAll), region: region, logger: logger, on: eventLoop)
    }
}
