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

extension Organization {
    /// DeleteOrganizationNodes请求参数结构体
    public struct DeleteOrganizationNodesRequest: TCRequestModel {
        /// 节点ID列表。
        public let nodeId: [Int64]

        public init(nodeId: [Int64]) {
            self.nodeId = nodeId
        }

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
        }
    }

    /// DeleteOrganizationNodes返回参数结构体
    public struct DeleteOrganizationNodesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量删除企业组织节点
    @inlinable @discardableResult
    public func deleteOrganizationNodes(_ input: DeleteOrganizationNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOrganizationNodesResponse> {
        self.client.execute(action: "DeleteOrganizationNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除企业组织节点
    @inlinable @discardableResult
    public func deleteOrganizationNodes(_ input: DeleteOrganizationNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrganizationNodesResponse {
        try await self.client.execute(action: "DeleteOrganizationNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除企业组织节点
    @inlinable @discardableResult
    public func deleteOrganizationNodes(nodeId: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOrganizationNodesResponse> {
        self.deleteOrganizationNodes(.init(nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除企业组织节点
    @inlinable @discardableResult
    public func deleteOrganizationNodes(nodeId: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrganizationNodesResponse {
        try await self.deleteOrganizationNodes(.init(nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }
}
