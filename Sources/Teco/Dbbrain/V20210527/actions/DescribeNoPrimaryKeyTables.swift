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
    /// 查询实例无主键表
    ///
    /// 查询实例无主键表。
    @inlinable
    public func describeNoPrimaryKeyTables(_ input: DescribeNoPrimaryKeyTablesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNoPrimaryKeyTablesResponse > {
        self.client.execute(action: "DescribeNoPrimaryKeyTables", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例无主键表
    ///
    /// 查询实例无主键表。
    @inlinable
    public func describeNoPrimaryKeyTables(_ input: DescribeNoPrimaryKeyTablesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNoPrimaryKeyTablesResponse {
        try await self.client.execute(action: "DescribeNoPrimaryKeyTables", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeNoPrimaryKeyTables请求参数结构体
    public struct DescribeNoPrimaryKeyTablesRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String
        
        /// 查询日期，如2021-05-27，最早为30天前的日期。
        // FIXME: Codable support not implemented for date yet.
        public let date: Date
        
        /// 查询数目，默认为20，最大为100。
        public let limit: Int64?
        
        /// 偏移量，默认为0。
        public let offset: Int64?
        
        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String?
        
        public init (instanceId: String, date: Date, limit: Int64?, offset: Int64?, product: String?) {
            self.instanceId = instanceId
            self.date = date
            self.limit = limit
            self.offset = offset
            self.product = product
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case date = "Date"
            case limit = "Limit"
            case offset = "Offset"
            case product = "Product"
        }
    }
    
    /// DescribeNoPrimaryKeyTables返回参数结构体
    public struct DescribeNoPrimaryKeyTablesResponse: TCResponseModel {
        /// 无主键表总数。
        public let noPrimaryKeyTableCount: Int64
        
        /// 与昨日扫描无主键表的差值，正数为增加，负数为减少，0为无变化。
        public let noPrimaryKeyTableCountDiff: Int64
        
        /// 记录的无主键表总数（不超过无主键表总数），可用于分页查询。
        public let noPrimaryKeyTableRecordCount: Int64
        
        /// 无主键表列表。
        public let noPrimaryKeyTables: [Table]
        
        /// 采集时间戳（秒）。
        public let timestamp: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case noPrimaryKeyTableCount = "NoPrimaryKeyTableCount"
            case noPrimaryKeyTableCountDiff = "NoPrimaryKeyTableCountDiff"
            case noPrimaryKeyTableRecordCount = "NoPrimaryKeyTableRecordCount"
            case noPrimaryKeyTables = "NoPrimaryKeyTables"
            case timestamp = "Timestamp"
            case requestId = "RequestId"
        }
    }
}
