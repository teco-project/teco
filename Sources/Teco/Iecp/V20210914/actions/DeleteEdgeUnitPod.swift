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

extension Iecp {
    /// DeleteEdgeUnitPod请求参数结构体
    public struct DeleteEdgeUnitPodRequest: TCRequestModel {
        /// 集群ID
        public let clusterID: String

        /// Pod名称
        public let podName: String

        /// 命名空间
        public let namespace: String

        public init(clusterID: String, podName: String, namespace: String) {
            self.clusterID = clusterID
            self.podName = podName
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case clusterID = "ClusterID"
            case podName = "PodName"
            case namespace = "Namespace"
        }
    }

    /// DeleteEdgeUnitPod返回参数结构体
    public struct DeleteEdgeUnitPodResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除指定pod
    @inlinable @discardableResult
    public func deleteEdgeUnitPod(_ input: DeleteEdgeUnitPodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeUnitPodResponse> {
        self.client.execute(action: "DeleteEdgeUnitPod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除指定pod
    @inlinable @discardableResult
    public func deleteEdgeUnitPod(_ input: DeleteEdgeUnitPodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeUnitPodResponse {
        try await self.client.execute(action: "DeleteEdgeUnitPod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除指定pod
    @inlinable @discardableResult
    public func deleteEdgeUnitPod(clusterID: String, podName: String, namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeUnitPodResponse> {
        self.deleteEdgeUnitPod(DeleteEdgeUnitPodRequest(clusterID: clusterID, podName: podName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 删除指定pod
    @inlinable @discardableResult
    public func deleteEdgeUnitPod(clusterID: String, podName: String, namespace: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeUnitPodResponse {
        try await self.deleteEdgeUnitPod(DeleteEdgeUnitPodRequest(clusterID: clusterID, podName: podName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
