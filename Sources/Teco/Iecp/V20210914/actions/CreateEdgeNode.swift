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

import TecoCore

extension Iecp {
    /// CreateEdgeNode请求参数结构体
    public struct CreateEdgeNodeRequest: TCRequestModel {
        /// 边缘单元ID
        public let edgeUnitId: UInt64

        /// 节点名称
        public let name: String

        public init(edgeUnitId: UInt64, name: String) {
            self.edgeUnitId = edgeUnitId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case name = "Name"
        }
    }

    /// CreateEdgeNode返回参数结构体
    public struct CreateEdgeNodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建边缘节点
    @inlinable @discardableResult
    public func createEdgeNode(_ input: CreateEdgeNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEdgeNodeResponse> {
        self.client.execute(action: "CreateEdgeNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建边缘节点
    @inlinable @discardableResult
    public func createEdgeNode(_ input: CreateEdgeNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEdgeNodeResponse {
        try await self.client.execute(action: "CreateEdgeNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建边缘节点
    @inlinable @discardableResult
    public func createEdgeNode(edgeUnitId: UInt64, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEdgeNodeResponse> {
        self.createEdgeNode(.init(edgeUnitId: edgeUnitId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 创建边缘节点
    @inlinable @discardableResult
    public func createEdgeNode(edgeUnitId: UInt64, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEdgeNodeResponse {
        try await self.createEdgeNode(.init(edgeUnitId: edgeUnitId, name: name), region: region, logger: logger, on: eventLoop)
    }
}
