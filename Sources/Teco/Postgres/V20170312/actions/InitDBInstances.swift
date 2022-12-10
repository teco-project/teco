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

extension Postgres {
    /// 初始化实例
    ///
    /// 本接口 (InitDBInstances) 用于初始化云数据库PostgreSQL实例。
    @inlinable
    public func initDBInstances(_ input: InitDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InitDBInstancesResponse > {
        self.client.execute(action: "InitDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 初始化实例
    ///
    /// 本接口 (InitDBInstances) 用于初始化云数据库PostgreSQL实例。
    @inlinable
    public func initDBInstances(_ input: InitDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitDBInstancesResponse {
        try await self.client.execute(action: "InitDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InitDBInstances请求参数结构体
    public struct InitDBInstancesRequest: TCRequestModel {
        /// 实例ID集合。
        public let dbInstanceIdSet: [String]
        
        /// 实例根账号用户名。
        public let adminName: String
        
        /// 实例根账号用户名对应的密码。
        public let adminPassword: String
        
        /// 实例字符集，目前只支持：UTF8、LATIN1。
        public let charset: String
        
        public init (dbInstanceIdSet: [String], adminName: String, adminPassword: String, charset: String) {
            self.dbInstanceIdSet = dbInstanceIdSet
            self.adminName = adminName
            self.adminPassword = adminPassword
            self.charset = charset
        }
        
        enum CodingKeys: String, CodingKey {
            case dbInstanceIdSet = "DBInstanceIdSet"
            case adminName = "AdminName"
            case adminPassword = "AdminPassword"
            case charset = "Charset"
        }
    }
    
    /// InitDBInstances返回参数结构体
    public struct InitDBInstancesResponse: TCResponseModel {
        /// 实例ID集合。
        public let dbInstanceIdSet: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dbInstanceIdSet = "DBInstanceIdSet"
            case requestId = "RequestId"
        }
    }
}