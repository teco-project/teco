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

extension Sqlserver {
    /// CreateBackup请求参数结构体
    public struct CreateBackupRequest: TCRequestModel {
        /// 备份策略(0-实例备份 1-多库备份)
        public let strategy: Int64?
        
        /// 需要备份库名的列表(多库备份才填写)
        public let dbNames: [String]?
        
        /// 实例ID，形如mssql-i1z41iwd
        public let instanceId: String?
        
        /// 备份名称，若不填则自动生成“实例ID_备份开始时间戳”
        public let backupName: String?
        
        public init (strategy: Int64? = nil, dbNames: [String]? = nil, instanceId: String? = nil, backupName: String? = nil) {
            self.strategy = strategy
            self.dbNames = dbNames
            self.instanceId = instanceId
            self.backupName = backupName
        }
        
        enum CodingKeys: String, CodingKey {
            case strategy = "Strategy"
            case dbNames = "DBNames"
            case instanceId = "InstanceId"
            case backupName = "BackupName"
        }
    }
    
    /// CreateBackup返回参数结构体
    public struct CreateBackupResponse: TCResponseModel {
        /// 异步任务ID
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建备份
    ///
    /// 本接口(CreateBackup)用于创建备份。
    @inlinable
    public func createBackup(_ input: CreateBackupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBackupResponse > {
        self.client.execute(action: "CreateBackup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建备份
    ///
    /// 本接口(CreateBackup)用于创建备份。
    @inlinable
    public func createBackup(_ input: CreateBackupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupResponse {
        try await self.client.execute(action: "CreateBackup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
