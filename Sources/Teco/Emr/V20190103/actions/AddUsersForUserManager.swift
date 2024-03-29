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

extension Emr {
    /// AddUsersForUserManager请求参数结构体
    public struct AddUsersForUserManagerRequest: TCRequest {
        /// 集群字符串ID
        public let instanceId: String

        /// 用户信息列表
        public let userManagerUserList: [UserInfoForUserManager]

        public init(instanceId: String, userManagerUserList: [UserInfoForUserManager]) {
            self.instanceId = instanceId
            self.userManagerUserList = userManagerUserList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userManagerUserList = "UserManagerUserList"
        }
    }

    /// AddUsersForUserManager返回参数结构体
    public struct AddUsersForUserManagerResponse: TCResponse {
        /// 添加成功的用户列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let successUserList: [String]?

        /// 添加失败的用户列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedUserList: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successUserList = "SuccessUserList"
            case failedUserList = "FailedUserList"
            case requestId = "RequestId"
        }
    }

    /// 新增用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 新增用户列表（用户管理）。
    @inlinable
    public func addUsersForUserManager(_ input: AddUsersForUserManagerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddUsersForUserManagerResponse> {
        self.client.execute(action: "AddUsersForUserManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 新增用户列表（用户管理）。
    @inlinable
    public func addUsersForUserManager(_ input: AddUsersForUserManagerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddUsersForUserManagerResponse {
        try await self.client.execute(action: "AddUsersForUserManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 新增用户列表（用户管理）。
    @inlinable
    public func addUsersForUserManager(instanceId: String, userManagerUserList: [UserInfoForUserManager], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddUsersForUserManagerResponse> {
        self.addUsersForUserManager(.init(instanceId: instanceId, userManagerUserList: userManagerUserList), region: region, logger: logger, on: eventLoop)
    }

    /// 新增用户列表
    ///
    /// 该接口支持安装了OpenLdap组件的集群。
    /// 新增用户列表（用户管理）。
    @inlinable
    public func addUsersForUserManager(instanceId: String, userManagerUserList: [UserInfoForUserManager], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddUsersForUserManagerResponse {
        try await self.addUsersForUserManager(.init(instanceId: instanceId, userManagerUserList: userManagerUserList), region: region, logger: logger, on: eventLoop)
    }
}
