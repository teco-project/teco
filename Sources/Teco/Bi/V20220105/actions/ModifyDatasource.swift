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

extension Bi {
    /// ModifyDatasource请求参数结构体
    public struct ModifyDatasourceRequest: TCRequest {
        /// HOST
        public let dbHost: String

        /// 端口
        public let dbPort: UInt64

        /// 后端提供字典：域类型，1、腾讯云，2、本地
        public let serviceType: String

        /// 驱动
        public let dbType: String

        /// 数据库编码
        public let charset: String

        /// 用户名
        public let dbUser: String

        /// 密码
        public let dbPwd: String

        /// 数据库名称
        public let dbName: String

        /// 数据库别名
        public let sourceName: String

        /// 数据源id
        public let id: Int64

        /// 项目ID
        public let projectId: UInt64

        /// catalog值
        public let catalog: String?

        /// 第三方数据源标识
        public let dataOrigin: String?

        /// 第三方项目id
        public let dataOriginProjectId: String?

        /// 第三方数据源id
        public let dataOriginDatasourceId: String?

        /// 扩展参数
        public let extraParam: String?

        /// 腾讯云私有网络统一标识
        public let uniqVpcId: String?

        /// 私有网络ip
        public let vip: String?

        /// 私有网络端口
        public let vport: String?

        /// 腾讯云私有网络标识
        public let vpcId: String?

        public init(dbHost: String, dbPort: UInt64, serviceType: String, dbType: String, charset: String, dbUser: String, dbPwd: String, dbName: String, sourceName: String, id: Int64, projectId: UInt64, catalog: String? = nil, dataOrigin: String? = nil, dataOriginProjectId: String? = nil, dataOriginDatasourceId: String? = nil, extraParam: String? = nil, uniqVpcId: String? = nil, vip: String? = nil, vport: String? = nil, vpcId: String? = nil) {
            self.dbHost = dbHost
            self.dbPort = dbPort
            self.serviceType = serviceType
            self.dbType = dbType
            self.charset = charset
            self.dbUser = dbUser
            self.dbPwd = dbPwd
            self.dbName = dbName
            self.sourceName = sourceName
            self.id = id
            self.projectId = projectId
            self.catalog = catalog
            self.dataOrigin = dataOrigin
            self.dataOriginProjectId = dataOriginProjectId
            self.dataOriginDatasourceId = dataOriginDatasourceId
            self.extraParam = extraParam
            self.uniqVpcId = uniqVpcId
            self.vip = vip
            self.vport = vport
            self.vpcId = vpcId
        }

        enum CodingKeys: String, CodingKey {
            case dbHost = "DbHost"
            case dbPort = "DbPort"
            case serviceType = "ServiceType"
            case dbType = "DbType"
            case charset = "Charset"
            case dbUser = "DbUser"
            case dbPwd = "DbPwd"
            case dbName = "DbName"
            case sourceName = "SourceName"
            case id = "Id"
            case projectId = "ProjectId"
            case catalog = "Catalog"
            case dataOrigin = "DataOrigin"
            case dataOriginProjectId = "DataOriginProjectId"
            case dataOriginDatasourceId = "DataOriginDatasourceId"
            case extraParam = "ExtraParam"
            case uniqVpcId = "UniqVpcId"
            case vip = "Vip"
            case vport = "Vport"
            case vpcId = "VpcId"
        }
    }

    /// ModifyDatasource返回参数结构体
    public struct ModifyDatasourceResponse: TCResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 额外信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extra: String?

        /// 提示
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case extra = "Extra"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 更新数据源
    @inlinable
    public func modifyDatasource(_ input: ModifyDatasourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDatasourceResponse> {
        self.client.execute(action: "ModifyDatasource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新数据源
    @inlinable
    public func modifyDatasource(_ input: ModifyDatasourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDatasourceResponse {
        try await self.client.execute(action: "ModifyDatasource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新数据源
    @inlinable
    public func modifyDatasource(dbHost: String, dbPort: UInt64, serviceType: String, dbType: String, charset: String, dbUser: String, dbPwd: String, dbName: String, sourceName: String, id: Int64, projectId: UInt64, catalog: String? = nil, dataOrigin: String? = nil, dataOriginProjectId: String? = nil, dataOriginDatasourceId: String? = nil, extraParam: String? = nil, uniqVpcId: String? = nil, vip: String? = nil, vport: String? = nil, vpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDatasourceResponse> {
        self.modifyDatasource(.init(dbHost: dbHost, dbPort: dbPort, serviceType: serviceType, dbType: dbType, charset: charset, dbUser: dbUser, dbPwd: dbPwd, dbName: dbName, sourceName: sourceName, id: id, projectId: projectId, catalog: catalog, dataOrigin: dataOrigin, dataOriginProjectId: dataOriginProjectId, dataOriginDatasourceId: dataOriginDatasourceId, extraParam: extraParam, uniqVpcId: uniqVpcId, vip: vip, vport: vport, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新数据源
    @inlinable
    public func modifyDatasource(dbHost: String, dbPort: UInt64, serviceType: String, dbType: String, charset: String, dbUser: String, dbPwd: String, dbName: String, sourceName: String, id: Int64, projectId: UInt64, catalog: String? = nil, dataOrigin: String? = nil, dataOriginProjectId: String? = nil, dataOriginDatasourceId: String? = nil, extraParam: String? = nil, uniqVpcId: String? = nil, vip: String? = nil, vport: String? = nil, vpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDatasourceResponse {
        try await self.modifyDatasource(.init(dbHost: dbHost, dbPort: dbPort, serviceType: serviceType, dbType: dbType, charset: charset, dbUser: dbUser, dbPwd: dbPwd, dbName: dbName, sourceName: sourceName, id: id, projectId: projectId, catalog: catalog, dataOrigin: dataOrigin, dataOriginProjectId: dataOriginProjectId, dataOriginDatasourceId: dataOriginDatasourceId, extraParam: extraParam, uniqVpcId: uniqVpcId, vip: vip, vport: vport, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }
}
