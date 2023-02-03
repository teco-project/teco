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

extension Eiam {
    /// ListAuthorizedApplicationsToOrgNode请求参数结构体
    public struct ListAuthorizedApplicationsToOrgNodeRequest: TCRequestModel {
        /// 机构节点 Id 。
        public let orgNodeId: String

        public init(orgNodeId: String) {
            self.orgNodeId = orgNodeId
        }

        enum CodingKeys: String, CodingKey {
            case orgNodeId = "OrgNodeId"
        }
    }

    /// ListAuthorizedApplicationsToOrgNode返回参数结构体
    public struct ListAuthorizedApplicationsToOrgNodeResponse: TCResponseModel {
        /// 机构节点拥有访问权限的应用 id 列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case applicationIds = "ApplicationIds"
            case requestId = "RequestId"
        }
    }

    /// 获取机构节点被授权访问的应用列表
    ///
    /// 通过机构节点ID获得被授权访问的应用列表。
    @inlinable
    public func listAuthorizedApplicationsToOrgNode(_ input: ListAuthorizedApplicationsToOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAuthorizedApplicationsToOrgNodeResponse> {
        self.client.execute(action: "ListAuthorizedApplicationsToOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机构节点被授权访问的应用列表
    ///
    /// 通过机构节点ID获得被授权访问的应用列表。
    @inlinable
    public func listAuthorizedApplicationsToOrgNode(_ input: ListAuthorizedApplicationsToOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAuthorizedApplicationsToOrgNodeResponse {
        try await self.client.execute(action: "ListAuthorizedApplicationsToOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取机构节点被授权访问的应用列表
    ///
    /// 通过机构节点ID获得被授权访问的应用列表。
    @inlinable
    public func listAuthorizedApplicationsToOrgNode(orgNodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAuthorizedApplicationsToOrgNodeResponse> {
        let input = ListAuthorizedApplicationsToOrgNodeRequest(orgNodeId: orgNodeId)
        return self.client.execute(action: "ListAuthorizedApplicationsToOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机构节点被授权访问的应用列表
    ///
    /// 通过机构节点ID获得被授权访问的应用列表。
    @inlinable
    public func listAuthorizedApplicationsToOrgNode(orgNodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAuthorizedApplicationsToOrgNodeResponse {
        let input = ListAuthorizedApplicationsToOrgNodeRequest(orgNodeId: orgNodeId)
        return try await self.client.execute(action: "ListAuthorizedApplicationsToOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
