//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

extension Emr {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCRequestModel {
        /// 集群筛选策略。取值范围：
        /// <li>clusterList：表示查询除了已销毁集群之外的集群列表。</li>
        /// <li>monitorManage：表示查询除了已销毁、创建中以及创建失败的集群之外的集群列表。</li>
        /// <li>cloudHardwareManage/componentManage：目前这两个取值为预留取值，暂时和monitorManage表示同样的含义。</li>
        public let displayStrategy: String

        /// 按照一个或者多个实例ID查询。实例ID形如: emr-xxxxxxxx 。(此参数的具体格式可参考API[简介](https://cloud.tencent.com/document/api/213/15688)的 Ids.N 一节)。如果不填写实例ID，返回该APPID下所有实例列表。
        public let instanceIds: [String]?

        /// 页编号，默认值为0，表示第一页。
        public let offset: UInt64?

        /// 每页返回数量，默认值为10，最大值为100。
        public let limit: UInt64?

        /// 建议必填-1，表示拉取所有项目下的集群。
        /// 不填默认值为0，表示拉取默认项目下的集群。
        /// 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/378/4400) 的返回值中的 projectId 字段来获取。
        public let projectId: Int64?

        /// 排序字段。取值范围：
        /// <li>clusterId：表示按照实例ID排序。</li>
        /// <li>addTime：表示按照实例创建时间排序。</li>
        /// <li>status：表示按照实例的状态码排序。</li>
        public let orderField: String?

        /// 按照OrderField升序或者降序进行排序。取值范围：
        /// <li>0：表示降序。</li>
        /// <li>1：表示升序。</li>默认值为0。
        public let asc: Int64?

        public init(displayStrategy: String, instanceIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, projectId: Int64? = nil, orderField: String? = nil, asc: Int64? = nil) {
            self.displayStrategy = displayStrategy
            self.instanceIds = instanceIds
            self.offset = offset
            self.limit = limit
            self.projectId = projectId
            self.orderField = orderField
            self.asc = asc
        }

        enum CodingKeys: String, CodingKey {
            case displayStrategy = "DisplayStrategy"
            case instanceIds = "InstanceIds"
            case offset = "Offset"
            case limit = "Limit"
            case projectId = "ProjectId"
            case orderField = "OrderField"
            case asc = "Asc"
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCResponseModel {
        /// 符合条件的实例总数。
        public let totalCnt: Int64

        /// EMR实例详细信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterList: [ClusterInstancesInfo]?

        /// 实例关联的标签键列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagKeys: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCnt = "TotalCnt"
            case clusterList = "ClusterList"
            case tagKeys = "TagKeys"
            case requestId = "RequestId"
        }
    }

    /// 查询集群实例信息
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群实例信息
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群实例信息
    @inlinable
    public func describeInstances(displayStrategy: String, instanceIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, projectId: Int64? = nil, orderField: String? = nil, asc: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        let input = DescribeInstancesRequest(displayStrategy: displayStrategy, instanceIds: instanceIds, offset: offset, limit: limit, projectId: projectId, orderField: orderField, asc: asc)
        return self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群实例信息
    @inlinable
    public func describeInstances(displayStrategy: String, instanceIds: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, projectId: Int64? = nil, orderField: String? = nil, asc: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        let input = DescribeInstancesRequest(displayStrategy: displayStrategy, instanceIds: instanceIds, offset: offset, limit: limit, projectId: projectId, orderField: orderField, asc: asc)
        return try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
