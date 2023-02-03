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

extension Tke {
    /// CheckInstancesUpgradeAble请求参数结构体
    public struct CheckInstancesUpgradeAbleRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 节点列表，空为全部节点
        public let instanceIds: [String]?

        /// 升级类型
        public let upgradeType: String?

        /// 分页Offset
        public let offset: Int64?

        /// 分页Limit
        public let limit: Int64?

        /// 过滤
        public let filter: [Filter]?

        public init(clusterId: String, instanceIds: [String]? = nil, upgradeType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, filter: [Filter]? = nil) {
            self.clusterId = clusterId
            self.instanceIds = instanceIds
            self.upgradeType = upgradeType
            self.offset = offset
            self.limit = limit
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIds = "InstanceIds"
            case upgradeType = "UpgradeType"
            case offset = "Offset"
            case limit = "Limit"
            case filter = "Filter"
        }
    }

    /// CheckInstancesUpgradeAble返回参数结构体
    public struct CheckInstancesUpgradeAbleResponse: TCResponseModel {
        /// 集群master当前小版本
        public let clusterVersion: String

        /// 集群master对应的大版本目前最新小版本
        public let latestVersion: String

        /// 可升级节点列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let upgradeAbleInstances: [UpgradeAbleInstancesItem]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterVersion = "ClusterVersion"
            case latestVersion = "LatestVersion"
            case upgradeAbleInstances = "UpgradeAbleInstances"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAble(_ input: CheckInstancesUpgradeAbleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckInstancesUpgradeAbleResponse> {
        self.client.execute(action: "CheckInstancesUpgradeAble", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAble(_ input: CheckInstancesUpgradeAbleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckInstancesUpgradeAbleResponse {
        try await self.client.execute(action: "CheckInstancesUpgradeAble", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAble(clusterId: String, instanceIds: [String]? = nil, upgradeType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, filter: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckInstancesUpgradeAbleResponse> {
        let input = CheckInstancesUpgradeAbleRequest(clusterId: clusterId, instanceIds: instanceIds, upgradeType: upgradeType, offset: offset, limit: limit, filter: filter)
        return self.client.execute(action: "CheckInstancesUpgradeAble", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAble(clusterId: String, instanceIds: [String]? = nil, upgradeType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, filter: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckInstancesUpgradeAbleResponse {
        let input = CheckInstancesUpgradeAbleRequest(clusterId: clusterId, instanceIds: instanceIds, upgradeType: upgradeType, offset: offset, limit: limit, filter: filter)
        return try await self.client.execute(action: "CheckInstancesUpgradeAble", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
