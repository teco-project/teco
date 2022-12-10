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

extension Redis {
    /// 查询Redis实例列表信息
    ///
    /// 查询Redis实例列表信息。该接口已废弃。
    @inlinable
    public func describeCommonDBInstances(_ input: DescribeCommonDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCommonDBInstancesResponse > {
        self.client.execute(action: "DescribeCommonDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询Redis实例列表信息
    ///
    /// 查询Redis实例列表信息。该接口已废弃。
    @inlinable
    public func describeCommonDBInstances(_ input: DescribeCommonDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCommonDBInstancesResponse {
        try await self.client.execute(action: "DescribeCommonDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCommonDBInstances请求参数结构体
    public struct DescribeCommonDBInstancesRequest: TCRequestModel {
        /// vpc网络ID信息列表
        public let vpcIds: [Int64]?
        
        /// 子网ID信息列表
        public let subnetIds: [Int64]?
        
        /// 计费类型过滤列表；0表示包年包月，1表示按量计费
        public let payMode: Int64?
        
        /// 实例ID过滤信息列表
        public let instanceIds: [String]?
        
        /// 实例名称过滤信息列表
        public let instanceNames: [String]?
        
        /// 实例状态信息过滤列表
        public let status: [String]?
        
        /// 排序字段
        public let orderBy: String?
        
        /// 排序方式
        public let orderByType: String?
        
        /// 实例vip信息列表
        public let vips: [String]?
        
        /// vpc网络ID信息列表
        public let uniqVpcIds: [String]?
        
        /// 子网统一ID列表
        public let uniqSubnetIds: [String]?
        
        /// 数量限制，默认推荐100
        public let limit: Int64?
        
        /// 偏移量，默认0
        public let offset: Int64?
        
        public init (vpcIds: [Int64]?, subnetIds: [Int64]?, payMode: Int64?, instanceIds: [String]?, instanceNames: [String]?, status: [String]?, orderBy: String?, orderByType: String?, vips: [String]?, uniqVpcIds: [String]?, uniqSubnetIds: [String]?, limit: Int64?, offset: Int64?) {
            self.vpcIds = vpcIds
            self.subnetIds = subnetIds
            self.payMode = payMode
            self.instanceIds = instanceIds
            self.instanceNames = instanceNames
            self.status = status
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.vips = vips
            self.uniqVpcIds = uniqVpcIds
            self.uniqSubnetIds = uniqSubnetIds
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcIds = "VpcIds"
            case subnetIds = "SubnetIds"
            case payMode = "PayMode"
            case instanceIds = "InstanceIds"
            case instanceNames = "InstanceNames"
            case status = "Status"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case vips = "Vips"
            case uniqVpcIds = "UniqVpcIds"
            case uniqSubnetIds = "UniqSubnetIds"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeCommonDBInstances返回参数结构体
    public struct DescribeCommonDBInstancesResponse: TCResponseModel {
        /// 实例数
        public let totalCount: Int64
        
        /// 实例信息
        public let instanceDetails: [RedisCommonInstanceList]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceDetails = "InstanceDetails"
            case requestId = "RequestId"
        }
    }
}
