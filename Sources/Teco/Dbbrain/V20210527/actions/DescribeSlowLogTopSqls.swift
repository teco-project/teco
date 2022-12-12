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

extension Dbbrain {
    /// DescribeSlowLogTopSqls请求参数结构体
    public struct DescribeSlowLogTopSqlsRequest: TCRequestModel {
        /// 实例 ID 。
        public let instanceId: String
        
        /// 开始时间，如“2019-09-10 12:13:14”。
        // FIXME: Codable support not implemented for datetime yet.
        public let startTime: Date
        
        /// 截止时间，如“2019-09-11 10:13:14”，截止时间与开始时间的间隔小于7天。
        // FIXME: Codable support not implemented for datetime yet.
        public let endTime: Date
        
        /// 排序键，目前支持 QueryTime,ExecTimes,RowsSent,LockTime以及RowsExamined 等排序键，默认为QueryTime。
        public let sortBy: String?
        
        /// 排序方式，支持ASC（升序）以及DESC（降序），默认为DESC。
        public let orderBy: String?
        
        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?
        
        /// 偏移量，默认为0。
        public let offset: Int64?
        
        /// 数据库名称数组。
        public let schemaList: [SchemaItem]?
        
        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        public let product: String?
        
        public init (instanceId: String, startTime: Date, endTime: Date, sortBy: String? = nil, orderBy: String? = nil, limit: Int64? = nil, offset: Int64? = nil, schemaList: [SchemaItem]? = nil, product: String? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.sortBy = sortBy
            self.orderBy = orderBy
            self.limit = limit
            self.offset = offset
            self.schemaList = schemaList
            self.product = product
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case sortBy = "SortBy"
            case orderBy = "OrderBy"
            case limit = "Limit"
            case offset = "Offset"
            case schemaList = "SchemaList"
            case product = "Product"
        }
    }
    
    /// DescribeSlowLogTopSqls返回参数结构体
    public struct DescribeSlowLogTopSqlsResponse: TCResponseModel {
        /// 符合条件的记录总数。
        public let totalCount: Int64
        
        /// 慢日志 top sql 列表
        public let rows: [SlowLogTopSqlItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case rows = "Rows"
            case requestId = "RequestId"
        }
    }
    
    /// 按照Sql模板查询指定时间段内的慢日志统计结果
    ///
    /// 按照Sql模板+schema的聚合方式，统计排序指定时间段内的top慢sql。
    @inlinable
    public func describeSlowLogTopSqls(_ input: DescribeSlowLogTopSqlsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSlowLogTopSqlsResponse > {
        self.client.execute(action: "DescribeSlowLogTopSqls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 按照Sql模板查询指定时间段内的慢日志统计结果
    ///
    /// 按照Sql模板+schema的聚合方式，统计排序指定时间段内的top慢sql。
    @inlinable
    public func describeSlowLogTopSqls(_ input: DescribeSlowLogTopSqlsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogTopSqlsResponse {
        try await self.client.execute(action: "DescribeSlowLogTopSqls", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
