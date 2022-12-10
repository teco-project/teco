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
    /// 查询Redis实例备份列表
    ///
    /// 查询 CRS 实例备份列表
    @inlinable
    public func describeInstanceBackups(_ input: DescribeInstanceBackupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceBackupsResponse > {
        self.client.execute(action: "DescribeInstanceBackups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Redis实例备份列表
    ///
    /// 查询 CRS 实例备份列表
    @inlinable
    public func describeInstanceBackups(_ input: DescribeInstanceBackupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceBackupsResponse {
        try await self.client.execute(action: "DescribeInstanceBackups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInstanceBackups请求参数结构体
    public struct DescribeInstanceBackupsRequest: TCRequestModel {
        /// 待操作的实例ID，可通过 DescribeInstance 接口返回值中的 InstanceId 获取。
        public let instanceId: String
        
        /// 实例列表大小，默认大小20
        public let limit: Int64?
        
        /// 偏移量，取Limit整数倍
        public let offset: Int64?
        
        /// 开始时间，格式如：2017-02-08 16:46:34。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表。
        public let beginTime: String?
        
        /// 结束时间，格式如：2017-02-08 19:09:26。查询实例在 [beginTime, endTime] 时间段内开始备份的备份列表。
        public let endTime: String?
        
        /// 1：备份在流程中，2：备份正常，3：备份转RDB文件处理中，4：已完成RDB转换，-1：备份已过期，-2：备份已删除。
        public let status: [Int64]?
        
        public init (instanceId: String, limit: Int64?, offset: Int64?, beginTime: String?, endTime: String?, status: [Int64]?) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.beginTime = beginTime
            self.endTime = endTime
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case status = "Status"
        }
    }
    
    /// DescribeInstanceBackups返回参数结构体
    public struct DescribeInstanceBackupsResponse: TCResponseModel {
        /// 备份总数
        public let totalCount: Int64
        
        /// 实例的备份数组
        public let backupSet: [RedisBackupSet]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupSet = "BackupSet"
            case requestId = "RequestId"
        }
    }
}
