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

extension Tdcpg {
    /// 查询集群的备份集
    @inlinable
    public func describeClusterBackups(_ input: DescribeClusterBackupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClusterBackupsResponse > {
        self.client.execute(action: "DescribeClusterBackups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询集群的备份集
    @inlinable
    public func describeClusterBackups(_ input: DescribeClusterBackupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterBackupsResponse {
        try await self.client.execute(action: "DescribeClusterBackups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeClusterBackups请求参数结构体
    public struct DescribeClusterBackupsRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 页码，取值范围为[1,INF)，默认值为1
        public let pageNumber: Int64?
        
        /// 每页个数，取值范围为默认为[1,100]，默认值为20
        public let pageSize: Int64?
        
        public init (clusterId: String, pageNumber: Int64?, pageSize: Int64?) {
            self.clusterId = clusterId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }
    }
    
    /// DescribeClusterBackups返回参数结构体
    public struct DescribeClusterBackupsResponse: TCResponseModel {
        /// 总条数
        public let totalCount: Int64
        
        /// 备份列表信息
        public let backupSet: [Backup]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupSet = "BackupSet"
            case requestId = "RequestId"
        }
    }
}
