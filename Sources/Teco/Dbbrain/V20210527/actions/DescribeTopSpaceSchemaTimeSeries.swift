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

extension Dbbrain {
    /// 获取Top库在指定时间段内的每日空间统计信息
    ///
    /// 获取实例占用空间最大的前几个库在指定时间段内的每日由DBbrain定时采集的空间数据，默认返回按大小排序。
    @inlinable
    public func describeTopSpaceSchemaTimeSeries(_ input: DescribeTopSpaceSchemaTimeSeriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTopSpaceSchemaTimeSeriesResponse > {
        self.client.execute(action: "DescribeTopSpaceSchemaTimeSeries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取Top库在指定时间段内的每日空间统计信息
    ///
    /// 获取实例占用空间最大的前几个库在指定时间段内的每日由DBbrain定时采集的空间数据，默认返回按大小排序。
    @inlinable
    public func describeTopSpaceSchemaTimeSeries(_ input: DescribeTopSpaceSchemaTimeSeriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopSpaceSchemaTimeSeriesResponse {
        try await self.client.execute(action: "DescribeTopSpaceSchemaTimeSeries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTopSpaceSchemaTimeSeries请求参数结构体
    public struct DescribeTopSpaceSchemaTimeSeriesRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String
        
        /// 返回的Top库数量，最大值为100，默认为20。
        public let limit: Int64?
        
        /// 筛选Top库所用的排序字段，可选字段包含DataLength、IndexLength、TotalLength、DataFree、FragRatio、TableRows、PhysicalFileSize（仅云数据库 MySQL实例支持），云数据库 MySQL实例默认为 PhysicalFileSize，其他产品实例默认为TotalLength。
        public let sortBy: String?
        
        /// 开始日期，如“2021-01-01”，最早为当日的前第29天，默认为截止日期的前第6天。
        public let startDate: Date?
        
        /// 截止日期，如“2021-01-01”，最早为当日的前第29天，默认为当日。
        public let endDate: Date?
        
        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        public let product: String?
        
        public init (instanceId: String, limit: Int64?, sortBy: String?, startDate: Date?, endDate: Date?, product: String?) {
            self.instanceId = instanceId
            self.limit = limit
            self.sortBy = sortBy
            self.startDate = startDate
            self.endDate = endDate
            self.product = product
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case sortBy = "SortBy"
            case startDate = "StartDate"
            case endDate = "EndDate"
            case product = "Product"
        }
    }
    
    /// DescribeTopSpaceSchemaTimeSeries返回参数结构体
    public struct DescribeTopSpaceSchemaTimeSeriesResponse: TCResponseModel {
        /// 返回的Top库空间统计信息的时序数据列表。
        public let topSpaceSchemaTimeSeries: [SchemaSpaceTimeSeries]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case topSpaceSchemaTimeSeries = "TopSpaceSchemaTimeSeries"
            case requestId = "RequestId"
        }
    }
}