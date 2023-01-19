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

extension Bda {
    /// DeleteGroup请求参数结构体
    public struct DeleteGroupRequest: TCRequestModel {
        /// 人体库ID。
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// DeleteGroup返回参数结构体
    public struct DeleteGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除人体库
    ///
    /// 删除该人体库及包含的所有的人员。
    @inlinable
    public func deleteGroup(_ input: DeleteGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGroupResponse> {
        self.client.execute(action: "DeleteGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除人体库
    ///
    /// 删除该人体库及包含的所有的人员。
    @inlinable
    public func deleteGroup(_ input: DeleteGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupResponse {
        try await self.client.execute(action: "DeleteGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除人体库
    ///
    /// 删除该人体库及包含的所有的人员。
    @inlinable
    public func deleteGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGroupResponse> {
        self.deleteGroup(DeleteGroupRequest(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除人体库
    ///
    /// 删除该人体库及包含的所有的人员。
    @inlinable
    public func deleteGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupResponse {
        try await self.deleteGroup(DeleteGroupRequest(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
