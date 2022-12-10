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

extension Dlc {
    /// DMS元数据删除表
    ///
    /// DMS元数据删除表
    @inlinable
    public func dropDMSTable(_ input: DropDMSTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DropDMSTableResponse > {
        self.client.execute(action: "DropDMSTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// DMS元数据删除表
    ///
    /// DMS元数据删除表
    @inlinable
    public func dropDMSTable(_ input: DropDMSTableRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DropDMSTableResponse {
        try await self.client.execute(action: "DropDMSTable", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DropDMSTable请求参数结构体
    public struct DropDMSTableRequest: TCRequestModel {
        /// 数据库名称
        public let dbName: String?
        
        /// 表名称
        public let name: String?
        
        /// 是否删除数据
        public let deleteData: Bool?
        
        /// 环境属性
        public let envProps: KVPair
        
        public init (dbName: String?, name: String?, deleteData: Bool?, envProps: KVPair) {
            self.dbName = dbName
            self.name = name
            self.deleteData = deleteData
            self.envProps = envProps
        }
        
        enum CodingKeys: String, CodingKey {
            case dbName = "DbName"
            case name = "Name"
            case deleteData = "DeleteData"
            case envProps = "EnvProps"
        }
    }
    
    /// DropDMSTable返回参数结构体
    public struct DropDMSTableResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}