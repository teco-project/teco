//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Chdfs {
    /// DisassociateAccessGroups请求参数结构体
    public struct DisassociateAccessGroupsRequest: TCRequestModel {
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

    /// DisassociateAccessGroups返回参数结构体
    public struct DisassociateAccessGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑权限组列表
    ///
    /// 给挂载点解绑多个权限组。
    @inlinable
    public func disassociateAccessGroups(_ input: DisassociateAccessGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisassociateAccessGroupsResponse > {
        self.client.execute(action: "DisassociateAccessGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑权限组列表
    ///
    /// 给挂载点解绑多个权限组。
    @inlinable
    public func disassociateAccessGroups(_ input: DisassociateAccessGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateAccessGroupsResponse {
        try await self.client.execute(action: "DisassociateAccessGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑权限组列表
    ///
    /// 给挂载点解绑多个权限组。
    @inlinable
    public func disassociateAccessGroups(mountPointId: String, accessGroupIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisassociateAccessGroupsResponse > {
        self.disassociateAccessGroups(DisassociateAccessGroupsRequest(mountPointId: mountPointId, accessGroupIds: accessGroupIds), logger: logger, on: eventLoop)
    }

    /// 解绑权限组列表
    ///
    /// 给挂载点解绑多个权限组。
    @inlinable
    public func disassociateAccessGroups(mountPointId: String, accessGroupIds: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateAccessGroupsResponse {
        try await self.disassociateAccessGroups(DisassociateAccessGroupsRequest(mountPointId: mountPointId, accessGroupIds: accessGroupIds), logger: logger, on: eventLoop)
    }
}
