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

@_exported import struct Foundation.Date

extension Sqlserver {
    /// 获取慢查询日志文件信息
    ///
    /// 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息
    @inlinable
    public func describeSlowlogs(_ input: DescribeSlowlogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSlowlogsResponse > {
        self.client.execute(action: "DescribeSlowlogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取慢查询日志文件信息
    ///
    /// 本接口（DescribeSlowlogs）用于获取慢查询日志文件信息
    @inlinable
    public func describeSlowlogs(_ input: DescribeSlowlogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowlogsResponse {
        try await self.client.execute(action: "DescribeSlowlogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSlowlogs请求参数结构体
    public struct DescribeSlowlogsRequest: TCRequestModel {
        /// 实例ID，形如mssql-k8voqdlz
        public let instanceId: String
        
        /// 查询开始时间
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 查询结束时间
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 分页返回，每页返回的数目，取值为1-100，默认值为20
        public let limit: Int64?
        
        /// 分页返回，页编号，默认值为第0页
        public let offset: UInt64?
        
        public init (instanceId: String, startTime: Date, endTime: Date, limit: Int64?, offset: UInt64?) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeSlowlogs返回参数结构体
    public struct DescribeSlowlogsResponse: TCResponseModel {
        /// 查询总数
        public let totalCount: Int64
        
        /// 慢查询日志信息列表
        public let slowlogs: [SlowlogInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case slowlogs = "Slowlogs"
            case requestId = "RequestId"
        }
    }
}