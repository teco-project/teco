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
import TecoDateHelpers

extension Tsf {
    /// DescribeStatistics请求参数结构体
    public struct DescribeStatisticsRequest: TCRequestModel {
        /// 类型：Interface、Service、Group、Instance、SQL、NoSQL
        public let type: String

        /// 步长，单位s：60、3600、86400
        public let timeStep: UInt64

        /// 偏移量，取值范围大于等于0，默认值为0
        public let offset: UInt64

        /// 单页请求配置数量，取值范围[1, 50]，默认值为10
        public let limit: UInt64

        /// 命名空间Id
        public let namespaceId: String?

        /// 排序字段:AvgTimeConsuming[默认]、RequestCount、ErrorRate。实例监控还支持 CpuPercent
        public let orderBy: String?

        /// 排序方式：ASC:0、DESC:1
        public let orderType: UInt64?

        /// 开始时间：年月日 时分秒2020-05-12 14:43:12
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var endTime: Date?

        /// 开始时间：年月日 时分秒2020-05-12 14:43:12
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date?

        /// 服务名称
        public let serviceName: String?

        /// 搜索关键词
        public let searchWord: String?

        /// 维度
        public let metricDimensionValues: [MetricDimensionValue]?

        /// 聚合关键词
        public let bucketKey: String?

        /// 数据库
        public let dbName: String?

        /// 命名空间id数组
        public let namespaceIdList: [String]?

        public init(type: String, timeStep: UInt64, offset: UInt64, limit: UInt64, namespaceId: String? = nil, orderBy: String? = nil, orderType: UInt64? = nil, endTime: Date? = nil, startTime: Date? = nil, serviceName: String? = nil, searchWord: String? = nil, metricDimensionValues: [MetricDimensionValue]? = nil, bucketKey: String? = nil, dbName: String? = nil, namespaceIdList: [String]? = nil) {
            self.type = type
            self.timeStep = timeStep
            self.offset = offset
            self.limit = limit
            self.namespaceId = namespaceId
            self.orderBy = orderBy
            self.orderType = orderType
            self.endTime = endTime
            self.startTime = startTime
            self.serviceName = serviceName
            self.searchWord = searchWord
            self.metricDimensionValues = metricDimensionValues
            self.bucketKey = bucketKey
            self.dbName = dbName
            self.namespaceIdList = namespaceIdList
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case timeStep = "TimeStep"
            case offset = "Offset"
            case limit = "Limit"
            case namespaceId = "NamespaceId"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case endTime = "EndTime"
            case startTime = "StartTime"
            case serviceName = "ServiceName"
            case searchWord = "SearchWord"
            case metricDimensionValues = "MetricDimensionValues"
            case bucketKey = "BucketKey"
            case dbName = "DbName"
            case namespaceIdList = "NamespaceIdList"
        }
    }

    /// DescribeStatistics返回参数结构体
    public struct DescribeStatisticsResponse: TCResponseModel {
        /// 查询服务统计结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ServiceStatisticsResults?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 服务统计
    ///
    /// 服务统计页面：接口和服务维度
    @inlinable
    public func describeStatistics(_ input: DescribeStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStatisticsResponse > {
        self.client.execute(action: "DescribeStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 服务统计
    ///
    /// 服务统计页面：接口和服务维度
    @inlinable
    public func describeStatistics(_ input: DescribeStatisticsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStatisticsResponse {
        try await self.client.execute(action: "DescribeStatistics", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 服务统计
    ///
    /// 服务统计页面：接口和服务维度
    @inlinable
    public func describeStatistics(type: String, timeStep: UInt64, offset: UInt64, limit: UInt64, namespaceId: String? = nil, orderBy: String? = nil, orderType: UInt64? = nil, endTime: Date? = nil, startTime: Date? = nil, serviceName: String? = nil, searchWord: String? = nil, metricDimensionValues: [MetricDimensionValue]? = nil, bucketKey: String? = nil, dbName: String? = nil, namespaceIdList: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeStatisticsResponse > {
        self.describeStatistics(DescribeStatisticsRequest(type: type, timeStep: timeStep, offset: offset, limit: limit, namespaceId: namespaceId, orderBy: orderBy, orderType: orderType, endTime: endTime, startTime: startTime, serviceName: serviceName, searchWord: searchWord, metricDimensionValues: metricDimensionValues, bucketKey: bucketKey, dbName: dbName, namespaceIdList: namespaceIdList), logger: logger, on: eventLoop)
    }

    /// 服务统计
    ///
    /// 服务统计页面：接口和服务维度
    @inlinable
    public func describeStatistics(type: String, timeStep: UInt64, offset: UInt64, limit: UInt64, namespaceId: String? = nil, orderBy: String? = nil, orderType: UInt64? = nil, endTime: Date? = nil, startTime: Date? = nil, serviceName: String? = nil, searchWord: String? = nil, metricDimensionValues: [MetricDimensionValue]? = nil, bucketKey: String? = nil, dbName: String? = nil, namespaceIdList: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStatisticsResponse {
        try await self.describeStatistics(DescribeStatisticsRequest(type: type, timeStep: timeStep, offset: offset, limit: limit, namespaceId: namespaceId, orderBy: orderBy, orderType: orderType, endTime: endTime, startTime: startTime, serviceName: serviceName, searchWord: searchWord, metricDimensionValues: metricDimensionValues, bucketKey: bucketKey, dbName: dbName, namespaceIdList: namespaceIdList), logger: logger, on: eventLoop)
    }
}
