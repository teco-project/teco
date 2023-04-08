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

extension Mariadb {
    /// GrantAccountPrivileges请求参数结构体
    public struct GrantAccountPrivilegesRequest: TCRequestModel {
        /// 实例 ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 登录用户名。
        public let userName: String

        /// 用户允许的访问 host，用户名+host唯一确定一个账号。
        public let host: String

        /// 数据库名。如果为 \*，表示设置全局权限（即 \*.\*），此时忽略 Type 和 Object 参数。当DbName不为\*时，需要传入参 Type。
        public let dbName: String

        /// 全局权限： SELECT，INSERT，UPDATE，DELETE，CREATE，DROP，REFERENCES，INDEX，ALTER，CREATE TEMPORARY TABLES，LOCK TABLES，EXECUTE，CREATE VIEW，SHOW VIEW，CREATE ROUTINE，ALTER ROUTINE，EVENT，TRIGGER，SHOW DATABASES，REPLICATION CLIENT，REPLICATION SLAVE
        /// 库权限： SELECT，INSERT，UPDATE，DELETE，CREATE，DROP，REFERENCES，INDEX，ALTER，CREATE TEMPORARY TABLES，LOCK TABLES，EXECUTE，CREATE VIEW，SHOW VIEW，CREATE ROUTINE，ALTER ROUTINE，EVENT，TRIGGER
        /// 表/视图权限： SELECT，INSERT，UPDATE，DELETE，CREATE，DROP，REFERENCES，INDEX，ALTER，CREATE VIEW，SHOW VIEW，TRIGGER
        /// 存储过程/函数权限： ALTER ROUTINE，EXECUTE
        /// 字段权限： INSERT，REFERENCES，SELECT，UPDATE
        public let privileges: [String]

        /// 类型,可以填入 table 、 view 、 proc 、 func 和 \*。当 DbName 为具体数据库名，Type为 \* 时，表示设置该数据库权限（即db.\*），此时忽略 Object 参数
        public let type: String?

        /// 具体的 Type 的名称，例如 Type 为 table 时就是具体的表名。DbName 和 Type 都为具体名称，则 Object 表示具体对象名，不能为 \* 或者为空
        public let object: String?

        /// 当 Type=table 时，ColName 为 \* 表示对表授权，如果为具体字段名，表示对字段授权
        public let colName: String?

        public init(instanceId: String, userName: String, host: String, dbName: String, privileges: [String], type: String? = nil, object: String? = nil, colName: String? = nil) {
            self.instanceId = instanceId
            self.userName = userName
            self.host = host
            self.dbName = dbName
            self.privileges = privileges
            self.type = type
            self.object = object
            self.colName = colName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userName = "UserName"
            case host = "Host"
            case dbName = "DbName"
            case privileges = "Privileges"
            case type = "Type"
            case object = "Object"
            case colName = "ColName"
        }
    }

    /// GrantAccountPrivileges返回参数结构体
    public struct GrantAccountPrivilegesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置账号权限
    ///
    /// 本接口（GrantAccountPrivileges）用于给云数据库账号赋权。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable @discardableResult
    public func grantAccountPrivileges(_ input: GrantAccountPrivilegesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GrantAccountPrivilegesResponse> {
        self.client.execute(action: "GrantAccountPrivileges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置账号权限
    ///
    /// 本接口（GrantAccountPrivileges）用于给云数据库账号赋权。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable @discardableResult
    public func grantAccountPrivileges(_ input: GrantAccountPrivilegesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GrantAccountPrivilegesResponse {
        try await self.client.execute(action: "GrantAccountPrivileges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置账号权限
    ///
    /// 本接口（GrantAccountPrivileges）用于给云数据库账号赋权。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable @discardableResult
    public func grantAccountPrivileges(instanceId: String, userName: String, host: String, dbName: String, privileges: [String], type: String? = nil, object: String? = nil, colName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GrantAccountPrivilegesResponse> {
        self.grantAccountPrivileges(.init(instanceId: instanceId, userName: userName, host: host, dbName: dbName, privileges: privileges, type: type, object: object, colName: colName), region: region, logger: logger, on: eventLoop)
    }

    /// 设置账号权限
    ///
    /// 本接口（GrantAccountPrivileges）用于给云数据库账号赋权。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable @discardableResult
    public func grantAccountPrivileges(instanceId: String, userName: String, host: String, dbName: String, privileges: [String], type: String? = nil, object: String? = nil, colName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GrantAccountPrivilegesResponse {
        try await self.grantAccountPrivileges(.init(instanceId: instanceId, userName: userName, host: host, dbName: dbName, privileges: privileges, type: type, object: object, colName: colName), region: region, logger: logger, on: eventLoop)
    }
}
