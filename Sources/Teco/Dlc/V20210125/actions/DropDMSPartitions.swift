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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dlc {
    /// DropDMSPartitions请求参数结构体
    public struct DropDMSPartitionsRequest: TCRequestModel {
        /// 数据库名称
        public let databaseName: String?

        /// 数据库Schema名称
        public let schemaName: String?

        /// 数据表名称
        public let tableName: String?

        /// 分区名称
        public let name: String?

        /// 单个分区名称
        public let values: [String]?

        /// 是否删除分区数据
        public let deleteData: Bool?

        public init(databaseName: String? = nil, schemaName: String? = nil, tableName: String? = nil, name: String? = nil, values: [String]? = nil, deleteData: Bool? = nil) {
            self.databaseName = databaseName
            self.schemaName = schemaName
            self.tableName = tableName
            self.name = name
            self.values = values
            self.deleteData = deleteData
        }

        enum CodingKeys: String, CodingKey {
            case databaseName = "DatabaseName"
            case schemaName = "SchemaName"
            case tableName = "TableName"
            case name = "Name"
            case values = "Values"
            case deleteData = "DeleteData"
        }
    }

    /// DropDMSPartitions返回参数结构体
    public struct DropDMSPartitionsResponse: TCResponseModel {
        /// 状态
        public let status: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// DMS元数据删除分区
    @inlinable
    public func dropDMSPartitions(_ input: DropDMSPartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DropDMSPartitionsResponse> {
        self.client.execute(action: "DropDMSPartitions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// DMS元数据删除分区
    @inlinable
    public func dropDMSPartitions(_ input: DropDMSPartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DropDMSPartitionsResponse {
        try await self.client.execute(action: "DropDMSPartitions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// DMS元数据删除分区
    @inlinable
    public func dropDMSPartitions(databaseName: String? = nil, schemaName: String? = nil, tableName: String? = nil, name: String? = nil, values: [String]? = nil, deleteData: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DropDMSPartitionsResponse> {
        self.dropDMSPartitions(.init(databaseName: databaseName, schemaName: schemaName, tableName: tableName, name: name, values: values, deleteData: deleteData), region: region, logger: logger, on: eventLoop)
    }

    /// DMS元数据删除分区
    @inlinable
    public func dropDMSPartitions(databaseName: String? = nil, schemaName: String? = nil, tableName: String? = nil, name: String? = nil, values: [String]? = nil, deleteData: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DropDMSPartitionsResponse {
        try await self.dropDMSPartitions(.init(databaseName: databaseName, schemaName: schemaName, tableName: tableName, name: name, values: values, deleteData: deleteData), region: region, logger: logger, on: eventLoop)
    }
}
