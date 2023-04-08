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

extension Eiam {
    /// DeleteOrgNode请求参数结构体
    public struct DeleteOrgNodeRequest: TCRequestModel {
        /// 机构节点ID，是机构节点的全局唯一标识。
        public let orgNodeId: String

        public init(orgNodeId: String) {
            self.orgNodeId = orgNodeId
        }

        enum CodingKeys: String, CodingKey {
            case orgNodeId = "OrgNodeId"
        }
    }

    /// DeleteOrgNode返回参数结构体
    public struct DeleteOrgNodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除机构节点
    ///
    /// 删除一个机构节点
    @inlinable @discardableResult
    public func deleteOrgNode(_ input: DeleteOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOrgNodeResponse> {
        self.client.execute(action: "DeleteOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除机构节点
    ///
    /// 删除一个机构节点
    @inlinable @discardableResult
    public func deleteOrgNode(_ input: DeleteOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrgNodeResponse {
        try await self.client.execute(action: "DeleteOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除机构节点
    ///
    /// 删除一个机构节点
    @inlinable @discardableResult
    public func deleteOrgNode(orgNodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteOrgNodeResponse> {
        self.deleteOrgNode(.init(orgNodeId: orgNodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除机构节点
    ///
    /// 删除一个机构节点
    @inlinable @discardableResult
    public func deleteOrgNode(orgNodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrgNodeResponse {
        try await self.deleteOrgNode(.init(orgNodeId: orgNodeId), region: region, logger: logger, on: eventLoop)
    }
}
