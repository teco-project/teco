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
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCRequestModel {
        /// 集群实例所属可用区，不传则默认所有可用区
        public let zone: String?
        
        /// 集群实例ID列表
        public let instanceIds: [String]?
        
        /// 集群实例名称列表
        public let instanceNames: [String]?
        
        /// 分页起始值, 默认值0
        public let offset: UInt64?
        
        /// 分页大小，默认值20
        public let limit: UInt64?
        
        /// 排序字段<li>1：实例ID</li><li>2：实例名称</li><li>3：可用区</li><li>4：创建时间</li>若orderByKey未传递则按创建时间降序排序
        public let orderByKey: UInt64?
        
        /// 排序方式<li>0：升序</li><li>1：降序</li>若传递了orderByKey未传递orderByType, 则默认升序
        public let orderByType: UInt64?
        
        /// 节点标签信息列表
        public let tagList: [TagInfo]?
        
        /// 私有网络vip列表
        public let ipList: [String]?
        
        /// 可用区列表
        public let zoneList: [String]?
        
        /// 健康状态筛列表:0表示绿色，1表示黄色，2表示红色,-1表示未知
        public let healthStatus: [Int64]?
        
        /// Vpc列表 筛选项
        public let vpcIds: [String]?
        
        public init (zone: String? = nil, instanceIds: [String]? = nil, instanceNames: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, orderByKey: UInt64? = nil, orderByType: UInt64? = nil, tagList: [TagInfo]? = nil, ipList: [String]? = nil, zoneList: [String]? = nil, healthStatus: [Int64]? = nil, vpcIds: [String]? = nil) {
            self.zone = zone
            self.instanceIds = instanceIds
            self.instanceNames = instanceNames
            self.offset = offset
            self.limit = limit
            self.orderByKey = orderByKey
            self.orderByType = orderByType
            self.tagList = tagList
            self.ipList = ipList
            self.zoneList = zoneList
            self.healthStatus = healthStatus
            self.vpcIds = vpcIds
        }
        
        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case instanceIds = "InstanceIds"
            case instanceNames = "InstanceNames"
            case offset = "Offset"
            case limit = "Limit"
            case orderByKey = "OrderByKey"
            case orderByType = "OrderByType"
            case tagList = "TagList"
            case ipList = "IpList"
            case zoneList = "ZoneList"
            case healthStatus = "HealthStatus"
            case vpcIds = "VpcIds"
        }
    }
    
    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCResponseModel {
        /// 返回的实例个数
        public let totalCount: UInt64
        
        /// 实例详细信息列表
        public let instanceList: [InstanceInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceList = "InstanceList"
            case requestId = "RequestId"
        }
    }
    
    /// 查询ES集群实例
    ///
    /// 查询用户该地域下符合条件的所有实例
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesResponse > {
        self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询ES集群实例
    ///
    /// 查询用户该地域下符合条件的所有实例
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
