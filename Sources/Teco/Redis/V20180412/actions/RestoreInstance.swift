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

extension Redis {
    /// RestoreInstance请求参数结构体
    public struct RestoreInstanceRequest: TCRequestModel {
        /// 待操作的实例ID，可通过 DescribeInstances 接口返回值中的 InstanceId 获取。
        public let instanceId: String
        
        /// 备份ID，可通过 GetRedisBackupList 接口返回值中的 backupId 获取
        public let backupId: String
        
        /// 实例密码，恢复实例时，需要校验实例密码（免密实例不需要传密码）
        public let password: String?
        
        public init (instanceId: String, backupId: String, password: String? = nil) {
            self.instanceId = instanceId
            self.backupId = backupId
            self.password = password
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupId = "BackupId"
            case password = "Password"
        }
    }
    
    /// RestoreInstance返回参数结构体
    public struct RestoreInstanceResponse: TCResponseModel {
        /// 任务ID，可通过 DescribeTaskInfo 接口查询任务执行状态
        public let taskId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 恢复 CRS 实例
    @inlinable
    public func restoreInstance(_ input: RestoreInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RestoreInstanceResponse > {
        self.client.execute(action: "RestoreInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 恢复 CRS 实例
    @inlinable
    public func restoreInstance(_ input: RestoreInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreInstanceResponse {
        try await self.client.execute(action: "RestoreInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
