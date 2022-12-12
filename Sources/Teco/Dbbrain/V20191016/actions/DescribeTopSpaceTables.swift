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

extension Dbbrain {
    /// DescribeTopSpaceTables请求参数结构体
    public struct DescribeTopSpaceTablesRequest: TCRequestModel {
        /// 实例 ID 。
        public let instanceId: String
        
        /// 返回的Top表数量，最大值为100，默认为20。
        public let limit: Int64?
        
        /// 筛选Top表所用的排序字段，可选字段包含DataLength、IndexLength、TotalLength、DataFree、FragRatio、TableRows、PhysicalFileSize（仅云数据库 MySQL实例支持），云数据库 MySQL实例默认为 PhysicalFileSize，其他产品实例默认为TotalLength。
        public let sortBy: String?
        
        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        public let product: String?
        
        public init (instanceId: String, limit: Int64? = nil, sortBy: String? = nil, product: String? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.sortBy = sortBy
            self.product = product
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case sortBy = "SortBy"
            case product = "Product"
        }
    }
    
    /// DescribeTopSpaceTables返回参数结构体
    public struct DescribeTopSpaceTablesResponse: TCResponseModel {
        /// 返回的Top表空间统计信息列表。
        public let topSpaceTables: [TableSpaceData]
        
        /// 采集表空间数据的时间戳（秒）。
        public let timestamp: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case topSpaceTables = "TopSpaceTables"
            case timestamp = "Timestamp"
            case requestId = "RequestId"
        }
    }
    
    /// 获取Top表的空间统计信息
    ///
    /// 获取实例Top表的实时空间统计信息，默认返回按大小排序。
    @inlinable
    public func describeTopSpaceTables(_ input: DescribeTopSpaceTablesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTopSpaceTablesResponse > {
        self.client.execute(action: "DescribeTopSpaceTables", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取Top表的空间统计信息
    ///
    /// 获取实例Top表的实时空间统计信息，默认返回按大小排序。
    @inlinable
    public func describeTopSpaceTables(_ input: DescribeTopSpaceTablesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopSpaceTablesResponse {
        try await self.client.execute(action: "DescribeTopSpaceTables", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
