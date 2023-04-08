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

extension Chdfs {
    /// AssociateAccessGroups请求参数结构体
    public struct AssociateAccessGroupsRequest: TCRequestModel {
        /// 挂载点ID
        public let mountPointId: String

        /// 权限组ID列表
        public let accessGroupIds: [String]

        public init(mountPointId: String, accessGroupIds: [String]) {
            self.mountPointId = mountPointId
            self.accessGroupIds = accessGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case mountPointId = "MountPointId"
            case accessGroupIds = "AccessGroupIds"
        }
    }

    /// AssociateAccessGroups返回参数结构体
    public struct AssociateAccessGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定权限组列表
    ///
    /// 给挂载点绑定多个权限组。
    @inlinable @discardableResult
    public func associateAccessGroups(_ input: AssociateAccessGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateAccessGroupsResponse> {
        self.client.execute(action: "AssociateAccessGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定权限组列表
    ///
    /// 给挂载点绑定多个权限组。
    @inlinable @discardableResult
    public func associateAccessGroups(_ input: AssociateAccessGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateAccessGroupsResponse {
        try await self.client.execute(action: "AssociateAccessGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定权限组列表
    ///
    /// 给挂载点绑定多个权限组。
    @inlinable @discardableResult
    public func associateAccessGroups(mountPointId: String, accessGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateAccessGroupsResponse> {
        self.associateAccessGroups(.init(mountPointId: mountPointId, accessGroupIds: accessGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定权限组列表
    ///
    /// 给挂载点绑定多个权限组。
    @inlinable @discardableResult
    public func associateAccessGroups(mountPointId: String, accessGroupIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateAccessGroupsResponse {
        try await self.associateAccessGroups(.init(mountPointId: mountPointId, accessGroupIds: accessGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
