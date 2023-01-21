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

extension Tdcpg {
    /// DeleteClusterInstances请求参数结构体
    public struct DeleteClusterInstancesRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 实例ID列表
        public let instanceIdSet: [String]

        public init(clusterId: String, instanceIdSet: [String]) {
            self.clusterId = clusterId
            self.instanceIdSet = instanceIdSet
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIdSet = "InstanceIdSet"
        }
    }

    /// DeleteClusterInstances返回参数结构体
    public struct DeleteClusterInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除实例
    ///
    /// 删除实例。只有当实例状态处于isolated(已隔离)时才生效。
    @inlinable @discardableResult
    public func deleteClusterInstances(_ input: DeleteClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterInstancesResponse> {
        self.client.execute(action: "DeleteClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例
    ///
    /// 删除实例。只有当实例状态处于isolated(已隔离)时才生效。
    @inlinable @discardableResult
    public func deleteClusterInstances(_ input: DeleteClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterInstancesResponse {
        try await self.client.execute(action: "DeleteClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例
    ///
    /// 删除实例。只有当实例状态处于isolated(已隔离)时才生效。
    @inlinable @discardableResult
    public func deleteClusterInstances(clusterId: String, instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteClusterInstancesResponse> {
        self.deleteClusterInstances(DeleteClusterInstancesRequest(clusterId: clusterId, instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例
    ///
    /// 删除实例。只有当实例状态处于isolated(已隔离)时才生效。
    @inlinable @discardableResult
    public func deleteClusterInstances(clusterId: String, instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteClusterInstancesResponse {
        try await self.deleteClusterInstances(DeleteClusterInstancesRequest(clusterId: clusterId, instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }
}
