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

extension Mongodb {
    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目ID、实例ID、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBInstancesResponse > {
        self.client.execute(action: "DescribeDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目ID、实例ID、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        try await self.client.execute(action: "DescribeDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDBInstances请求参数结构体
    public struct DescribeDBInstancesRequest: TCRequestModel {
        /// 实例ID列表，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceIds: [String]?
        
        /// 实例类型，取值范围：0-所有实例,1-正式实例，2-临时实例, 3-只读实例，-1-正式实例+只读+灾备实例
        public let instanceType: Int64?
        
        /// 集群类型，取值范围：0-副本集实例，1-分片实例，-1-所有实例
        public let clusterType: Int64?
        
        /// 实例状态，取值范围：0-待初始化，1-流程执行中，2-实例有效，-2-实例已过期
        public let status: [Int64]?
        
        /// 私有网络的ID，基础网络则不传该参数
        public let vpcId: String?
        
        /// 私有网络的子网ID，基础网络则不传该参数。入参设置该参数的同时，必须设置相应的VpcId
        public let subnetId: String?
        
        /// 付费类型，取值范围：0-按量计费，1-包年包月，-1-按量计费+包年包月
        public let payMode: Int64?
        
        /// 单次请求返回的数量，最小值为1，最大值为100，默认值为20
        public let limit: UInt64?
        
        /// 偏移量，默认值为0
        public let offset: UInt64?
        
        /// 返回结果集排序的字段，目前支持："ProjectId", "InstanceName", "CreateTime"，默认为升序排序
        public let orderBy: String?
        
        /// 返回结果集排序方式，目前支持："ASC"或者"DESC"
        public let orderByType: String?
        
        public init (instanceIds: [String]?, instanceType: Int64?, clusterType: Int64?, status: [Int64]?, vpcId: String?, subnetId: String?, payMode: Int64?, limit: UInt64?, offset: UInt64?, orderBy: String?, orderByType: String?) {
            self.instanceIds = instanceIds
            self.instanceType = instanceType
            self.clusterType = clusterType
            self.status = status
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.payMode = payMode
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case instanceType = "InstanceType"
            case clusterType = "ClusterType"
            case status = "Status"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case payMode = "PayMode"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }
    }
    
    /// DescribeDBInstances返回参数结构体
    public struct DescribeDBInstancesResponse: TCResponseModel {
        /// 符合查询条件的实例总数
        public let totalCount: UInt64
        
        /// 实例详细信息
        public let instanceDetails: [MongoDBInstanceDetail]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceDetails = "InstanceDetails"
            case requestId = "RequestId"
        }
    }
}