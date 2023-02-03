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
    /// AddClusterCIDR请求参数结构体
    public struct AddClusterCIDRRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 增加的ClusterCIDR
        public let clusterCIDRs: [String]

        /// 是否忽略ClusterCIDR与VPC路由表的冲突
        public let ignoreClusterCIDRConflict: Bool?

        public init(clusterId: String, clusterCIDRs: [String], ignoreClusterCIDRConflict: Bool? = nil) {
            self.clusterId = clusterId
            self.clusterCIDRs = clusterCIDRs
            self.ignoreClusterCIDRConflict = ignoreClusterCIDRConflict
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case clusterCIDRs = "ClusterCIDRs"
            case ignoreClusterCIDRConflict = "IgnoreClusterCIDRConflict"
        }
    }

    /// AddClusterCIDR返回参数结构体
    public struct AddClusterCIDRResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 给集群增加ClusterCIDR
    ///
    /// 给GR集群增加可用的ClusterCIDR
    @inlinable @discardableResult
    public func addClusterCIDR(_ input: AddClusterCIDRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddClusterCIDRResponse> {
        self.client.execute(action: "AddClusterCIDR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 给集群增加ClusterCIDR
    ///
    /// 给GR集群增加可用的ClusterCIDR
    @inlinable @discardableResult
    public func addClusterCIDR(_ input: AddClusterCIDRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddClusterCIDRResponse {
        try await self.client.execute(action: "AddClusterCIDR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 给集群增加ClusterCIDR
    ///
    /// 给GR集群增加可用的ClusterCIDR
    @inlinable @discardableResult
    public func addClusterCIDR(clusterId: String, clusterCIDRs: [String], ignoreClusterCIDRConflict: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddClusterCIDRResponse> {
        let input = AddClusterCIDRRequest(clusterId: clusterId, clusterCIDRs: clusterCIDRs, ignoreClusterCIDRConflict: ignoreClusterCIDRConflict)
        return self.client.execute(action: "AddClusterCIDR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 给集群增加ClusterCIDR
    ///
    /// 给GR集群增加可用的ClusterCIDR
    @inlinable @discardableResult
    public func addClusterCIDR(clusterId: String, clusterCIDRs: [String], ignoreClusterCIDRConflict: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddClusterCIDRResponse {
        let input = AddClusterCIDRRequest(clusterId: clusterId, clusterCIDRs: clusterCIDRs, ignoreClusterCIDRConflict: ignoreClusterCIDRConflict)
        return try await self.client.execute(action: "AddClusterCIDR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
