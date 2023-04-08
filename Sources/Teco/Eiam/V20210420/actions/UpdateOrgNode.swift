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
    /// UpdateOrgNode请求参数结构体
    public struct UpdateOrgNodeRequest: TCRequestModel {
        /// 机构节点ID，是机构节点的全局唯一标识。
        public let orgNodeId: String

        /// 机构节点名称，长度限制：64个字符。
        public let displayName: String

        /// 机构节点描述。
        public let description: String?

        /// 机构代码。如果非空则校验此ID的唯一性。
        public let customizedOrgNodeId: String?

        public init(orgNodeId: String, displayName: String, description: String? = nil, customizedOrgNodeId: String? = nil) {
            self.orgNodeId = orgNodeId
            self.displayName = displayName
            self.description = description
            self.customizedOrgNodeId = customizedOrgNodeId
        }

        enum CodingKeys: String, CodingKey {
            case orgNodeId = "OrgNodeId"
            case displayName = "DisplayName"
            case description = "Description"
            case customizedOrgNodeId = "CustomizedOrgNodeId"
        }
    }

    /// UpdateOrgNode返回参数结构体
    public struct UpdateOrgNodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新机构节点
    ///
    /// 新建一个机构节点，
    @inlinable @discardableResult
    public func updateOrgNode(_ input: UpdateOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOrgNodeResponse> {
        self.client.execute(action: "UpdateOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新机构节点
    ///
    /// 新建一个机构节点，
    @inlinable @discardableResult
    public func updateOrgNode(_ input: UpdateOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrgNodeResponse {
        try await self.client.execute(action: "UpdateOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新机构节点
    ///
    /// 新建一个机构节点，
    @inlinable @discardableResult
    public func updateOrgNode(orgNodeId: String, displayName: String, description: String? = nil, customizedOrgNodeId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateOrgNodeResponse> {
        self.updateOrgNode(.init(orgNodeId: orgNodeId, displayName: displayName, description: description, customizedOrgNodeId: customizedOrgNodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 更新机构节点
    ///
    /// 新建一个机构节点，
    @inlinable @discardableResult
    public func updateOrgNode(orgNodeId: String, displayName: String, description: String? = nil, customizedOrgNodeId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrgNodeResponse {
        try await self.updateOrgNode(.init(orgNodeId: orgNodeId, displayName: displayName, description: description, customizedOrgNodeId: customizedOrgNodeId), region: region, logger: logger, on: eventLoop)
    }
}
