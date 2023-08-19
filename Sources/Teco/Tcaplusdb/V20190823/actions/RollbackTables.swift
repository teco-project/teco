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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Tcaplusdb {
    /// RollbackTables请求参数结构体
    public struct RollbackTablesRequest: TCRequest {
        /// 待回档表格所在集群ID
        public let clusterId: String

        /// 待回档表格列表
        public let selectedTables: [SelectedTableInfoNew]

        /// 待回档时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var rollbackTime: Date

        /// 回档模式，支持：`KEYS`
        public let mode: String?

        public init(clusterId: String, selectedTables: [SelectedTableInfoNew], rollbackTime: Date, mode: String? = nil) {
            self.clusterId = clusterId
            self.selectedTables = selectedTables
            self._rollbackTime = .init(wrappedValue: rollbackTime)
            self.mode = mode
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case selectedTables = "SelectedTables"
            case rollbackTime = "RollbackTime"
            case mode = "Mode"
        }
    }

    /// RollbackTables返回参数结构体
    public struct RollbackTablesResponse: TCResponse {
        /// 表格回档任务结果数量
        public let totalCount: UInt64

        /// 表格回档任务结果列表
        public let tableResults: [TableRollbackResultNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }

    /// 表格数据回档
    @inlinable
    public func rollbackTables(_ input: RollbackTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RollbackTablesResponse> {
        self.client.execute(action: "RollbackTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 表格数据回档
    @inlinable
    public func rollbackTables(_ input: RollbackTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollbackTablesResponse {
        try await self.client.execute(action: "RollbackTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 表格数据回档
    @inlinable
    public func rollbackTables(clusterId: String, selectedTables: [SelectedTableInfoNew], rollbackTime: Date, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RollbackTablesResponse> {
        self.rollbackTables(.init(clusterId: clusterId, selectedTables: selectedTables, rollbackTime: rollbackTime, mode: mode), region: region, logger: logger, on: eventLoop)
    }

    /// 表格数据回档
    @inlinable
    public func rollbackTables(clusterId: String, selectedTables: [SelectedTableInfoNew], rollbackTime: Date, mode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RollbackTablesResponse {
        try await self.rollbackTables(.init(clusterId: clusterId, selectedTables: selectedTables, rollbackTime: rollbackTime, mode: mode), region: region, logger: logger, on: eventLoop)
    }
}
