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

extension Dlc {
    /// UnbindWorkGroupsFromUser请求参数结构体
    public struct UnbindWorkGroupsFromUserRequest: TCRequestModel {
        /// 解绑的工作组Id和用户Id的关联关系
        public let addInfo: WorkGroupIdSetOfUserId

        public init(addInfo: WorkGroupIdSetOfUserId) {
            self.addInfo = addInfo
        }

        enum CodingKeys: String, CodingKey {
            case addInfo = "AddInfo"
        }
    }

    /// UnbindWorkGroupsFromUser返回参数结构体
    public struct UnbindWorkGroupsFromUserResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑用户上的用户组
    @inlinable @discardableResult
    public func unbindWorkGroupsFromUser(_ input: UnbindWorkGroupsFromUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindWorkGroupsFromUserResponse> {
        self.client.execute(action: "UnbindWorkGroupsFromUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑用户上的用户组
    @inlinable @discardableResult
    public func unbindWorkGroupsFromUser(_ input: UnbindWorkGroupsFromUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindWorkGroupsFromUserResponse {
        try await self.client.execute(action: "UnbindWorkGroupsFromUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑用户上的用户组
    @inlinable @discardableResult
    public func unbindWorkGroupsFromUser(addInfo: WorkGroupIdSetOfUserId, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindWorkGroupsFromUserResponse> {
        self.unbindWorkGroupsFromUser(.init(addInfo: addInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑用户上的用户组
    @inlinable @discardableResult
    public func unbindWorkGroupsFromUser(addInfo: WorkGroupIdSetOfUserId, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindWorkGroupsFromUserResponse {
        try await self.unbindWorkGroupsFromUser(.init(addInfo: addInfo), region: region, logger: logger, on: eventLoop)
    }
}
