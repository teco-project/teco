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

extension Wedata {
    /// GenHiveTableDDLSql请求参数结构体
    public struct GenHiveTableDDLSqlRequest: TCRequest {
        /// 项目id
        public let projectId: String

        /// 目标数据库
        public let sinkDatabase: String

        /// 节点id
        public let id: String?

        /// 元数据类型(MYSQL、ORACLE)
        public let msType: String?

        /// 数据源id
        public let datasourceId: String?

        /// 来源库
        public let sourceDatabase: String?

        /// 来源表
        public let tableName: String?

        /// 目标表元数据类型(HIVE、GBASE)
        public let sinkType: String?

        /// schema名称
        public let schemaName: String?

        /// 上游节点的字段信息
        public let sourceFieldInfoList: [SourceFieldInfo]?

        /// 分区字段
        public let partitions: [Partition]?

        /// 建表属性
        public let properties: [Property]?

        /// 建表模式，0:向导模式，1:ddl
        public let tableMode: Int64?

        /// DLC表版本，v1/v2
        public let tableVersion: String?

        /// 是否upsert写入
        public let upsertFlag: Bool?

        /// 表描述信息
        public let tableComment: String?

        /// 增加的文件数量阈值, 超过值将触发小文件合并
        public let addDataFiles: Int64?

        /// 增加的Equality delete数量阈值, 超过值将触发小文件合并
        public let addEqualityDeletes: Int64?

        /// 增加的Position delete数量阈值, 超过值将触发小文件合并
        public let addPositionDeletes: Int64?

        /// 增加的delete file数量阈值
        public let addDeleteFiles: Int64?

        /// 下游节点数据源ID
        public let targetDatasourceId: String?

        /// dlc upsert主键
        public let upsertKeys: [String]?

        /// dlc表治理信息
        public let tableBaseInfo: TableBaseInfo?

        public init(projectId: String, sinkDatabase: String, id: String? = nil, msType: String? = nil, datasourceId: String? = nil, sourceDatabase: String? = nil, tableName: String? = nil, sinkType: String? = nil, schemaName: String? = nil, sourceFieldInfoList: [SourceFieldInfo]? = nil, partitions: [Partition]? = nil, properties: [Property]? = nil, tableMode: Int64? = nil, tableVersion: String? = nil, upsertFlag: Bool? = nil, tableComment: String? = nil, addDataFiles: Int64? = nil, addEqualityDeletes: Int64? = nil, addPositionDeletes: Int64? = nil, addDeleteFiles: Int64? = nil, targetDatasourceId: String? = nil, upsertKeys: [String]? = nil, tableBaseInfo: TableBaseInfo? = nil) {
            self.projectId = projectId
            self.sinkDatabase = sinkDatabase
            self.id = id
            self.msType = msType
            self.datasourceId = datasourceId
            self.sourceDatabase = sourceDatabase
            self.tableName = tableName
            self.sinkType = sinkType
            self.schemaName = schemaName
            self.sourceFieldInfoList = sourceFieldInfoList
            self.partitions = partitions
            self.properties = properties
            self.tableMode = tableMode
            self.tableVersion = tableVersion
            self.upsertFlag = upsertFlag
            self.tableComment = tableComment
            self.addDataFiles = addDataFiles
            self.addEqualityDeletes = addEqualityDeletes
            self.addPositionDeletes = addPositionDeletes
            self.addDeleteFiles = addDeleteFiles
            self.targetDatasourceId = targetDatasourceId
            self.upsertKeys = upsertKeys
            self.tableBaseInfo = tableBaseInfo
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case sinkDatabase = "SinkDatabase"
            case id = "Id"
            case msType = "MsType"
            case datasourceId = "DatasourceId"
            case sourceDatabase = "SourceDatabase"
            case tableName = "TableName"
            case sinkType = "SinkType"
            case schemaName = "SchemaName"
            case sourceFieldInfoList = "SourceFieldInfoList"
            case partitions = "Partitions"
            case properties = "Properties"
            case tableMode = "TableMode"
            case tableVersion = "TableVersion"
            case upsertFlag = "UpsertFlag"
            case tableComment = "TableComment"
            case addDataFiles = "AddDataFiles"
            case addEqualityDeletes = "AddEqualityDeletes"
            case addPositionDeletes = "AddPositionDeletes"
            case addDeleteFiles = "AddDeleteFiles"
            case targetDatasourceId = "TargetDatasourceId"
            case upsertKeys = "UpsertKeys"
            case tableBaseInfo = "TableBaseInfo"
        }
    }

    /// GenHiveTableDDLSql返回参数结构体
    public struct GenHiveTableDDLSqlResponse: TCResponse {
        /// 生成的ddl语句
        public let ddlSql: String

        /// 生成的ddl语句。与DDLSql相同含义，优先取Data，如果Data为空，则取DDLSql。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ddlSql = "DDLSql"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 生成建hive表的sql
    @inlinable
    public func genHiveTableDDLSql(_ input: GenHiveTableDDLSqlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenHiveTableDDLSqlResponse> {
        self.client.execute(action: "GenHiveTableDDLSql", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成建hive表的sql
    @inlinable
    public func genHiveTableDDLSql(_ input: GenHiveTableDDLSqlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenHiveTableDDLSqlResponse {
        try await self.client.execute(action: "GenHiveTableDDLSql", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成建hive表的sql
    @inlinable
    public func genHiveTableDDLSql(projectId: String, sinkDatabase: String, id: String? = nil, msType: String? = nil, datasourceId: String? = nil, sourceDatabase: String? = nil, tableName: String? = nil, sinkType: String? = nil, schemaName: String? = nil, sourceFieldInfoList: [SourceFieldInfo]? = nil, partitions: [Partition]? = nil, properties: [Property]? = nil, tableMode: Int64? = nil, tableVersion: String? = nil, upsertFlag: Bool? = nil, tableComment: String? = nil, addDataFiles: Int64? = nil, addEqualityDeletes: Int64? = nil, addPositionDeletes: Int64? = nil, addDeleteFiles: Int64? = nil, targetDatasourceId: String? = nil, upsertKeys: [String]? = nil, tableBaseInfo: TableBaseInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenHiveTableDDLSqlResponse> {
        self.genHiveTableDDLSql(.init(projectId: projectId, sinkDatabase: sinkDatabase, id: id, msType: msType, datasourceId: datasourceId, sourceDatabase: sourceDatabase, tableName: tableName, sinkType: sinkType, schemaName: schemaName, sourceFieldInfoList: sourceFieldInfoList, partitions: partitions, properties: properties, tableMode: tableMode, tableVersion: tableVersion, upsertFlag: upsertFlag, tableComment: tableComment, addDataFiles: addDataFiles, addEqualityDeletes: addEqualityDeletes, addPositionDeletes: addPositionDeletes, addDeleteFiles: addDeleteFiles, targetDatasourceId: targetDatasourceId, upsertKeys: upsertKeys, tableBaseInfo: tableBaseInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 生成建hive表的sql
    @inlinable
    public func genHiveTableDDLSql(projectId: String, sinkDatabase: String, id: String? = nil, msType: String? = nil, datasourceId: String? = nil, sourceDatabase: String? = nil, tableName: String? = nil, sinkType: String? = nil, schemaName: String? = nil, sourceFieldInfoList: [SourceFieldInfo]? = nil, partitions: [Partition]? = nil, properties: [Property]? = nil, tableMode: Int64? = nil, tableVersion: String? = nil, upsertFlag: Bool? = nil, tableComment: String? = nil, addDataFiles: Int64? = nil, addEqualityDeletes: Int64? = nil, addPositionDeletes: Int64? = nil, addDeleteFiles: Int64? = nil, targetDatasourceId: String? = nil, upsertKeys: [String]? = nil, tableBaseInfo: TableBaseInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenHiveTableDDLSqlResponse {
        try await self.genHiveTableDDLSql(.init(projectId: projectId, sinkDatabase: sinkDatabase, id: id, msType: msType, datasourceId: datasourceId, sourceDatabase: sourceDatabase, tableName: tableName, sinkType: sinkType, schemaName: schemaName, sourceFieldInfoList: sourceFieldInfoList, partitions: partitions, properties: properties, tableMode: tableMode, tableVersion: tableVersion, upsertFlag: upsertFlag, tableComment: tableComment, addDataFiles: addDataFiles, addEqualityDeletes: addEqualityDeletes, addPositionDeletes: addPositionDeletes, addDeleteFiles: addDeleteFiles, targetDatasourceId: targetDatasourceId, upsertKeys: upsertKeys, tableBaseInfo: tableBaseInfo), region: region, logger: logger, on: eventLoop)
    }
}
