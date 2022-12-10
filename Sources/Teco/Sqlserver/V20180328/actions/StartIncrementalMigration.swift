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
    /// 启动增量备份导入任务
    ///
    /// 本接口（StartIncrementalMigration）用于启动增量备份导入任务。
    @inlinable
    public func startIncrementalMigration(_ input: StartIncrementalMigrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StartIncrementalMigrationResponse > {
        self.client.execute(action: "StartIncrementalMigration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启动增量备份导入任务
    ///
    /// 本接口（StartIncrementalMigration）用于启动增量备份导入任务。
    @inlinable
    public func startIncrementalMigration(_ input: StartIncrementalMigrationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartIncrementalMigrationResponse {
        try await self.client.execute(action: "StartIncrementalMigration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StartIncrementalMigration请求参数结构体
    public struct StartIncrementalMigrationRequest: TCRequestModel {
        /// 导入目标实例ID
        public let instanceId: String
        
        /// 备份导入任务ID，由CreateBackupMigration接口返回
        public let backupMigrationId: String
        
        /// 增量备份导入任务ID
        public let incrementalMigrationId: String
        
        public init (instanceId: String, backupMigrationId: String, incrementalMigrationId: String) {
            self.instanceId = instanceId
            self.backupMigrationId = backupMigrationId
            self.incrementalMigrationId = incrementalMigrationId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupMigrationId = "BackupMigrationId"
            case incrementalMigrationId = "IncrementalMigrationId"
        }
    }
    
    /// StartIncrementalMigration返回参数结构体
    public struct StartIncrementalMigrationResponse: TCResponseModel {
        /// 流程ID
        public let flowId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
}
