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
    /// CreateAccessGroup请求参数结构体
    public struct CreateAccessGroupRequest: TCRequestModel {
        /// 权限组名称
        public let accessGroupName: String

        /// VPC网络类型（1：CVM；2：黑石1.0）
        public let vpcType: UInt64

        /// VPC网络ID
        public let vpcId: String

        /// 权限组描述，默认为空字符串
        public let description: String?

        public init(accessGroupName: String, vpcType: UInt64, vpcId: String, description: String? = nil) {
            self.accessGroupName = accessGroupName
            self.vpcType = vpcType
            self.vpcId = vpcId
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case accessGroupName = "AccessGroupName"
            case vpcType = "VpcType"
            case vpcId = "VpcId"
            case description = "Description"
        }
    }

    /// CreateAccessGroup返回参数结构体
    public struct CreateAccessGroupResponse: TCResponseModel {
        /// 权限组
        public let accessGroup: AccessGroup

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessGroup = "AccessGroup"
            case requestId = "RequestId"
        }
    }

    /// 创建权限组
    ///
    /// 创建权限组。
    @inlinable
    public func createAccessGroup(_ input: CreateAccessGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessGroupResponse> {
        self.client.execute(action: "CreateAccessGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建权限组
    ///
    /// 创建权限组。
    @inlinable
    public func createAccessGroup(_ input: CreateAccessGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessGroupResponse {
        try await self.client.execute(action: "CreateAccessGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建权限组
    ///
    /// 创建权限组。
    @inlinable
    public func createAccessGroup(accessGroupName: String, vpcType: UInt64, vpcId: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessGroupResponse> {
        self.createAccessGroup(.init(accessGroupName: accessGroupName, vpcType: vpcType, vpcId: vpcId, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 创建权限组
    ///
    /// 创建权限组。
    @inlinable
    public func createAccessGroup(accessGroupName: String, vpcType: UInt64, vpcId: String, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessGroupResponse {
        try await self.createAccessGroup(.init(accessGroupName: accessGroupName, vpcType: vpcType, vpcId: vpcId, description: description), region: region, logger: logger, on: eventLoop)
    }
}
