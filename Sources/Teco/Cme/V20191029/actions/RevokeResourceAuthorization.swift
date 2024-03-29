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

extension Cme {
    /// RevokeResourceAuthorization请求参数结构体
    public struct RevokeResourceAuthorizationRequest: TCRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 资源所属实体。
        public let owner: Entity

        /// 被授权资源。
        public let resources: [Resource]

        /// 被授权目标实体。
        public let authorizees: [Entity]

        /// 详细授权值。 取值有：
        /// - R：可读，可以浏览素材，但不能使用该素材（将其添加到 Project），或复制到自己的媒资库中
        /// - X：可用，可以使用该素材（将其添加到 Project），但不能将其复制到自己的媒资库中，意味着被授权者无法将该资源进一步扩散给其他个人或团队。
        /// - C：可复制，既可以使用该素材（将其添加到 Project），也可以将其复制到自己的媒资库中。
        /// - W：可修改、删除媒资。
        public let permissions: [String]

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，撤销任意资源的授权权限。如果指定操作者，则操作者必须对被授权资源有写权限。
        public let `operator`: String?

        public init(platform: String, owner: Entity, resources: [Resource], authorizees: [Entity], permissions: [String], operator: String? = nil) {
            self.platform = platform
            self.owner = owner
            self.resources = resources
            self.authorizees = authorizees
            self.permissions = permissions
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case owner = "Owner"
            case resources = "Resources"
            case authorizees = "Authorizees"
            case permissions = "Permissions"
            case `operator` = "Operator"
        }
    }

    /// RevokeResourceAuthorization返回参数结构体
    public struct RevokeResourceAuthorizationResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 撤销资源授权
    ///
    /// 资源所属实体对目标实体撤销目标资源的相应权限，若原本没有相应权限则不产生变更。
    @inlinable @discardableResult
    public func revokeResourceAuthorization(_ input: RevokeResourceAuthorizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeResourceAuthorizationResponse> {
        self.client.execute(action: "RevokeResourceAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤销资源授权
    ///
    /// 资源所属实体对目标实体撤销目标资源的相应权限，若原本没有相应权限则不产生变更。
    @inlinable @discardableResult
    public func revokeResourceAuthorization(_ input: RevokeResourceAuthorizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeResourceAuthorizationResponse {
        try await self.client.execute(action: "RevokeResourceAuthorization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤销资源授权
    ///
    /// 资源所属实体对目标实体撤销目标资源的相应权限，若原本没有相应权限则不产生变更。
    @inlinable @discardableResult
    public func revokeResourceAuthorization(platform: String, owner: Entity, resources: [Resource], authorizees: [Entity], permissions: [String], operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeResourceAuthorizationResponse> {
        self.revokeResourceAuthorization(.init(platform: platform, owner: owner, resources: resources, authorizees: authorizees, permissions: permissions, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 撤销资源授权
    ///
    /// 资源所属实体对目标实体撤销目标资源的相应权限，若原本没有相应权限则不产生变更。
    @inlinable @discardableResult
    public func revokeResourceAuthorization(platform: String, owner: Entity, resources: [Resource], authorizees: [Entity], permissions: [String], operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeResourceAuthorizationResponse {
        try await self.revokeResourceAuthorization(.init(platform: platform, owner: owner, resources: resources, authorizees: authorizees, permissions: permissions, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
