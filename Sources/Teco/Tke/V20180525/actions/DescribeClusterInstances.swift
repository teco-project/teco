//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tke {
    /// DescribeClusterInstances请求参数结构体
    public struct DescribeClusterInstancesRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        /// 需要获取的节点实例Id列表。如果为空，表示拉取集群下所有节点实例。
        public let instanceIds: [String]?

        /// 节点角色, MASTER, WORKER, ETCD, MASTER_ETCD,ALL, 默认为WORKER。默认为WORKER类型。
        public let instanceRole: String?

        /// 过滤条件列表；Name的可选值为nodepool-id、nodepool-instance-type；Name为nodepool-id表示根据节点池id过滤机器，Value的值为具体的节点池id，Name为nodepool-instance-type表示节点加入节点池的方式，Value的值为MANUALLY_ADDED（手动加入节点池）、AUTOSCALING_ADDED（伸缩组扩容方式加入节点池）、ALL（手动加入节点池 和 伸缩组扩容方式加入节点池）
        public let filters: [Filter]?

        public init(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, instanceIds: [String]? = nil, instanceRole: String? = nil, filters: [Filter]? = nil) {
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
            self.instanceIds = instanceIds
            self.instanceRole = instanceRole
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
            case instanceIds = "InstanceIds"
            case instanceRole = "InstanceRole"
            case filters = "Filters"
        }
    }

    /// DescribeClusterInstances返回参数结构体
    public struct DescribeClusterInstancesResponse: TCResponseModel {
        /// 集群中实例总数
        public let totalCount: UInt64

        /// 集群中实例列表
        public let instanceSet: [Instance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }
    }

    /// 查询集群节点信息
    ///
    ///  查询集群下节点实例信息
    @inlinable
    public func describeClusterInstances(_ input: DescribeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterInstancesResponse> {
        self.client.execute(action: "DescribeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群节点信息
    ///
    ///  查询集群下节点实例信息
    @inlinable
    public func describeClusterInstances(_ input: DescribeClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterInstancesResponse {
        try await self.client.execute(action: "DescribeClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群节点信息
    ///
    ///  查询集群下节点实例信息
    @inlinable
    public func describeClusterInstances(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, instanceIds: [String]? = nil, instanceRole: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterInstancesResponse> {
        self.describeClusterInstances(DescribeClusterInstancesRequest(clusterId: clusterId, offset: offset, limit: limit, instanceIds: instanceIds, instanceRole: instanceRole, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群节点信息
    ///
    ///  查询集群下节点实例信息
    @inlinable
    public func describeClusterInstances(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, instanceIds: [String]? = nil, instanceRole: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterInstancesResponse {
        try await self.describeClusterInstances(DescribeClusterInstancesRequest(clusterId: clusterId, offset: offset, limit: limit, instanceIds: instanceIds, instanceRole: instanceRole, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
