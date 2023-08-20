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
    /// CreateHiveTable请求参数结构体
    public struct CreateHiveTableRequest: TCRequest {
        /// 数据源id
        public let datasourceId: String

        /// 数据库
        public let database: String

        /// base64转码之后的建表语句
        public let ddlSql: String

        /// 表权限 ，默认为0:项目共享;1:仅个人与管理员
        public let privilege: Int64

        /// 项目Id
        public let projectId: String

        /// 责任人
        public let incharge: String?

        public init(datasourceId: String, database: String, ddlSql: String, privilege: Int64, projectId: String, incharge: String? = nil) {
            self.datasourceId = datasourceId
            self.database = database
            self.ddlSql = ddlSql
            self.privilege = privilege
            self.projectId = projectId
            self.incharge = incharge
        }

        enum CodingKeys: String, CodingKey {
            case datasourceId = "DatasourceId"
            case database = "Database"
            case ddlSql = "DDLSql"
            case privilege = "Privilege"
            case projectId = "ProjectId"
            case incharge = "Incharge"
        }
    }

    /// CreateHiveTable返回参数结构体
    public struct CreateHiveTableResponse: TCResponse {
        /// 建表是否成功
        public let isSuccess: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isSuccess = "IsSuccess"
            case requestId = "RequestId"
        }
    }

    /// 建hive表
    @inlinable
    public func createHiveTable(_ input: CreateHiveTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHiveTableResponse> {
        self.client.execute(action: "CreateHiveTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 建hive表
    @inlinable
    public func createHiveTable(_ input: CreateHiveTableRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHiveTableResponse {
        try await self.client.execute(action: "CreateHiveTable", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 建hive表
    @inlinable
    public func createHiveTable(datasourceId: String, database: String, ddlSql: String, privilege: Int64, projectId: String, incharge: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHiveTableResponse> {
        self.createHiveTable(.init(datasourceId: datasourceId, database: database, ddlSql: ddlSql, privilege: privilege, projectId: projectId, incharge: incharge), region: region, logger: logger, on: eventLoop)
    }

    /// 建hive表
    @inlinable
    public func createHiveTable(datasourceId: String, database: String, ddlSql: String, privilege: Int64, projectId: String, incharge: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHiveTableResponse {
        try await self.createHiveTable(.init(datasourceId: datasourceId, database: database, ddlSql: ddlSql, privilege: privilege, projectId: projectId, incharge: incharge), region: region, logger: logger, on: eventLoop)
    }
}
