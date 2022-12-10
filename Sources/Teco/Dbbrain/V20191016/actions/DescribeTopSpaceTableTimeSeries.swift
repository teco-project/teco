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
    /// 获取Top表在指定时间段内的每日空间统计信息
    ///
    /// 获取实例占用空间最大的前几张表在指定时间段内的每日由DBbrain定时采集的空间数据，默认返回按大小排序。
    @inlinable
    public func describeTopSpaceTableTimeSeries(_ input: DescribeTopSpaceTableTimeSeriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTopSpaceTableTimeSeriesResponse > {
        self.client.execute(action: "DescribeTopSpaceTableTimeSeries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取Top表在指定时间段内的每日空间统计信息
    ///
    /// 获取实例占用空间最大的前几张表在指定时间段内的每日由DBbrain定时采集的空间数据，默认返回按大小排序。
    @inlinable
    public func describeTopSpaceTableTimeSeries(_ input: DescribeTopSpaceTableTimeSeriesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopSpaceTableTimeSeriesResponse {
        try await self.client.execute(action: "DescribeTopSpaceTableTimeSeries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTopSpaceTableTimeSeries请求参数结构体
    public struct DescribeTopSpaceTableTimeSeriesRequest: TCRequestModel {
        /// 实例 ID 。
        public let instanceId: String
        
        /// 返回的Top表数量，最大值为100，默认为20。
        public let limit: Int64?
        
        /// 筛选Top表所用的排序字段，可选字段包含DataLength、IndexLength、TotalLength、DataFree、FragRatio、TableRows、PhysicalFileSize，默认为 PhysicalFileSize。
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
    
    /// DescribeTopSpaceTableTimeSeries返回参数结构体
    public struct DescribeTopSpaceTableTimeSeriesResponse: TCResponseModel {
        /// 返回的Top表空间统计信息的时序数据列表。
        public let topSpaceTableTimeSeries: [TableSpaceTimeSeries]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case topSpaceTableTimeSeries = "TopSpaceTableTimeSeries"
            case requestId = "RequestId"
        }
    }
}
