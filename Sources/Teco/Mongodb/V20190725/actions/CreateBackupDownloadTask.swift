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

extension Mongodb {
    /// CreateBackupDownloadTask请求参数结构体
    public struct CreateBackupDownloadTaskRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String
        
        /// 要下载的备份文件名，可通过DescribeDBBackups接口获取。
        public let backupName: String
        
        /// 指定要下载的副本集的节点名称 或 分片集群的分片名称列表。
        /// 如副本集cmgo-p8vnipr5，示例(固定取值)：BackupSets.0=cmgo-p8vnipr5_0，可下载全量数据。
        /// 如分片集群cmgo-p8vnipr5，示例：BackupSets.0=cmgo-p8vnipr5_0&BackupSets.1=cmgo-p8vnipr5_1，即下载分片0和分片1的数据，分片集群如需全量下载，请按示例方式传入全部分片名称。
        public let backupSets: [ReplicaSetInfo]
        
        public init (instanceId: String, backupName: String, backupSets: [ReplicaSetInfo]) {
            self.instanceId = instanceId
            self.backupName = backupName
            self.backupSets = backupSets
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupName = "BackupName"
            case backupSets = "BackupSets"
        }
    }
    
    /// CreateBackupDownloadTask返回参数结构体
    public struct CreateBackupDownloadTaskResponse: TCResponseModel {
        /// 下载任务状态
        public let tasks: [BackupDownloadTaskStatus]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case tasks = "Tasks"
            case requestId = "RequestId"
        }
    }
    
    /// 创建备份下载任务
    ///
    /// 本接口用来创建某个备份文件的下载任务
    @inlinable
    public func createBackupDownloadTask(_ input: CreateBackupDownloadTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateBackupDownloadTaskResponse > {
        self.client.execute(action: "CreateBackupDownloadTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建备份下载任务
    ///
    /// 本接口用来创建某个备份文件的下载任务
    @inlinable
    public func createBackupDownloadTask(_ input: CreateBackupDownloadTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupDownloadTaskResponse {
        try await self.client.execute(action: "CreateBackupDownloadTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
