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

extension Wedata {
    /// CreateHiveTableByDDL请求参数结构体
    public struct CreateHiveTableByDDLRequest: TCRequestModel {
        /// 数据源ID
        public let datasourceId: String

        /// 数据库
        public let database: String

        /// 建hive表ddl
        public let ddlSql: String

        /// 表权限 ，默认为0:项目共享;1:仅个人与管理员
        public let privilege: Int64

        /// 项目ID
        public let projectId: String

        /// 目标表类型(HIVE或GBASE)
        public let type: String

        /// 责任人
        public let incharge: String?

        public init(datasourceId: String, database: String, ddlSql: String, privilege: Int64, projectId: String, type: String, incharge: String? = nil) {
            self.datasourceId = datasourceId
            self.database = database
            self.ddlSql = ddlSql
            self.privilege = privilege
            self.projectId = projectId
            self.type = type
            self.incharge = incharge
        }

        enum CodingKeys: String, CodingKey {
            case datasourceId = "DatasourceId"
            case database = "Database"
            case ddlSql = "DDLSql"
            case privilege = "Privilege"
            case projectId = "ProjectId"
            case type = "Type"
            case incharge = "Incharge"
        }
    }

    /// CreateHiveTableByDDL返回参数结构体
    public struct CreateHiveTableByDDLResponse: TCResponseModel {
        /// 表名称
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 创建hive表
    ///
    /// 创建hive表，返回表名称
    @inlinable
    public func createHiveTableByDDL(_ input: CreateHiveTableByDDLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHiveTableByDDLResponse> {
        self.client.execute(action: "CreateHiveTableByDDL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建hive表
    ///
    /// 创建hive表，返回表名称
    @inlinable
    public func createHiveTableByDDL(_ input: CreateHiveTableByDDLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHiveTableByDDLResponse {
        try await self.client.execute(action: "CreateHiveTableByDDL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建hive表
    ///
    /// 创建hive表，返回表名称
    @inlinable
    public func createHiveTableByDDL(datasourceId: String, database: String, ddlSql: String, privilege: Int64, projectId: String, type: String, incharge: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHiveTableByDDLResponse> {
        self.createHiveTableByDDL(.init(datasourceId: datasourceId, database: database, ddlSql: ddlSql, privilege: privilege, projectId: projectId, type: type, incharge: incharge), region: region, logger: logger, on: eventLoop)
    }

    /// 创建hive表
    ///
    /// 创建hive表，返回表名称
    @inlinable
    public func createHiveTableByDDL(datasourceId: String, database: String, ddlSql: String, privilege: Int64, projectId: String, type: String, incharge: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHiveTableByDDLResponse {
        try await self.createHiveTableByDDL(.init(datasourceId: datasourceId, database: database, ddlSql: ddlSql, privilege: privilege, projectId: projectId, type: type, incharge: incharge), region: region, logger: logger, on: eventLoop)
    }
}
