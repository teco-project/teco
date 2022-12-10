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

@_exported import struct Foundation.Date

extension Postgres {
    /// 获取实例Xlog列表
    ///
    /// 本接口（DescribeDBXlogs）用于获取实例Xlog列表。
    @inlinable
    public func describeDBXlogs(_ input: DescribeDBXlogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBXlogsResponse > {
        self.client.execute(action: "DescribeDBXlogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取实例Xlog列表
    ///
    /// 本接口（DescribeDBXlogs）用于获取实例Xlog列表。
    @inlinable
    public func describeDBXlogs(_ input: DescribeDBXlogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBXlogsResponse {
        try await self.client.execute(action: "DescribeDBXlogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDBXlogs请求参数结构体
    public struct DescribeDBXlogsRequest: TCRequestModel {
        /// 实例ID，形如postgres-4wdeb0zv。
        public let dbInstanceId: String
        
        /// 查询开始时间，形如2018-06-10 17:06:38，起始时间不得小于7天以前
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 查询结束时间，形如2018-06-10 17:06:38
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 分页返回，表示返回第几页的条目。从第0页开始计数。
        public let offset: Int64?
        
        /// 分页返回，表示每页有多少条目。取值为1-100。
        public let limit: Int64?
        
        public init (dbInstanceId: String, startTime: Date, endTime: Date, offset: Int64?, limit: Int64?) {
            self.dbInstanceId = dbInstanceId
            self.startTime = startTime
            self.endTime = endTime
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeDBXlogs返回参数结构体
    public struct DescribeDBXlogsResponse: TCResponseModel {
        /// 表示此次返回结果有多少条数据。
        public let totalCount: Int64
        
        /// Xlog列表
        public let xlogList: [Xlog]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case xlogList = "XlogList"
            case requestId = "RequestId"
        }
    }
}
