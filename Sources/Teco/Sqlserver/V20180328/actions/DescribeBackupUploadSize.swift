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

extension Sqlserver {
    /// 查询上传的备份文件大小
    ///
    /// 本接口（DescribeBackupUploadSize）用于查询上传的备份文件大小。在备份上传类型是COS_UPLOAD(备份放在业务的对象存储上)时有效。
    @inlinable
    public func describeBackupUploadSize(_ input: DescribeBackupUploadSizeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBackupUploadSizeResponse > {
        self.client.execute(action: "DescribeBackupUploadSize", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询上传的备份文件大小
    ///
    /// 本接口（DescribeBackupUploadSize）用于查询上传的备份文件大小。在备份上传类型是COS_UPLOAD(备份放在业务的对象存储上)时有效。
    @inlinable
    public func describeBackupUploadSize(_ input: DescribeBackupUploadSizeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupUploadSizeResponse {
        try await self.client.execute(action: "DescribeBackupUploadSize", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBackupUploadSize请求参数结构体
    public struct DescribeBackupUploadSizeRequest: TCRequestModel {
        /// 导入目标实例ID
        public let instanceId: String
        
        /// 备份导入任务ID，由CreateBackupMigration接口返回
        public let backupMigrationId: String
        
        /// 增量导入任务ID
        public let incrementalMigrationId: String?
        
        public init (instanceId: String, backupMigrationId: String, incrementalMigrationId: String?) {
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
    
    /// DescribeBackupUploadSize返回参数结构体
    public struct DescribeBackupUploadSizeResponse: TCResponseModel {
        /// 已上传的备份的信息
        public let cosUploadBackupFileSet: [CosUploadBackupFile]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case cosUploadBackupFileSet = "CosUploadBackupFileSet"
            case requestId = "RequestId"
        }
    }
}