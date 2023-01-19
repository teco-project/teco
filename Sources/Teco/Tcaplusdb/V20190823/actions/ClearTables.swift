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

extension Tcaplusdb {
    /// ClearTables请求参数结构体
    public struct ClearTablesRequest: TCRequestModel {
        /// 表所属集群实例ID
        public let clusterId: String

        /// 待清理表信息列表
        public let selectedTables: [SelectedTableInfoNew]

        public init(clusterId: String, selectedTables: [SelectedTableInfoNew]) {
            self.clusterId = clusterId
            self.selectedTables = selectedTables
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case selectedTables = "SelectedTables"
        }
    }

    /// ClearTables返回参数结构体
    public struct ClearTablesResponse: TCResponseModel {
        /// 清除表结果数量
        public let totalCount: UInt64

        /// 清除表结果列表
        public let tableResults: [TableResultNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }

    /// 清除表数据
    ///
    /// 根据给定的表信息，清除表数据。
    @inlinable
    public func clearTables(_ input: ClearTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearTablesResponse> {
        self.client.execute(action: "ClearTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 清除表数据
    ///
    /// 根据给定的表信息，清除表数据。
    @inlinable
    public func clearTables(_ input: ClearTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearTablesResponse {
        try await self.client.execute(action: "ClearTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 清除表数据
    ///
    /// 根据给定的表信息，清除表数据。
    @inlinable
    public func clearTables(clusterId: String, selectedTables: [SelectedTableInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearTablesResponse> {
        self.clearTables(ClearTablesRequest(clusterId: clusterId, selectedTables: selectedTables), region: region, logger: logger, on: eventLoop)
    }

    /// 清除表数据
    ///
    /// 根据给定的表信息，清除表数据。
    @inlinable
    public func clearTables(clusterId: String, selectedTables: [SelectedTableInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearTablesResponse {
        try await self.clearTables(ClearTablesRequest(clusterId: clusterId, selectedTables: selectedTables), region: region, logger: logger, on: eventLoop)
    }
}
