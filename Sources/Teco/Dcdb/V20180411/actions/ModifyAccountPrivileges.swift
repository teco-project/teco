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

extension Dcdb {
    /// ModifyAccountPrivileges请求参数结构体
    public struct ModifyAccountPrivilegesRequest: TCRequestModel {
        /// 实例 ID，格式如：tdsql-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String
        
        /// 数据库的账号，包括用户名和域名。
        public let accounts: [Account]
        
        /// 全局权限。其中，GlobalPrivileges 中权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "PROCESS", "DROP","REFERENCES","INDEX","ALTER","SHOW DATABASES","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        /// 注意，不传该参数表示保留现有权限，如需清除，该字段传空数组。
        public let globalPrivileges: [String]?
        
        /// 数据库的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        /// 注意，不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组。
        public let databasePrivileges: [DatabasePrivilege]?
        
        /// 数据库中表的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE VIEW","SHOW VIEW", "TRIGGER"。
        /// 注意，不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组。
        public let tablePrivileges: [TablePrivilege]?
        
        /// 数据库表中列的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","REFERENCES"。
        /// 注意，不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组。
        public let columnPrivileges: [ColumnPrivilege]?
        
        /// 数据库视图的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "DROP","REFERENCES","INDEX","ALTER","CREATE VIEW","SHOW VIEW", "TRIGGER"。
        /// 注意，不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组。
        public let viewPrivileges: [ViewPrivileges]?
        
        public init (instanceId: String, accounts: [Account], globalPrivileges: [String]? = nil, databasePrivileges: [DatabasePrivilege]? = nil, tablePrivileges: [TablePrivilege]? = nil, columnPrivileges: [ColumnPrivilege]? = nil, viewPrivileges: [ViewPrivileges]? = nil) {
            self.instanceId = instanceId
            self.accounts = accounts
            self.globalPrivileges = globalPrivileges
            self.databasePrivileges = databasePrivileges
            self.tablePrivileges = tablePrivileges
            self.columnPrivileges = columnPrivileges
            self.viewPrivileges = viewPrivileges
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
            case globalPrivileges = "GlobalPrivileges"
            case databasePrivileges = "DatabasePrivileges"
            case tablePrivileges = "TablePrivileges"
            case columnPrivileges = "ColumnPrivileges"
            case viewPrivileges = "ViewPrivileges"
        }
    }
    
    /// ModifyAccountPrivileges返回参数结构体
    public struct ModifyAccountPrivilegesResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID [查询异步任务的执行结果](https://cloud.tencent.com/document/product/237/16177)。
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
    
    /// 修改云数据库实例账号的权限信息
    ///
    /// 本接口(ModifyAccountPrivileges)用于修改云数据库的账户的权限信息。
    /// **注意**
    /// - 系统保留库："mysql"，只开放["SELECT"]权限
    /// - 只读账号授予读写权限会报错
    /// - 不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组
    @inlinable
    public func modifyAccountPrivileges(_ input: ModifyAccountPrivilegesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAccountPrivilegesResponse > {
        self.client.execute(action: "ModifyAccountPrivileges", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改云数据库实例账号的权限信息
    ///
    /// 本接口(ModifyAccountPrivileges)用于修改云数据库的账户的权限信息。
    /// **注意**
    /// - 系统保留库："mysql"，只开放["SELECT"]权限
    /// - 只读账号授予读写权限会报错
    /// - 不传该参数表示保留现有权限，如需清除，请在复杂类型Privileges字段传空数组
    @inlinable
    public func modifyAccountPrivileges(_ input: ModifyAccountPrivilegesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountPrivilegesResponse {
        try await self.client.execute(action: "ModifyAccountPrivileges", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
