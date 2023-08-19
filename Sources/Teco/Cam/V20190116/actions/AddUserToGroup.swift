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

extension Cam {
    /// AddUserToGroup请求参数结构体
    public struct AddUserToGroupRequest: TCRequest {
        /// 添加的子用户 UIN/UID 和用户组 ID 关联关系
        public let info: [GroupIdOfUidInfo]

        public init(info: [GroupIdOfUidInfo]) {
            self.info = info
        }

        enum CodingKeys: String, CodingKey {
            case info = "Info"
        }
    }

    /// AddUserToGroup返回参数结构体
    public struct AddUserToGroupResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 用户加入到用户组
    @inlinable @discardableResult
    public func addUserToGroup(_ input: AddUserToGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddUserToGroupResponse> {
        self.client.execute(action: "AddUserToGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 用户加入到用户组
    @inlinable @discardableResult
    public func addUserToGroup(_ input: AddUserToGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddUserToGroupResponse {
        try await self.client.execute(action: "AddUserToGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 用户加入到用户组
    @inlinable @discardableResult
    public func addUserToGroup(info: [GroupIdOfUidInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddUserToGroupResponse> {
        self.addUserToGroup(.init(info: info), region: region, logger: logger, on: eventLoop)
    }

    /// 用户加入到用户组
    @inlinable @discardableResult
    public func addUserToGroup(info: [GroupIdOfUidInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddUserToGroupResponse {
        try await self.addUserToGroup(.init(info: info), region: region, logger: logger, on: eventLoop)
    }
}
