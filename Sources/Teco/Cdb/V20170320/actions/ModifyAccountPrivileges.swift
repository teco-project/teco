//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdb {
    /// 修改云数据库实例账号的权限
    ///
    /// 本接口(ModifyAccountPrivileges)用于修改云数据库的账户的权限信息。
    /// 注意，修改账号权限时，需要传入该账号下的全量权限信息。用户可以先通过 [查询云数据库账户的权限信息
    /// ](https://cloud.tencent.com/document/api/236/17500) 查询该账号下的全量权限信息，然后进行权限修改。
    @inlinable
    public func modifyAccountPrivileges(_ input: ModifyAccountPrivilegesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAccountPrivilegesResponse > {
        self.client.execute(action: "ModifyAccountPrivileges", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改云数据库实例账号的权限
    ///
    /// 本接口(ModifyAccountPrivileges)用于修改云数据库的账户的权限信息。
    /// 注意，修改账号权限时，需要传入该账号下的全量权限信息。用户可以先通过 [查询云数据库账户的权限信息
    /// ](https://cloud.tencent.com/document/api/236/17500) 查询该账号下的全量权限信息，然后进行权限修改。
    @inlinable
    public func modifyAccountPrivileges(_ input: ModifyAccountPrivilegesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountPrivilegesResponse {
        try await self.client.execute(action: "ModifyAccountPrivileges", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAccountPrivileges请求参数结构体
    public struct ModifyAccountPrivilegesRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String
        
        /// 数据库的账号，包括用户名和域名。
        public let accounts: [Account]
        
        /// 全局权限。其中，GlobalPrivileges 中权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "PROCESS", "DROP","REFERENCES","INDEX","ALTER","SHOW DATABASES","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER","CREATE USER","RELOAD","REPLICATION CLIENT","REPLICATION SLAVE"。
        /// 注意，ModifyAction为空时，不传该参数表示清除该权限。
        public let globalPrivileges: [String]?
        
        /// 数据库的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE",	"DROP","REFERENCES","INDEX","ALTER","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        /// 注意，ModifyAction为空时，不传该参数表示清除该权限。
        public let databasePrivileges: [DatabasePrivilege]?
        
        /// 数据库中表的权限。Privileges 权限的可选值为：权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE",	"DROP","REFERENCES","INDEX","ALTER","CREATE VIEW","SHOW VIEW", "TRIGGER"。
        /// 注意，ModifyAction为空时，不传该参数表示清除该权限。
        public let tablePrivileges: [TablePrivilege]?
        
        /// 数据库表中列的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","REFERENCES"。
        /// 注意，ModifyAction为空时，不传该参数表示清除该权限。
        public let columnPrivileges: [ColumnPrivilege]?
        
        /// 该参数不为空时，为批量修改权限。可选值为：grant - 授予权限，revoke - 回收权限。
        public let modifyAction: String?
        
        public init (instanceId: String, accounts: [Account], globalPrivileges: [String]?, databasePrivileges: [DatabasePrivilege]?, tablePrivileges: [TablePrivilege]?, columnPrivileges: [ColumnPrivilege]?, modifyAction: String?) {
            self.instanceId = instanceId
            self.accounts = accounts
            self.globalPrivileges = globalPrivileges
            self.databasePrivileges = databasePrivileges
            self.tablePrivileges = tablePrivileges
            self.columnPrivileges = columnPrivileges
            self.modifyAction = modifyAction
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
            case globalPrivileges = "GlobalPrivileges"
            case databasePrivileges = "DatabasePrivileges"
            case tablePrivileges = "TablePrivileges"
            case columnPrivileges = "ColumnPrivileges"
            case modifyAction = "ModifyAction"
        }
    }
    
    /// ModifyAccountPrivileges返回参数结构体
    public struct ModifyAccountPrivilegesResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }
}