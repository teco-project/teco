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

import TecoPaginationHelpers

extension Redis {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCPaginatedRequest {
        /// 每页输出实例的数量，参数默认值20，最大值为1000。
        public let limit: UInt64?

        /// 分页偏移量，取Limit整数倍。
        public let offset: UInt64?

        /// 实例 ID，如：crs-6ubhgouj。
        public let instanceId: String?

        /// 实例排序依据，枚举值如下所示：<ul><li>projectId：项目ID。</li><li>createtime：实例创建时间。</li><li>instancename：实例名称。</li><li>type：实例类型。</li><li>curDeadline：实例到期时间。</li></ul>
        public let orderBy: String?

        /// 实例排序方式，默认为倒序排序。<ul><li>1：倒序。</li><li>0：顺序。</li></ul>
        public let orderType: Int64?

        /// 私有网络 ID 数组。如果不配置该参数或设置数组为空则默认选择基础网络。例如47525。该参数暂时保留，可忽略。请根据 UniqVpcIds 参数格式设置私有网络ID数组。
        public let vpcIds: [String]?

        /// 私有网络所属子网 ID 数组，例如：56854。该参数暂时保留，可忽略。请根据 UniqSubnetIds 参数格式设置私有网络子网 ID 数组。
        public let subnetIds: [String]?

        /// 设置模糊查询关键字，支持根据实例名称或实例ID模糊查询实例。
        public let searchKey: String?

        /// 项目 ID 组成的数组。
        public let projectIds: [Int64]?

        /// 实例名称。
        public let instanceName: String?

        /// 私有网络 ID 数组。如果不配置该参数或者设置数组为空则默认选择基础网络，如：vpc-sad23jfdfk。
        public let uniqVpcIds: [String]?

        /// 私有网络所属子网 ID 数组，如：subnet-fdj24n34j2。
        public let uniqSubnetIds: [String]?

        /// 地域 ID 数组，该参数已经弃用，可通过公共参数Region查询对应地域。
        public let regionIds: [Int64]?

        /// 实例状态。<ul><li>0：待初始化。</li><li>1：流程中。</li><li>2：运行中。</li><li>-2：已隔离。</li><li>-3：待删除。</li></ul>
        public let status: [Int64]?

        /// 实例架构版本。<ul><li>1：单机版。</li><li>2：主从版。</li><li>3：集群版。</li></ul>
        public let typeVersion: Int64?

        /// 存储引擎信息。可设置为Redis-2.8、Redis-4.0、Redis-5.0、Redis-6.0 或者 CKV。
        public let engineName: String?

        /// 续费模式。<ul><li>0：默认状态（手动续费）。</li><li>1：自动续费。</li><li>2：明确不自动续费。</ul>
        public let autoRenew: [Int64]?

        /// 计费模式。<ul><li>postpaid：按量计费。</li><li>prepaid：包年包月。</li></ul>
        public let billingMode: String?

        /// 实例类型。<ul><li>1：Redis 老集群版。</li><li>2：Redis 2.8 主从版。</li><li>3：CKV 主从版。</li><li>4：CKV 集群版。</li><li>5：Redis 2.8 单机版。</li><li>6：Redis 4.0主从版。</li><li>7：Redis 4.0 集群版。</li><li>8：Redis 5.0 主从版。</li><li>9：Redis 5.0 集群版。</li></ul>
        public let type: Int64?

        /// 设置搜索关键字数组，可根据实例ID、实例名称、完整IP地址查询实例。
        public let searchKeys: [String]?

        /// 内部参数，用户可忽略。
        public let typeList: [Int64]?

        /// 内部参数，用户可忽略。
        public let monitorVersion: String?

        /// 根据标签的 Key 和 Value 筛选资源。该参数不配置或者数组设置为空值，则不根据标签进行过滤。
        public let instanceTags: [InstanceTagInfo]?

        /// 根据标签的 Key 筛选资源，该参数不配置或者数组设置为空值，则不根据标签Key进行过滤。
        public let tagKeys: [String]?

        /// 实例的产品版本。如果该参数不配置或者数组设置为空值，则默认不依据此参数过滤实例。<ul><li>local：本地盘版。</li><li>cloud：云盘版。</li><li>cdc：独享集群版。</li></ul>
        public let productVersions: [String]?

        /// 批量查询指定的实例 ID，返回结果已 Limit 限制为主。
        public let instanceIds: [String]?

        /// 可用区模式。<ul><li>singleaz：单可用区。</li><li>multiaz：多可用区。</li></ul>
        public let azMode: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, instanceId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, vpcIds: [String]? = nil, subnetIds: [String]? = nil, searchKey: String? = nil, projectIds: [Int64]? = nil, instanceName: String? = nil, uniqVpcIds: [String]? = nil, uniqSubnetIds: [String]? = nil, regionIds: [Int64]? = nil, status: [Int64]? = nil, typeVersion: Int64? = nil, engineName: String? = nil, autoRenew: [Int64]? = nil, billingMode: String? = nil, type: Int64? = nil, searchKeys: [String]? = nil, typeList: [Int64]? = nil, monitorVersion: String? = nil, instanceTags: [InstanceTagInfo]? = nil, tagKeys: [String]? = nil, productVersions: [String]? = nil, instanceIds: [String]? = nil, azMode: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.instanceId = instanceId
            self.orderBy = orderBy
            self.orderType = orderType
            self.vpcIds = vpcIds
            self.subnetIds = subnetIds
            self.searchKey = searchKey
            self.projectIds = projectIds
            self.instanceName = instanceName
            self.uniqVpcIds = uniqVpcIds
            self.uniqSubnetIds = uniqSubnetIds
            self.regionIds = regionIds
            self.status = status
            self.typeVersion = typeVersion
            self.engineName = engineName
            self.autoRenew = autoRenew
            self.billingMode = billingMode
            self.type = type
            self.searchKeys = searchKeys
            self.typeList = typeList
            self.monitorVersion = monitorVersion
            self.instanceTags = instanceTags
            self.tagKeys = tagKeys
            self.productVersions = productVersions
            self.instanceIds = instanceIds
            self.azMode = azMode
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case instanceId = "InstanceId"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case vpcIds = "VpcIds"
            case subnetIds = "SubnetIds"
            case searchKey = "SearchKey"
            case projectIds = "ProjectIds"
            case instanceName = "InstanceName"
            case uniqVpcIds = "UniqVpcIds"
            case uniqSubnetIds = "UniqSubnetIds"
            case regionIds = "RegionIds"
            case status = "Status"
            case typeVersion = "TypeVersion"
            case engineName = "EngineName"
            case autoRenew = "AutoRenew"
            case billingMode = "BillingMode"
            case type = "Type"
            case searchKeys = "SearchKeys"
            case typeList = "TypeList"
            case monitorVersion = "MonitorVersion"
            case instanceTags = "InstanceTags"
            case tagKeys = "TagKeys"
            case productVersions = "ProductVersions"
            case instanceIds = "InstanceIds"
            case azMode = "AzMode"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInstancesResponse) -> DescribeInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), instanceId: self.instanceId, orderBy: self.orderBy, orderType: self.orderType, vpcIds: self.vpcIds, subnetIds: self.subnetIds, searchKey: self.searchKey, projectIds: self.projectIds, instanceName: self.instanceName, uniqVpcIds: self.uniqVpcIds, uniqSubnetIds: self.uniqSubnetIds, regionIds: self.regionIds, status: self.status, typeVersion: self.typeVersion, engineName: self.engineName, autoRenew: self.autoRenew, billingMode: self.billingMode, type: self.type, searchKeys: self.searchKeys, typeList: self.typeList, monitorVersion: self.monitorVersion, instanceTags: self.instanceTags, tagKeys: self.tagKeys, productVersions: self.productVersions, instanceIds: self.instanceIds, azMode: self.azMode)
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCPaginatedResponse {
        /// 实例总数量。
        public let totalCount: Int64

        /// 实例详细信息列表。
        public let instanceSet: [InstanceSet]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceSet] {
            self.instanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询Redis实例列表
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Redis实例列表
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Redis实例列表
    @inlinable
    public func describeInstances(limit: UInt64? = nil, offset: UInt64? = nil, instanceId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, vpcIds: [String]? = nil, subnetIds: [String]? = nil, searchKey: String? = nil, projectIds: [Int64]? = nil, instanceName: String? = nil, uniqVpcIds: [String]? = nil, uniqSubnetIds: [String]? = nil, regionIds: [Int64]? = nil, status: [Int64]? = nil, typeVersion: Int64? = nil, engineName: String? = nil, autoRenew: [Int64]? = nil, billingMode: String? = nil, type: Int64? = nil, searchKeys: [String]? = nil, typeList: [Int64]? = nil, monitorVersion: String? = nil, instanceTags: [InstanceTagInfo]? = nil, tagKeys: [String]? = nil, productVersions: [String]? = nil, instanceIds: [String]? = nil, azMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        let input = DescribeInstancesRequest(limit: limit, offset: offset, instanceId: instanceId, orderBy: orderBy, orderType: orderType, vpcIds: vpcIds, subnetIds: subnetIds, searchKey: searchKey, projectIds: projectIds, instanceName: instanceName, uniqVpcIds: uniqVpcIds, uniqSubnetIds: uniqSubnetIds, regionIds: regionIds, status: status, typeVersion: typeVersion, engineName: engineName, autoRenew: autoRenew, billingMode: billingMode, type: type, searchKeys: searchKeys, typeList: typeList, monitorVersion: monitorVersion, instanceTags: instanceTags, tagKeys: tagKeys, productVersions: productVersions, instanceIds: instanceIds, azMode: azMode)
        return self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Redis实例列表
    @inlinable
    public func describeInstances(limit: UInt64? = nil, offset: UInt64? = nil, instanceId: String? = nil, orderBy: String? = nil, orderType: Int64? = nil, vpcIds: [String]? = nil, subnetIds: [String]? = nil, searchKey: String? = nil, projectIds: [Int64]? = nil, instanceName: String? = nil, uniqVpcIds: [String]? = nil, uniqSubnetIds: [String]? = nil, regionIds: [Int64]? = nil, status: [Int64]? = nil, typeVersion: Int64? = nil, engineName: String? = nil, autoRenew: [Int64]? = nil, billingMode: String? = nil, type: Int64? = nil, searchKeys: [String]? = nil, typeList: [Int64]? = nil, monitorVersion: String? = nil, instanceTags: [InstanceTagInfo]? = nil, tagKeys: [String]? = nil, productVersions: [String]? = nil, instanceIds: [String]? = nil, azMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        let input = DescribeInstancesRequest(limit: limit, offset: offset, instanceId: instanceId, orderBy: orderBy, orderType: orderType, vpcIds: vpcIds, subnetIds: subnetIds, searchKey: searchKey, projectIds: projectIds, instanceName: instanceName, uniqVpcIds: uniqVpcIds, uniqSubnetIds: uniqSubnetIds, regionIds: regionIds, status: status, typeVersion: typeVersion, engineName: engineName, autoRenew: autoRenew, billingMode: billingMode, type: type, searchKeys: searchKeys, typeList: typeList, monitorVersion: monitorVersion, instanceTags: instanceTags, tagKeys: tagKeys, productVersions: productVersions, instanceIds: instanceIds, azMode: azMode)
        return try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Redis实例列表
    @inlinable
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceSet])> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }

    /// 查询Redis实例列表
    @inlinable @discardableResult
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询Redis实例列表
    ///
    /// - Returns: `AsyncSequence`s of `InstanceSet` and `DescribeInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesPaginator(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }
}
