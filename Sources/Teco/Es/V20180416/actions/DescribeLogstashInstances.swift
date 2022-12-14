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

extension Es {
    /// DescribeLogstashInstances请求参数结构体
    public struct DescribeLogstashInstancesRequest: TCRequestModel {
        /// 实例所属可用区，不传则默认所有可用区
        public let zone: String?

        /// 实例ID列表
        public let instanceIds: [String]?

        /// 实例名称列表
        public let instanceNames: [String]?

        /// 分页起始值, 默认值0
        public let offset: UInt64?

        /// 分页大小，默认值20
        public let limit: UInt64?

        /// 排序字段<li>1：实例ID</li><li>2：实例名称</li><li>3：可用区</li><li>4：创建时间</li>若orderKey未传递则按创建时间降序排序
        public let orderByKey: UInt64?

        /// 排序方式<li>0：升序</li><li>1：降序</li>若传递了orderByKey未传递orderByType, 则默认升序
        public let orderByType: UInt64?

        /// VpcId 筛选项
        public let vpcIds: [String]?

        /// 标签信息列表
        public let tagList: [TagInfo]?

        public init(zone: String? = nil, instanceIds: [String]? = nil, instanceNames: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderByKey: UInt64? = nil, orderByType: UInt64? = nil, vpcIds: [String]? = nil, tagList: [TagInfo]? = nil) {
            self.zone = zone
            self.instanceIds = instanceIds
            self.instanceNames = instanceNames
            self.offset = offset
            self.limit = limit
            self.orderByKey = orderByKey
            self.orderByType = orderByType
            self.vpcIds = vpcIds
            self.tagList = tagList
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case instanceIds = "InstanceIds"
            case instanceNames = "InstanceNames"
            case offset = "Offset"
            case limit = "Limit"
            case orderByKey = "OrderByKey"
            case orderByType = "OrderByType"
            case vpcIds = "VpcIds"
            case tagList = "TagList"
        }
    }

    /// DescribeLogstashInstances返回参数结构体
    public struct DescribeLogstashInstancesResponse: TCResponseModel {
        /// 返回的实例个数
        public let totalCount: UInt64

        /// 实例详细信息列表
        public let instanceList: [LogstashInstanceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceList = "InstanceList"
            case requestId = "RequestId"
        }
    }

    /// 获取Logstash实例列表
    ///
    /// 查询用户该地域下符合条件的所有Logstash实例
    @inlinable
    public func describeLogstashInstances(_ input: DescribeLogstashInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLogstashInstancesResponse > {
        self.client.execute(action: "DescribeLogstashInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Logstash实例列表
    ///
    /// 查询用户该地域下符合条件的所有Logstash实例
    @inlinable
    public func describeLogstashInstances(_ input: DescribeLogstashInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogstashInstancesResponse {
        try await self.client.execute(action: "DescribeLogstashInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Logstash实例列表
    ///
    /// 查询用户该地域下符合条件的所有Logstash实例
    @inlinable
    public func describeLogstashInstances(zone: String? = nil, instanceIds: [String]? = nil, instanceNames: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderByKey: UInt64? = nil, orderByType: UInt64? = nil, vpcIds: [String]? = nil, tagList: [TagInfo]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLogstashInstancesResponse > {
        self.describeLogstashInstances(DescribeLogstashInstancesRequest(zone: zone, instanceIds: instanceIds, instanceNames: instanceNames, offset: offset, limit: limit, orderByKey: orderByKey, orderByType: orderByType, vpcIds: vpcIds, tagList: tagList), logger: logger, on: eventLoop)
    }

    /// 获取Logstash实例列表
    ///
    /// 查询用户该地域下符合条件的所有Logstash实例
    @inlinable
    public func describeLogstashInstances(zone: String? = nil, instanceIds: [String]? = nil, instanceNames: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderByKey: UInt64? = nil, orderByType: UInt64? = nil, vpcIds: [String]? = nil, tagList: [TagInfo]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogstashInstancesResponse {
        try await self.describeLogstashInstances(DescribeLogstashInstancesRequest(zone: zone, instanceIds: instanceIds, instanceNames: instanceNames, offset: offset, limit: limit, orderByKey: orderByKey, orderByType: orderByType, vpcIds: vpcIds, tagList: tagList), logger: logger, on: eventLoop)
    }
}
