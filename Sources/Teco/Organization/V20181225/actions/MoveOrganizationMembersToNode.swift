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

extension Organization {
    /// MoveOrganizationMembersToNode请求参数结构体
    public struct MoveOrganizationMembersToNodeRequest: TCRequest {
        /// 组织单元ID
        public let nodeId: UInt64

        /// 成员UIN列表
        public let uins: [UInt64]

        public init(nodeId: UInt64, uins: [UInt64]) {
            self.nodeId = nodeId
            self.uins = uins
        }

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case uins = "Uins"
        }
    }

    /// MoveOrganizationMembersToNode返回参数结构体
    public struct MoveOrganizationMembersToNodeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 移动成员到指定企业组织单元
    @inlinable @discardableResult
    public func moveOrganizationMembersToNode(_ input: MoveOrganizationMembersToNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MoveOrganizationMembersToNodeResponse> {
        self.client.execute(action: "MoveOrganizationMembersToNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 移动成员到指定企业组织单元
    @inlinable @discardableResult
    public func moveOrganizationMembersToNode(_ input: MoveOrganizationMembersToNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MoveOrganizationMembersToNodeResponse {
        try await self.client.execute(action: "MoveOrganizationMembersToNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 移动成员到指定企业组织单元
    @inlinable @discardableResult
    public func moveOrganizationMembersToNode(nodeId: UInt64, uins: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MoveOrganizationMembersToNodeResponse> {
        self.moveOrganizationMembersToNode(.init(nodeId: nodeId, uins: uins), region: region, logger: logger, on: eventLoop)
    }

    /// 移动成员到指定企业组织单元
    @inlinable @discardableResult
    public func moveOrganizationMembersToNode(nodeId: UInt64, uins: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MoveOrganizationMembersToNodeResponse {
        try await self.moveOrganizationMembersToNode(.init(nodeId: nodeId, uins: uins), region: region, logger: logger, on: eventLoop)
    }
}
