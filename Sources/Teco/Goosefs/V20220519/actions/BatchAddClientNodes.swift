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

extension Goosefs {
    /// BatchAddClientNodes请求参数结构体
    public struct BatchAddClientNodesRequest: TCRequest {
        /// 文件系统ID
        public let fileSystemId: String

        /// 添加客户端节点列表
        public let clientNodes: [LinuxNodeAttribute]

        /// 是否单集群默认是false
        public let singleClusterFlag: Bool?

        public init(fileSystemId: String, clientNodes: [LinuxNodeAttribute], singleClusterFlag: Bool? = nil) {
            self.fileSystemId = fileSystemId
            self.clientNodes = clientNodes
            self.singleClusterFlag = singleClusterFlag
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case clientNodes = "ClientNodes"
            case singleClusterFlag = "SingleClusterFlag"
        }
    }

    /// BatchAddClientNodes返回参数结构体
    public struct BatchAddClientNodesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量添加客户端节点
    @inlinable @discardableResult
    public func batchAddClientNodes(_ input: BatchAddClientNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchAddClientNodesResponse> {
        self.client.execute(action: "BatchAddClientNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量添加客户端节点
    @inlinable @discardableResult
    public func batchAddClientNodes(_ input: BatchAddClientNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAddClientNodesResponse {
        try await self.client.execute(action: "BatchAddClientNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量添加客户端节点
    @inlinable @discardableResult
    public func batchAddClientNodes(fileSystemId: String, clientNodes: [LinuxNodeAttribute], singleClusterFlag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchAddClientNodesResponse> {
        self.batchAddClientNodes(.init(fileSystemId: fileSystemId, clientNodes: clientNodes, singleClusterFlag: singleClusterFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 批量添加客户端节点
    @inlinable @discardableResult
    public func batchAddClientNodes(fileSystemId: String, clientNodes: [LinuxNodeAttribute], singleClusterFlag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAddClientNodesResponse {
        try await self.batchAddClientNodes(.init(fileSystemId: fileSystemId, clientNodes: clientNodes, singleClusterFlag: singleClusterFlag), region: region, logger: logger, on: eventLoop)
    }
}
