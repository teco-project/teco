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

extension Iecp {
    /// DescribeEdgeUnitGridPods请求参数结构体
    public struct DescribeEdgeUnitGridPodsRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// Grid名称
        public let gridName: String

        /// 负载类型（StatefulSetGrid｜DeploymentGrid）
        public let workloadKind: String

        /// NodeUnit名
        public let nodeUnit: String

        /// 命名空间，默认default
        public let namespace: String?

        public init(edgeUnitId: UInt64, gridName: String, workloadKind: String, nodeUnit: String, namespace: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.gridName = gridName
            self.workloadKind = workloadKind
            self.nodeUnit = nodeUnit
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case gridName = "GridName"
            case workloadKind = "WorkloadKind"
            case nodeUnit = "NodeUnit"
            case namespace = "Namespace"
        }
    }

    /// DescribeEdgeUnitGridPods返回参数结构体
    public struct DescribeEdgeUnitGridPodsResponse: TCResponseModel {
        /// Pod列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let podSet: [GridPodInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case podSet = "PodSet"
            case requestId = "RequestId"
        }
    }

    /// 查询边缘单元Grid的Pod列表
    @inlinable
    public func describeEdgeUnitGridPods(_ input: DescribeEdgeUnitGridPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitGridPodsResponse> {
        self.client.execute(action: "DescribeEdgeUnitGridPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元Grid的Pod列表
    @inlinable
    public func describeEdgeUnitGridPods(_ input: DescribeEdgeUnitGridPodsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitGridPodsResponse {
        try await self.client.execute(action: "DescribeEdgeUnitGridPods", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘单元Grid的Pod列表
    @inlinable
    public func describeEdgeUnitGridPods(edgeUnitId: UInt64, gridName: String, workloadKind: String, nodeUnit: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeUnitGridPodsResponse> {
        self.describeEdgeUnitGridPods(.init(edgeUnitId: edgeUnitId, gridName: gridName, workloadKind: workloadKind, nodeUnit: nodeUnit, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘单元Grid的Pod列表
    @inlinable
    public func describeEdgeUnitGridPods(edgeUnitId: UInt64, gridName: String, workloadKind: String, nodeUnit: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitGridPodsResponse {
        try await self.describeEdgeUnitGridPods(.init(edgeUnitId: edgeUnitId, gridName: gridName, workloadKind: workloadKind, nodeUnit: nodeUnit, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
