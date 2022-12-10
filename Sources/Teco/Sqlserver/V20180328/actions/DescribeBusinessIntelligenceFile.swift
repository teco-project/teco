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
    /// 查询商业智能服务需要的文件
    ///
    /// 本接口（DescribeBusinessIntelligenceFile）用于查询商业智能服务需要的文件。
    @inlinable
    public func describeBusinessIntelligenceFile(_ input: DescribeBusinessIntelligenceFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBusinessIntelligenceFileResponse > {
        self.client.execute(action: "DescribeBusinessIntelligenceFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询商业智能服务需要的文件
    ///
    /// 本接口（DescribeBusinessIntelligenceFile）用于查询商业智能服务需要的文件。
    @inlinable
    public func describeBusinessIntelligenceFile(_ input: DescribeBusinessIntelligenceFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBusinessIntelligenceFileResponse {
        try await self.client.execute(action: "DescribeBusinessIntelligenceFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBusinessIntelligenceFile请求参数结构体
    public struct DescribeBusinessIntelligenceFileRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 文件名称
        public let fileName: String?
        
        /// 迁移任务状态集合,1-初始化待部署 2-部署中 3-部署成功 4-部署失败
        public let statusSet: [Int64]?
        
        /// 文件类型 FLAT-平面文件，SSIS商业智能服务项目文件
        public let fileType: String?
        
        /// 分页，页大小，范围1-100
        public let limit: Int64?
        
        /// 分页,页数，默认0
        public let offset: Int64?
        
        /// 排序字段，可选值file_name,create_time,start_time
        public let orderBy: String?
        
        /// 排序方式，desc,asc
        public let orderByType: String?
        
        public init (instanceId: String, fileName: String?, statusSet: [Int64]?, fileType: String?, limit: Int64?, offset: Int64?, orderBy: String?, orderByType: String?) {
            self.instanceId = instanceId
            self.fileName = fileName
            self.statusSet = statusSet
            self.fileType = fileType
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case fileName = "FileName"
            case statusSet = "StatusSet"
            case fileType = "FileType"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }
    }
    
    /// DescribeBusinessIntelligenceFile返回参数结构体
    public struct DescribeBusinessIntelligenceFileResponse: TCResponseModel {
        /// 文件部署任务总数
        public let totalCount: Int64
        
        /// 文件部署任务集合
        public let backupMigrationSet: [BusinessIntelligenceFile]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupMigrationSet = "BackupMigrationSet"
            case requestId = "RequestId"
        }
    }
}
