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
    /// DescribeEdgeAgentNodeInstaller请求参数结构体
    public struct DescribeEdgeAgentNodeInstallerRequest: TCRequest {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64

        /// IECP边缘节点ID
        public let nodeId: UInt64

        public init(edgeUnitId: UInt64, nodeId: UInt64) {
            self.edgeUnitId = edgeUnitId
            self.nodeId = nodeId
        }

        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeId = "NodeId"
        }
    }

    /// DescribeEdgeAgentNodeInstaller返回参数结构体
    public struct DescribeEdgeAgentNodeInstallerResponse: TCResponse {
        /// 节点在线安装信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let online: EdgeNodeInstallerOnline?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case online = "Online"
            case requestId = "RequestId"
        }
    }

    /// 获取节点安装信息
    @inlinable
    public func describeEdgeAgentNodeInstaller(_ input: DescribeEdgeAgentNodeInstallerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeAgentNodeInstallerResponse> {
        self.client.execute(action: "DescribeEdgeAgentNodeInstaller", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取节点安装信息
    @inlinable
    public func describeEdgeAgentNodeInstaller(_ input: DescribeEdgeAgentNodeInstallerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeAgentNodeInstallerResponse {
        try await self.client.execute(action: "DescribeEdgeAgentNodeInstaller", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取节点安装信息
    @inlinable
    public func describeEdgeAgentNodeInstaller(edgeUnitId: UInt64, nodeId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEdgeAgentNodeInstallerResponse> {
        self.describeEdgeAgentNodeInstaller(.init(edgeUnitId: edgeUnitId, nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取节点安装信息
    @inlinable
    public func describeEdgeAgentNodeInstaller(edgeUnitId: UInt64, nodeId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeAgentNodeInstallerResponse {
        try await self.describeEdgeAgentNodeInstaller(.init(edgeUnitId: edgeUnitId, nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }
}
