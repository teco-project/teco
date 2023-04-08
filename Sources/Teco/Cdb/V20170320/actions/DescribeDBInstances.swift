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

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Cdb {
    /// DescribeDBInstances请求参数结构体
    public struct DescribeDBInstancesRequest: TCPaginatedRequest {
        /// 项目 ID。
        public let projectId: Int64?

        /// 实例类型，可取值：1 - 主实例，2 - 灾备实例，3 - 只读实例。
        public let instanceTypes: [UInt64]?

        /// 实例的内网 IP 地址。
        public let vips: [String]?

        /// 实例状态，可取值：<br>0 - 创建中<br>1 - 运行中<br>4 - 正在进行隔离操作<br>5 - 已隔离（可在回收站恢复开机）
        public let status: [UInt64]?

        /// 偏移量，默认值为 0。
        public let offset: UInt64?

        /// 单次请求返回的数量，默认值为 20，最大值为 2000。
        public let limit: UInt64?

        /// 安全组 ID。当使用安全组 ID 为过滤条件时，需指定 WithSecurityGroup 参数为 1。
        public let securityGroupId: String?

        /// 付费类型，可取值：0 - 包年包月，1 - 小时计费。
        public let payTypes: [UInt64]?

        /// 实例名称。
        public let instanceNames: [String]?

        /// 实例任务状态，可能取值：<br>0 - 没有任务<br>1 - 升级中<br>2 - 数据导入中<br>3 - 开放Slave中<br>4 - 外网访问开通中<br>5 - 批量操作执行中<br>6 - 回档中<br>7 - 外网访问关闭中<br>8 - 密码修改中<br>9 - 实例名修改中<br>10 - 重启中<br>12 - 自建迁移中<br>13 - 删除库表中<br>14 - 灾备实例创建同步中<br>15 - 升级待切换<br>16 - 升级切换中<br>17 - 升级切换完成<br>19 - 参数设置待执行
        public let taskStatus: [UInt64]?

        /// 实例数据库引擎版本，可能取值：5.1、5.5、5.6 和 5.7。
        public let engineVersions: [String]?

        /// 私有网络的 ID。
        public let vpcIds: [UInt64]?

        /// 可用区的 ID。
        public let zoneIds: [UInt64]?

        /// 子网 ID。
        public let subnetIds: [UInt64]?

        /// 是否锁定标记，可选值：0 - 不锁定，1 - 锁定，默认为0。
        public let cdbErrors: [Int64]?

        /// 返回结果集排序的字段，目前支持："InstanceId"，"InstanceName"，"CreateTime"，"DeadlineTime"。
        public let orderBy: String?

        /// 返回结果集排序方式，目前支持："ASC" 或者 "DESC"。
        public let orderDirection: String?

        /// 是否以安全组 ID 为过滤条件。
        public let withSecurityGroup: Int64?

        /// 是否包含独享集群详细信息，可取值：0 - 不包含，1 - 包含。
        public let withExCluster: Int64?

        /// 独享集群 ID。
        public let exClusterId: String?

        /// 实例 ID。
        public let instanceIds: [String]?

        /// 初始化标记，可取值：0 - 未初始化，1 - 初始化。
        public let initFlag: Int64?

        /// 是否包含灾备关系对应的实例，可取值：0 - 不包含，1 - 包含。默认取值为1。如果拉取主实例，则灾备关系的数据在DrInfo字段中， 如果拉取灾备实例， 则灾备关系的数据在MasterInfo字段中。灾备关系中只包含部分基本的数据，详细的数据需要自行调接口拉取。
        public let withDr: Int64?

        /// 是否包含只读实例，可取值：0 - 不包含，1 - 包含。默认取值为1。
        public let withRo: Int64?

        /// 是否包含主实例，可取值：0 - 不包含，1 - 包含。默认取值为1。
        public let withMaster: Int64?

        /// 置放群组ID列表。
        public let deployGroupIds: [String]?

        /// 是否以标签键为过滤条件。
        public let tagKeysForSearch: [String]?

        /// 金融围拢 ID 。
        public let cageIds: [String]?

        /// 标签值
        public let tagValues: [String]?

        /// 私有网络字符型vpcId
        public let uniqueVpcIds: [String]?

        /// 私有网络字符型subnetId
        public let uniqSubnetIds: [String]?

        /// 标签键值
        public let tags: [Tag]?

        /// 数据库代理 IP 。
        public let proxyVips: [String]?

        /// 数据库代理 ID 。
        public let proxyIds: [String]?

        /// 数据库引擎类型。
        public let engineTypes: [String]?

        public init(projectId: Int64? = nil, instanceTypes: [UInt64]? = nil, vips: [String]? = nil, status: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, securityGroupId: String? = nil, payTypes: [UInt64]? = nil, instanceNames: [String]? = nil, taskStatus: [UInt64]? = nil, engineVersions: [String]? = nil, vpcIds: [UInt64]? = nil, zoneIds: [UInt64]? = nil, subnetIds: [UInt64]? = nil, cdbErrors: [Int64]? = nil, orderBy: String? = nil, orderDirection: String? = nil, withSecurityGroup: Int64? = nil, withExCluster: Int64? = nil, exClusterId: String? = nil, instanceIds: [String]? = nil, initFlag: Int64? = nil, withDr: Int64? = nil, withRo: Int64? = nil, withMaster: Int64? = nil, deployGroupIds: [String]? = nil, tagKeysForSearch: [String]? = nil, cageIds: [String]? = nil, tagValues: [String]? = nil, uniqueVpcIds: [String]? = nil, uniqSubnetIds: [String]? = nil, tags: [Tag]? = nil, proxyVips: [String]? = nil, proxyIds: [String]? = nil, engineTypes: [String]? = nil) {
            self.projectId = projectId
            self.instanceTypes = instanceTypes
            self.vips = vips
            self.status = status
            self.offset = offset
            self.limit = limit
            self.securityGroupId = securityGroupId
            self.payTypes = payTypes
            self.instanceNames = instanceNames
            self.taskStatus = taskStatus
            self.engineVersions = engineVersions
            self.vpcIds = vpcIds
            self.zoneIds = zoneIds
            self.subnetIds = subnetIds
            self.cdbErrors = cdbErrors
            self.orderBy = orderBy
            self.orderDirection = orderDirection
            self.withSecurityGroup = withSecurityGroup
            self.withExCluster = withExCluster
            self.exClusterId = exClusterId
            self.instanceIds = instanceIds
            self.initFlag = initFlag
            self.withDr = withDr
            self.withRo = withRo
            self.withMaster = withMaster
            self.deployGroupIds = deployGroupIds
            self.tagKeysForSearch = tagKeysForSearch
            self.cageIds = cageIds
            self.tagValues = tagValues
            self.uniqueVpcIds = uniqueVpcIds
            self.uniqSubnetIds = uniqSubnetIds
            self.tags = tags
            self.proxyVips = proxyVips
            self.proxyIds = proxyIds
            self.engineTypes = engineTypes
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case instanceTypes = "InstanceTypes"
            case vips = "Vips"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
            case securityGroupId = "SecurityGroupId"
            case payTypes = "PayTypes"
            case instanceNames = "InstanceNames"
            case taskStatus = "TaskStatus"
            case engineVersions = "EngineVersions"
            case vpcIds = "VpcIds"
            case zoneIds = "ZoneIds"
            case subnetIds = "SubnetIds"
            case cdbErrors = "CdbErrors"
            case orderBy = "OrderBy"
            case orderDirection = "OrderDirection"
            case withSecurityGroup = "WithSecurityGroup"
            case withExCluster = "WithExCluster"
            case exClusterId = "ExClusterId"
            case instanceIds = "InstanceIds"
            case initFlag = "InitFlag"
            case withDr = "WithDr"
            case withRo = "WithRo"
            case withMaster = "WithMaster"
            case deployGroupIds = "DeployGroupIds"
            case tagKeysForSearch = "TagKeysForSearch"
            case cageIds = "CageIds"
            case tagValues = "TagValues"
            case uniqueVpcIds = "UniqueVpcIds"
            case uniqSubnetIds = "UniqSubnetIds"
            case tags = "Tags"
            case proxyVips = "ProxyVips"
            case proxyIds = "ProxyIds"
            case engineTypes = "EngineTypes"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDBInstancesResponse) -> DescribeDBInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDBInstancesRequest(projectId: self.projectId, instanceTypes: self.instanceTypes, vips: self.vips, status: self.status, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, securityGroupId: self.securityGroupId, payTypes: self.payTypes, instanceNames: self.instanceNames, taskStatus: self.taskStatus, engineVersions: self.engineVersions, vpcIds: self.vpcIds, zoneIds: self.zoneIds, subnetIds: self.subnetIds, cdbErrors: self.cdbErrors, orderBy: self.orderBy, orderDirection: self.orderDirection, withSecurityGroup: self.withSecurityGroup, withExCluster: self.withExCluster, exClusterId: self.exClusterId, instanceIds: self.instanceIds, initFlag: self.initFlag, withDr: self.withDr, withRo: self.withRo, withMaster: self.withMaster, deployGroupIds: self.deployGroupIds, tagKeysForSearch: self.tagKeysForSearch, cageIds: self.cageIds, tagValues: self.tagValues, uniqueVpcIds: self.uniqueVpcIds, uniqSubnetIds: self.uniqSubnetIds, tags: self.tags, proxyVips: self.proxyVips, proxyIds: self.proxyIds, engineTypes: self.engineTypes)
        }
    }

    /// DescribeDBInstances返回参数结构体
    public struct DescribeDBInstancesResponse: TCPaginatedResponse {
        /// 符合查询条件的实例总数。
        public let totalCount: Int64

        /// 实例详细信息列表。
        public let items: [InstanceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceInfo] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目 ID、实例 ID、访问地址、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstancesResponse> {
        self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目 ID、实例 ID、访问地址、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。
    @inlinable
    public func describeDBInstances(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        try await self.client.execute(action: "DescribeDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目 ID、实例 ID、访问地址、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。
    @inlinable
    public func describeDBInstances(projectId: Int64? = nil, instanceTypes: [UInt64]? = nil, vips: [String]? = nil, status: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, securityGroupId: String? = nil, payTypes: [UInt64]? = nil, instanceNames: [String]? = nil, taskStatus: [UInt64]? = nil, engineVersions: [String]? = nil, vpcIds: [UInt64]? = nil, zoneIds: [UInt64]? = nil, subnetIds: [UInt64]? = nil, cdbErrors: [Int64]? = nil, orderBy: String? = nil, orderDirection: String? = nil, withSecurityGroup: Int64? = nil, withExCluster: Int64? = nil, exClusterId: String? = nil, instanceIds: [String]? = nil, initFlag: Int64? = nil, withDr: Int64? = nil, withRo: Int64? = nil, withMaster: Int64? = nil, deployGroupIds: [String]? = nil, tagKeysForSearch: [String]? = nil, cageIds: [String]? = nil, tagValues: [String]? = nil, uniqueVpcIds: [String]? = nil, uniqSubnetIds: [String]? = nil, tags: [Tag]? = nil, proxyVips: [String]? = nil, proxyIds: [String]? = nil, engineTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstancesResponse> {
        self.describeDBInstances(.init(projectId: projectId, instanceTypes: instanceTypes, vips: vips, status: status, offset: offset, limit: limit, securityGroupId: securityGroupId, payTypes: payTypes, instanceNames: instanceNames, taskStatus: taskStatus, engineVersions: engineVersions, vpcIds: vpcIds, zoneIds: zoneIds, subnetIds: subnetIds, cdbErrors: cdbErrors, orderBy: orderBy, orderDirection: orderDirection, withSecurityGroup: withSecurityGroup, withExCluster: withExCluster, exClusterId: exClusterId, instanceIds: instanceIds, initFlag: initFlag, withDr: withDr, withRo: withRo, withMaster: withMaster, deployGroupIds: deployGroupIds, tagKeysForSearch: tagKeysForSearch, cageIds: cageIds, tagValues: tagValues, uniqueVpcIds: uniqueVpcIds, uniqSubnetIds: uniqSubnetIds, tags: tags, proxyVips: proxyVips, proxyIds: proxyIds, engineTypes: engineTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目 ID、实例 ID、访问地址、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。
    @inlinable
    public func describeDBInstances(projectId: Int64? = nil, instanceTypes: [UInt64]? = nil, vips: [String]? = nil, status: [UInt64]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, securityGroupId: String? = nil, payTypes: [UInt64]? = nil, instanceNames: [String]? = nil, taskStatus: [UInt64]? = nil, engineVersions: [String]? = nil, vpcIds: [UInt64]? = nil, zoneIds: [UInt64]? = nil, subnetIds: [UInt64]? = nil, cdbErrors: [Int64]? = nil, orderBy: String? = nil, orderDirection: String? = nil, withSecurityGroup: Int64? = nil, withExCluster: Int64? = nil, exClusterId: String? = nil, instanceIds: [String]? = nil, initFlag: Int64? = nil, withDr: Int64? = nil, withRo: Int64? = nil, withMaster: Int64? = nil, deployGroupIds: [String]? = nil, tagKeysForSearch: [String]? = nil, cageIds: [String]? = nil, tagValues: [String]? = nil, uniqueVpcIds: [String]? = nil, uniqSubnetIds: [String]? = nil, tags: [Tag]? = nil, proxyVips: [String]? = nil, proxyIds: [String]? = nil, engineTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstancesResponse {
        try await self.describeDBInstances(.init(projectId: projectId, instanceTypes: instanceTypes, vips: vips, status: status, offset: offset, limit: limit, securityGroupId: securityGroupId, payTypes: payTypes, instanceNames: instanceNames, taskStatus: taskStatus, engineVersions: engineVersions, vpcIds: vpcIds, zoneIds: zoneIds, subnetIds: subnetIds, cdbErrors: cdbErrors, orderBy: orderBy, orderDirection: orderDirection, withSecurityGroup: withSecurityGroup, withExCluster: withExCluster, exClusterId: exClusterId, instanceIds: instanceIds, initFlag: initFlag, withDr: withDr, withRo: withRo, withMaster: withMaster, deployGroupIds: deployGroupIds, tagKeysForSearch: tagKeysForSearch, cageIds: cageIds, tagValues: tagValues, uniqueVpcIds: uniqueVpcIds, uniqSubnetIds: uniqSubnetIds, tags: tags, proxyVips: proxyVips, proxyIds: proxyIds, engineTypes: engineTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目 ID、实例 ID、访问地址、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。
    @inlinable
    public func describeDBInstancesPaginated(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDBInstances, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目 ID、实例 ID、访问地址、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。
    @inlinable @discardableResult
    public func describeDBInstancesPaginated(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例列表
    ///
    /// 本接口(DescribeDBInstances)用于查询云数据库实例列表，支持通过项目 ID、实例 ID、访问地址、实例状态等过滤条件来筛选实例。支持查询主实例、灾备实例和只读实例信息列表。
    ///
    /// - Returns: `AsyncSequence`s of `InstanceInfo` and `DescribeDBInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDBInstancesPaginator(_ input: DescribeDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDBInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDBInstances, logger: logger, on: eventLoop)
    }
}
