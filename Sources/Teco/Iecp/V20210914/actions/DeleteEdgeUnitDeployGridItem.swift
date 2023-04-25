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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Iecp {
    /// DeleteEdgeUnitDeployGridItem请求参数结构体
    public struct DeleteEdgeUnitDeployGridItemRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// 负载类型（StatefulSetGrid｜DeploymentGrid）
        public let workloadKind: String

        /// Grid部署名称
        public let gridItemName: String

        /// 命名空间，默认default
        public let namespace: String?

        public init(edgeUnitId: UInt64, workloadKind: String, gridItemName: String, namespace: String? = nil) {
            self.edgeUnitId = edgeUnitId
            self.workloadKind = workloadKind
            self.gridItemName = gridItemName
            self.namespace = namespace
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case workloadKind = "WorkloadKind"
            case gridItemName = "GridItemName"
            case namespace = "Namespace"
        }
    }

    /// DeleteEdgeUnitDeployGridItem返回参数结构体
    public struct DeleteEdgeUnitDeployGridItemResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重新部署边缘单元指定Grid下应用
    @inlinable @discardableResult
    public func deleteEdgeUnitDeployGridItem(_ input: DeleteEdgeUnitDeployGridItemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeUnitDeployGridItemResponse> {
        self.client.execute(action: "DeleteEdgeUnitDeployGridItem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新部署边缘单元指定Grid下应用
    @inlinable @discardableResult
    public func deleteEdgeUnitDeployGridItem(_ input: DeleteEdgeUnitDeployGridItemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeUnitDeployGridItemResponse {
        try await self.client.execute(action: "DeleteEdgeUnitDeployGridItem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新部署边缘单元指定Grid下应用
    @inlinable @discardableResult
    public func deleteEdgeUnitDeployGridItem(edgeUnitId: UInt64, workloadKind: String, gridItemName: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteEdgeUnitDeployGridItemResponse> {
        self.deleteEdgeUnitDeployGridItem(.init(edgeUnitId: edgeUnitId, workloadKind: workloadKind, gridItemName: gridItemName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }

    /// 重新部署边缘单元指定Grid下应用
    @inlinable @discardableResult
    public func deleteEdgeUnitDeployGridItem(edgeUnitId: UInt64, workloadKind: String, gridItemName: String, namespace: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeUnitDeployGridItemResponse {
        try await self.deleteEdgeUnitDeployGridItem(.init(edgeUnitId: edgeUnitId, workloadKind: workloadKind, gridItemName: gridItemName, namespace: namespace), region: region, logger: logger, on: eventLoop)
    }
}
