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

extension Tcaplusdb {
    /// ModifyTables请求参数结构体
    public struct ModifyTablesRequest: TCRequestModel {
        /// 待修改表格所在集群ID
        public let clusterId: String

        /// 选中的改表IDL文件
        public let idlFiles: [IdlFileInfo]

        /// 待改表格列表
        public let selectedTables: [SelectedTableInfoNew]

        public init(clusterId: String, idlFiles: [IdlFileInfo], selectedTables: [SelectedTableInfoNew]) {
            self.clusterId = clusterId
            self.idlFiles = idlFiles
            self.selectedTables = selectedTables
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case idlFiles = "IdlFiles"
            case selectedTables = "SelectedTables"
        }
    }

    /// ModifyTables返回参数结构体
    public struct ModifyTablesResponse: TCResponseModel {
        /// 修改表结果数量
        public let totalCount: UInt64

        /// 修改表结果列表
        public let tableResults: [TableResultNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }

    /// 批量修改表结构
    ///
    /// 根据用户选定的表定义IDL文件，批量修改指定的表
    @inlinable
    public func modifyTables(_ input: ModifyTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTablesResponse> {
        self.client.execute(action: "ModifyTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量修改表结构
    ///
    /// 根据用户选定的表定义IDL文件，批量修改指定的表
    @inlinable
    public func modifyTables(_ input: ModifyTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTablesResponse {
        try await self.client.execute(action: "ModifyTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量修改表结构
    ///
    /// 根据用户选定的表定义IDL文件，批量修改指定的表
    @inlinable
    public func modifyTables(clusterId: String, idlFiles: [IdlFileInfo], selectedTables: [SelectedTableInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTablesResponse> {
        self.modifyTables(.init(clusterId: clusterId, idlFiles: idlFiles, selectedTables: selectedTables), region: region, logger: logger, on: eventLoop)
    }

    /// 批量修改表结构
    ///
    /// 根据用户选定的表定义IDL文件，批量修改指定的表
    @inlinable
    public func modifyTables(clusterId: String, idlFiles: [IdlFileInfo], selectedTables: [SelectedTableInfoNew], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTablesResponse {
        try await self.modifyTables(.init(clusterId: clusterId, idlFiles: idlFiles, selectedTables: selectedTables), region: region, logger: logger, on: eventLoop)
    }
}
