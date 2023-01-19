//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Eiam {
    /// CreateOrgNode请求参数结构体
    public struct CreateOrgNodeRequest: TCRequestModel {
        /// 机构节点名称，长度限制：64个字符。
        public let displayName: String

        /// 父机构节点ID，如果为空则默认创建在机构根节点下。
        public let parentOrgNodeId: String?

        /// 机构节点描述。
        public let description: String?

        /// 机构代码。如果为空，则默认生成机构代码。如果为非空，则校验机构代码的唯一性。
        public let customizedOrgNodeId: String?

        public init(displayName: String, parentOrgNodeId: String? = nil, description: String? = nil, customizedOrgNodeId: String? = nil) {
            self.displayName = displayName
            self.parentOrgNodeId = parentOrgNodeId
            self.description = description
            self.customizedOrgNodeId = customizedOrgNodeId
        }

        enum CodingKeys: String, CodingKey {
            case displayName = "DisplayName"
            case parentOrgNodeId = "ParentOrgNodeId"
            case description = "Description"
            case customizedOrgNodeId = "CustomizedOrgNodeId"
        }
    }

    /// CreateOrgNode返回参数结构体
    public struct CreateOrgNodeResponse: TCResponseModel {
        /// 机构节点ID，是机构节点的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orgNodeId = "OrgNodeId"
            case requestId = "RequestId"
        }
    }

    /// 新建机构节点
    ///
    /// 新建一个机构节点
    @inlinable
    public func createOrgNode(_ input: CreateOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrgNodeResponse> {
        self.client.execute(action: "CreateOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建机构节点
    ///
    /// 新建一个机构节点
    @inlinable
    public func createOrgNode(_ input: CreateOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrgNodeResponse {
        try await self.client.execute(action: "CreateOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建机构节点
    ///
    /// 新建一个机构节点
    @inlinable
    public func createOrgNode(displayName: String, parentOrgNodeId: String? = nil, description: String? = nil, customizedOrgNodeId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrgNodeResponse> {
        self.createOrgNode(CreateOrgNodeRequest(displayName: displayName, parentOrgNodeId: parentOrgNodeId, description: description, customizedOrgNodeId: customizedOrgNodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 新建机构节点
    ///
    /// 新建一个机构节点
    @inlinable
    public func createOrgNode(displayName: String, parentOrgNodeId: String? = nil, description: String? = nil, customizedOrgNodeId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrgNodeResponse {
        try await self.createOrgNode(CreateOrgNodeRequest(displayName: displayName, parentOrgNodeId: parentOrgNodeId, description: description, customizedOrgNodeId: customizedOrgNodeId), region: region, logger: logger, on: eventLoop)
    }
}
