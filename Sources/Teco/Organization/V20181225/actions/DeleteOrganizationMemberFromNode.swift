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
    /// DeleteOrganizationMemberFromNode请求参数结构体
    public struct DeleteOrganizationMemberFromNodeRequest: TCRequest {
        /// 被删除成员UIN
        public let memberUin: UInt64

        /// 组织单元ID
        public let nodeId: UInt64

        public init(memberUin: UInt64, nodeId: UInt64) {
            self.memberUin = memberUin
            self.nodeId = nodeId
        }

        enum CodingKeys: String, CodingKey {
            case memberUin = "MemberUin"
            case nodeId = "NodeId"
        }
    }

    /// DeleteOrganizationMemberFromNode返回参数结构体
    public struct DeleteOrganizationMemberFromNodeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除企业组织成员
    @inlinable @discardableResult
    public func deleteOrganizationMemberFromNode(_ input: DeleteOrganizationMemberFromNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOrganizationMemberFromNodeResponse> {
        self.client.execute(action: "DeleteOrganizationMemberFromNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除企业组织成员
    @inlinable @discardableResult
    public func deleteOrganizationMemberFromNode(_ input: DeleteOrganizationMemberFromNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrganizationMemberFromNodeResponse {
        try await self.client.execute(action: "DeleteOrganizationMemberFromNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除企业组织成员
    @inlinable @discardableResult
    public func deleteOrganizationMemberFromNode(memberUin: UInt64, nodeId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOrganizationMemberFromNodeResponse> {
        self.deleteOrganizationMemberFromNode(.init(memberUin: memberUin, nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除企业组织成员
    @inlinable @discardableResult
    public func deleteOrganizationMemberFromNode(memberUin: UInt64, nodeId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrganizationMemberFromNodeResponse {
        try await self.deleteOrganizationMemberFromNode(.init(memberUin: memberUin, nodeId: nodeId), region: region, logger: logger, on: eventLoop)
    }
}
