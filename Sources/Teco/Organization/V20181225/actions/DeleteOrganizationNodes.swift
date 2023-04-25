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

extension Organization {
    /// DeleteOrganizationNodes请求参数结构体
    public struct DeleteOrganizationNodesRequest: TCRequestModel {
        /// 组织单元ID列表
        public let nodeIds: [UInt64]

        public init(nodeIds: [UInt64]) {
            self.nodeIds = nodeIds
        }

        enum CodingKeys: String, CodingKey {
            case nodeIds = "NodeIds"
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

    /// 批量删除企业组织单元
    @inlinable @discardableResult
    public func deleteOrganizationNodes(_ input: DeleteOrganizationNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOrganizationNodesResponse> {
        self.client.execute(action: "DeleteOrganizationNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除企业组织单元
    @inlinable @discardableResult
    public func deleteOrganizationNodes(_ input: DeleteOrganizationNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrganizationNodesResponse {
        try await self.client.execute(action: "DeleteOrganizationNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除企业组织单元
    @inlinable @discardableResult
    public func deleteOrganizationNodes(nodeIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOrganizationNodesResponse> {
        self.deleteOrganizationNodes(.init(nodeIds: nodeIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除企业组织单元
    @inlinable @discardableResult
    public func deleteOrganizationNodes(nodeIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrganizationNodesResponse {
        try await self.deleteOrganizationNodes(.init(nodeIds: nodeIds), region: region, logger: logger, on: eventLoop)
    }
}
