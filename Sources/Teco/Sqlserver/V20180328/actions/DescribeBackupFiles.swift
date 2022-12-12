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
    /// DescribeBackupFiles请求参数结构体
    public struct DescribeBackupFilesRequest: TCRequestModel {
        /// 实例ID，形如mssql-njj2mtpl
        public let instanceId: String
        
        /// 聚合ID, 可通过接口DescribeBackups获取
        public let groupId: String
        
        /// 分页返回，每页返回的数目，取值为1-100，默认值为20
        public let limit: Int64?
        
        /// 分页返回，页编号，默认值为第0页
        public let offset: Int64?
        
        /// 按照备份的库名称筛选，不填则不筛选此项
        public let databaseName: String?
        
        /// 列表项排序，目前只按照备份大小排序（desc-降序，asc-升序），默认desc
        public let orderBy: String?
        
        public init (instanceId: String, groupId: String, limit: Int64? = nil, offset: Int64? = nil, databaseName: String? = nil, orderBy: String? = nil) {
            self.instanceId = instanceId
            self.groupId = groupId
            self.limit = limit
            self.offset = offset
            self.databaseName = databaseName
            self.orderBy = orderBy
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case groupId = "GroupId"
            case limit = "Limit"
            case offset = "Offset"
            case databaseName = "DatabaseName"
            case orderBy = "OrderBy"
        }
    }
    
    /// DescribeBackupFiles返回参数结构体
    public struct DescribeBackupFilesResponse: TCResponseModel {
        /// 备份总数量
        public let totalCount: Int64
        
        /// 备份文件列表详情
        public let backupFiles: [BackupFile]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupFiles = "BackupFiles"
            case requestId = "RequestId"
        }
    }
    
    /// 查询备份文件列表
    ///
    /// 本接口(DescribeBackupFiles)用于在非打包备份模式下单个库对应的备份文件
    @inlinable
    public func describeBackupFiles(_ input: DescribeBackupFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBackupFilesResponse > {
        self.client.execute(action: "DescribeBackupFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询备份文件列表
    ///
    /// 本接口(DescribeBackupFiles)用于在非打包备份模式下单个库对应的备份文件
    @inlinable
    public func describeBackupFiles(_ input: DescribeBackupFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupFilesResponse {
        try await self.client.execute(action: "DescribeBackupFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
