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
    /// IsolateClusterInstances请求参数结构体
    public struct IsolateClusterInstancesRequest: TCRequestModel {
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

    /// IsolateClusterInstances返回参数结构体
    public struct IsolateClusterInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 隔离实例
    ///
    /// 隔离实例。此接口只针对状态为running的实例生效，使用场景包括：
    ///  - 批量隔离集群内所有的实例
    ///  - 在读写实例为running(运行中)时，单个/批量隔离只读实例
    ///  - 集群内所有只读实例为isolated(已隔离)时，单独隔离读写实例
    @inlinable @discardableResult
    public func isolateClusterInstances(_ input: IsolateClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateClusterInstancesResponse> {
        self.client.execute(action: "IsolateClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 隔离实例
    ///
    /// 隔离实例。此接口只针对状态为running的实例生效，使用场景包括：
    ///  - 批量隔离集群内所有的实例
    ///  - 在读写实例为running(运行中)时，单个/批量隔离只读实例
    ///  - 集群内所有只读实例为isolated(已隔离)时，单独隔离读写实例
    @inlinable @discardableResult
    public func isolateClusterInstances(_ input: IsolateClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateClusterInstancesResponse {
        try await self.client.execute(action: "IsolateClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 隔离实例
    ///
    /// 隔离实例。此接口只针对状态为running的实例生效，使用场景包括：
    ///  - 批量隔离集群内所有的实例
    ///  - 在读写实例为running(运行中)时，单个/批量隔离只读实例
    ///  - 集群内所有只读实例为isolated(已隔离)时，单独隔离读写实例
    @inlinable @discardableResult
    public func isolateClusterInstances(clusterId: String, instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateClusterInstancesResponse> {
        self.isolateClusterInstances(IsolateClusterInstancesRequest(clusterId: clusterId, instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 隔离实例
    ///
    /// 隔离实例。此接口只针对状态为running的实例生效，使用场景包括：
    ///  - 批量隔离集群内所有的实例
    ///  - 在读写实例为running(运行中)时，单个/批量隔离只读实例
    ///  - 集群内所有只读实例为isolated(已隔离)时，单独隔离读写实例
    @inlinable @discardableResult
    public func isolateClusterInstances(clusterId: String, instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateClusterInstancesResponse {
        try await self.isolateClusterInstances(IsolateClusterInstancesRequest(clusterId: clusterId, instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }
}
