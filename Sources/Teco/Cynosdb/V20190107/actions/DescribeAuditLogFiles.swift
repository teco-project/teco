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

extension Cynosdb {
    /// 查询审计日志文件
    ///
    /// 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。
    @inlinable
    public func describeAuditLogFiles(_ input: DescribeAuditLogFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAuditLogFilesResponse > {
        self.client.execute(action: "DescribeAuditLogFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询审计日志文件
    ///
    /// 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。
    @inlinable
    public func describeAuditLogFiles(_ input: DescribeAuditLogFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditLogFilesResponse {
        try await self.client.execute(action: "DescribeAuditLogFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAuditLogFiles请求参数结构体
    public struct DescribeAuditLogFilesRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 分页大小参数。默认值为 20，最小值为 1，最大值为 100。
        public let limit: Int64?
        
        /// 分页偏移量。
        public let offset: Int64?
        
        /// 审计日志文件名。
        public let fileName: String?
        
        public init (instanceId: String, limit: Int64?, offset: Int64?, fileName: String?) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.fileName = fileName
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case fileName = "FileName"
        }
    }
    
    /// DescribeAuditLogFiles返回参数结构体
    public struct DescribeAuditLogFilesResponse: TCResponseModel {
        /// 符合条件的审计日志文件个数。
        public let totalCount: Int64
        
        /// 审计日志文件详情。
        public let items: [AuditLogFile]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
}