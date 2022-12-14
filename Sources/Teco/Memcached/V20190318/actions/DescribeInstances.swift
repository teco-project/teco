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

extension Memcached {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCRequestModel {
        /// 枚举范围： AddTimeStamp, InstanceName, ProjectId
        public let orderBy: String?

        /// 查找的关键字
        public let searchKeys: [String]?

        /// 子网ID列表
        public let uniqSubnetIds: [String]?

        /// VIP列表
        public let vips: [String]?

        /// 0倒序，1正序，默认倒序
        public let orderType: Int64?

        /// 实例名称列表
        public let instanceNames: [String]?

        /// VPC ID列表
        public let uniqVpcIds: [String]?

        /// 项目ID列表
        public let projectIds: [Int64]?

        /// 偏移量，取Limit整数倍
        public let offset: UInt64?

        /// 实例列表的大小，参数默认值100
        public let limit: UInt64?

        /// 实例ID列表
        public let instanceIds: [String]?

        public init(orderBy: String? = nil, searchKeys: [String]? = nil, uniqSubnetIds: [String]? = nil, vips: [String]? = nil, orderType: Int64? = nil, instanceNames: [String]? = nil, uniqVpcIds: [String]? = nil, projectIds: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, instanceIds: [String]? = nil) {
            self.orderBy = orderBy
            self.searchKeys = searchKeys
            self.uniqSubnetIds = uniqSubnetIds
            self.vips = vips
            self.orderType = orderType
            self.instanceNames = instanceNames
            self.uniqVpcIds = uniqVpcIds
            self.projectIds = projectIds
            self.offset = offset
            self.limit = limit
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case orderBy = "OrderBy"
            case searchKeys = "SearchKeys"
            case uniqSubnetIds = "UniqSubnetIds"
            case vips = "Vips"
            case orderType = "OrderType"
            case instanceNames = "InstanceNames"
            case uniqVpcIds = "UniqVpcIds"
            case projectIds = "ProjectIds"
            case offset = "Offset"
            case limit = "Limit"
            case instanceIds = "InstanceIds"
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCResponseModel {
        /// 实例详细信息列表
        public let instanceList: [InstanceListInfo]

        /// 实例数量
        public let totalNum: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceList = "InstanceList"
            case totalNum = "TotalNum"
            case requestId = "RequestId"
        }
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesResponse > {
        self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstances(orderBy: String? = nil, searchKeys: [String]? = nil, uniqSubnetIds: [String]? = nil, vips: [String]? = nil, orderType: Int64? = nil, instanceNames: [String]? = nil, uniqVpcIds: [String]? = nil, projectIds: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, instanceIds: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstancesResponse > {
        self.describeInstances(DescribeInstancesRequest(orderBy: orderBy, searchKeys: searchKeys, uniqSubnetIds: uniqSubnetIds, vips: vips, orderType: orderType, instanceNames: instanceNames, uniqVpcIds: uniqVpcIds, projectIds: projectIds, offset: offset, limit: limit, instanceIds: instanceIds), logger: logger, on: eventLoop)
    }

    /// 获取Cmem实例列表
    @inlinable
    public func describeInstances(orderBy: String? = nil, searchKeys: [String]? = nil, uniqSubnetIds: [String]? = nil, vips: [String]? = nil, orderType: Int64? = nil, instanceNames: [String]? = nil, uniqVpcIds: [String]? = nil, projectIds: [Int64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, instanceIds: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(DescribeInstancesRequest(orderBy: orderBy, searchKeys: searchKeys, uniqSubnetIds: uniqSubnetIds, vips: vips, orderType: orderType, instanceNames: instanceNames, uniqVpcIds: uniqVpcIds, projectIds: projectIds, offset: offset, limit: limit, instanceIds: instanceIds), logger: logger, on: eventLoop)
    }
}
