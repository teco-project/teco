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

extension Ckafka {
    /// ModifyConnectResource请求参数结构体
    public struct ModifyConnectResourceRequest: TCRequestModel {
        /// 连接源的Id
        public let resourceId: String

        /// 连接源名称，为空时不修改
        public let resourceName: String?

        /// 连接源描述，为空时不修改
        public let description: String?

        /// 连接源类型，修改数据源参数时，需要与原Type相同，否则编辑数据源无效
        public let type: String?

        /// Dts配置，Type为DTS时必填
        public let dtsConnectParam: DtsModifyConnectParam?

        /// MongoDB配置，Type为MONGODB时必填
        public let mongoDBConnectParam: MongoDBModifyConnectParam?

        /// Es配置，Type为ES时必填
        public let esConnectParam: EsModifyConnectParam?

        /// ClickHouse配置，Type为CLICKHOUSE时必填
        public let clickHouseConnectParam: ClickHouseModifyConnectParam?

        /// MySQL配置，Type为MYSQL或TDSQL_C_MYSQL时必填
        public let mySQLConnectParam: MySQLModifyConnectParam?

        /// PostgreSQL配置，Type为POSTGRESQL或TDSQL_C_POSTGRESQL时必填
        public let postgreSQLConnectParam: PostgreSQLModifyConnectParam?

        /// MariaDB配置，Type为MARIADB时必填
        public let mariaDBConnectParam: MariaDBModifyConnectParam?

        /// SQLServer配置，Type为SQLSERVER时必填
        public let sqlServerConnectParam: SQLServerModifyConnectParam?

        /// Ctsdb配置，Type为CTSDB
        public let ctsdbConnectParam: CtsdbModifyConnectParam?

        /// Doris配置，Type为DORIS
        public let dorisConnectParam: DorisModifyConnectParam?

        public init(resourceId: String, resourceName: String? = nil, description: String? = nil, type: String? = nil, dtsConnectParam: DtsModifyConnectParam? = nil, mongoDBConnectParam: MongoDBModifyConnectParam? = nil, esConnectParam: EsModifyConnectParam? = nil, clickHouseConnectParam: ClickHouseModifyConnectParam? = nil, mySQLConnectParam: MySQLModifyConnectParam? = nil, postgreSQLConnectParam: PostgreSQLModifyConnectParam? = nil, mariaDBConnectParam: MariaDBModifyConnectParam? = nil, sqlServerConnectParam: SQLServerModifyConnectParam? = nil, ctsdbConnectParam: CtsdbModifyConnectParam? = nil, dorisConnectParam: DorisModifyConnectParam? = nil) {
            self.resourceId = resourceId
            self.resourceName = resourceName
            self.description = description
            self.type = type
            self.dtsConnectParam = dtsConnectParam
            self.mongoDBConnectParam = mongoDBConnectParam
            self.esConnectParam = esConnectParam
            self.clickHouseConnectParam = clickHouseConnectParam
            self.mySQLConnectParam = mySQLConnectParam
            self.postgreSQLConnectParam = postgreSQLConnectParam
            self.mariaDBConnectParam = mariaDBConnectParam
            self.sqlServerConnectParam = sqlServerConnectParam
            self.ctsdbConnectParam = ctsdbConnectParam
            self.dorisConnectParam = dorisConnectParam
        }

        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case resourceName = "ResourceName"
            case description = "Description"
            case type = "Type"
            case dtsConnectParam = "DtsConnectParam"
            case mongoDBConnectParam = "MongoDBConnectParam"
            case esConnectParam = "EsConnectParam"
            case clickHouseConnectParam = "ClickHouseConnectParam"
            case mySQLConnectParam = "MySQLConnectParam"
            case postgreSQLConnectParam = "PostgreSQLConnectParam"
            case mariaDBConnectParam = "MariaDBConnectParam"
            case sqlServerConnectParam = "SQLServerConnectParam"
            case ctsdbConnectParam = "CtsdbConnectParam"
            case dorisConnectParam = "DorisConnectParam"
        }
    }

    /// ModifyConnectResource返回参数结构体
    public struct ModifyConnectResourceResponse: TCResponseModel {
        /// 连接源的Id
        public let result: ConnectResourceResourceIdResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 编辑Datahub连接源
    @inlinable
    public func modifyConnectResource(_ input: ModifyConnectResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyConnectResourceResponse > {
        self.client.execute(action: "ModifyConnectResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑Datahub连接源
    @inlinable
    public func modifyConnectResource(_ input: ModifyConnectResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConnectResourceResponse {
        try await self.client.execute(action: "ModifyConnectResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑Datahub连接源
    @inlinable
    public func modifyConnectResource(resourceId: String, resourceName: String? = nil, description: String? = nil, type: String? = nil, dtsConnectParam: DtsModifyConnectParam? = nil, mongoDBConnectParam: MongoDBModifyConnectParam? = nil, esConnectParam: EsModifyConnectParam? = nil, clickHouseConnectParam: ClickHouseModifyConnectParam? = nil, mySQLConnectParam: MySQLModifyConnectParam? = nil, postgreSQLConnectParam: PostgreSQLModifyConnectParam? = nil, mariaDBConnectParam: MariaDBModifyConnectParam? = nil, sqlServerConnectParam: SQLServerModifyConnectParam? = nil, ctsdbConnectParam: CtsdbModifyConnectParam? = nil, dorisConnectParam: DorisModifyConnectParam? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyConnectResourceResponse > {
        self.modifyConnectResource(ModifyConnectResourceRequest(resourceId: resourceId, resourceName: resourceName, description: description, type: type, dtsConnectParam: dtsConnectParam, mongoDBConnectParam: mongoDBConnectParam, esConnectParam: esConnectParam, clickHouseConnectParam: clickHouseConnectParam, mySQLConnectParam: mySQLConnectParam, postgreSQLConnectParam: postgreSQLConnectParam, mariaDBConnectParam: mariaDBConnectParam, sqlServerConnectParam: sqlServerConnectParam, ctsdbConnectParam: ctsdbConnectParam, dorisConnectParam: dorisConnectParam), logger: logger, on: eventLoop)
    }

    /// 编辑Datahub连接源
    @inlinable
    public func modifyConnectResource(resourceId: String, resourceName: String? = nil, description: String? = nil, type: String? = nil, dtsConnectParam: DtsModifyConnectParam? = nil, mongoDBConnectParam: MongoDBModifyConnectParam? = nil, esConnectParam: EsModifyConnectParam? = nil, clickHouseConnectParam: ClickHouseModifyConnectParam? = nil, mySQLConnectParam: MySQLModifyConnectParam? = nil, postgreSQLConnectParam: PostgreSQLModifyConnectParam? = nil, mariaDBConnectParam: MariaDBModifyConnectParam? = nil, sqlServerConnectParam: SQLServerModifyConnectParam? = nil, ctsdbConnectParam: CtsdbModifyConnectParam? = nil, dorisConnectParam: DorisModifyConnectParam? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConnectResourceResponse {
        try await self.modifyConnectResource(ModifyConnectResourceRequest(resourceId: resourceId, resourceName: resourceName, description: description, type: type, dtsConnectParam: dtsConnectParam, mongoDBConnectParam: mongoDBConnectParam, esConnectParam: esConnectParam, clickHouseConnectParam: clickHouseConnectParam, mySQLConnectParam: mySQLConnectParam, postgreSQLConnectParam: postgreSQLConnectParam, mariaDBConnectParam: mariaDBConnectParam, sqlServerConnectParam: sqlServerConnectParam, ctsdbConnectParam: ctsdbConnectParam, dorisConnectParam: dorisConnectParam), logger: logger, on: eventLoop)
    }
}
