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

extension Tcaplusdb {
    /// CreateTables请求参数结构体
    public struct CreateTablesRequest: TCRequestModel {
        /// 待创建表格所属集群ID
        public let clusterId: String

        /// 用户选定的建表格IDL文件列表
        public let idlFiles: [IdlFileInfo]

        /// 待创建表格信息列表
        public let selectedTables: [SelectedTableInfoNew]

        /// 表格标签列表
        public let resourceTags: [TagInfoUnit]?

        public init(clusterId: String, idlFiles: [IdlFileInfo], selectedTables: [SelectedTableInfoNew], resourceTags: [TagInfoUnit]? = nil) {
            self.clusterId = clusterId
            self.idlFiles = idlFiles
            self.selectedTables = selectedTables
            self.resourceTags = resourceTags
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case idlFiles = "IdlFiles"
            case selectedTables = "SelectedTables"
            case resourceTags = "ResourceTags"
        }
    }

    /// CreateTables返回参数结构体
    public struct CreateTablesResponse: TCResponseModel {
        /// 批量创建表格结果数量
        public let totalCount: UInt64

        /// 批量创建表格结果列表
        public let tableResults: [TableResultNew]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tableResults = "TableResults"
            case requestId = "RequestId"
        }
    }

    /// 批量创建表
    ///
    /// 根据选择的IDL文件列表，批量创建表格
    @inlinable
    public func createTables(_ input: CreateTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTablesResponse> {
        self.client.execute(action: "CreateTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量创建表
    ///
    /// 根据选择的IDL文件列表，批量创建表格
    @inlinable
    public func createTables(_ input: CreateTablesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTablesResponse {
        try await self.client.execute(action: "CreateTables", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量创建表
    ///
    /// 根据选择的IDL文件列表，批量创建表格
    @inlinable
    public func createTables(clusterId: String, idlFiles: [IdlFileInfo], selectedTables: [SelectedTableInfoNew], resourceTags: [TagInfoUnit]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTablesResponse> {
        self.createTables(.init(clusterId: clusterId, idlFiles: idlFiles, selectedTables: selectedTables, resourceTags: resourceTags), region: region, logger: logger, on: eventLoop)
    }

    /// 批量创建表
    ///
    /// 根据选择的IDL文件列表，批量创建表格
    @inlinable
    public func createTables(clusterId: String, idlFiles: [IdlFileInfo], selectedTables: [SelectedTableInfoNew], resourceTags: [TagInfoUnit]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTablesResponse {
        try await self.createTables(.init(clusterId: clusterId, idlFiles: idlFiles, selectedTables: selectedTables, resourceTags: resourceTags), region: region, logger: logger, on: eventLoop)
    }
}
