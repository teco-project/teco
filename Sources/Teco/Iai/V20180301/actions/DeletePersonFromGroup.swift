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

extension Iai {
    /// DeletePersonFromGroup请求参数结构体
    public struct DeletePersonFromGroupRequest: TCRequestModel {
        /// 人员ID
        public let personId: String

        /// 人员库ID
        public let groupId: String

        public init(personId: String, groupId: String) {
            self.personId = personId
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case groupId = "GroupId"
        }
    }

    /// DeletePersonFromGroup返回参数结构体
    public struct DeletePersonFromGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 人员库删除人员
    ///
    /// 从某人员库中删除人员，此操作仅影响该人员库。若该人员仅存在于指定的人员库中，该人员将被删除，其所有的人脸信息也将被删除。
    @inlinable @discardableResult
    public func deletePersonFromGroup(_ input: DeletePersonFromGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePersonFromGroupResponse> {
        self.client.execute(action: "DeletePersonFromGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人员库删除人员
    ///
    /// 从某人员库中删除人员，此操作仅影响该人员库。若该人员仅存在于指定的人员库中，该人员将被删除，其所有的人脸信息也将被删除。
    @inlinable @discardableResult
    public func deletePersonFromGroup(_ input: DeletePersonFromGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePersonFromGroupResponse {
        try await self.client.execute(action: "DeletePersonFromGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人员库删除人员
    ///
    /// 从某人员库中删除人员，此操作仅影响该人员库。若该人员仅存在于指定的人员库中，该人员将被删除，其所有的人脸信息也将被删除。
    @inlinable @discardableResult
    public func deletePersonFromGroup(personId: String, groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePersonFromGroupResponse> {
        self.deletePersonFromGroup(.init(personId: personId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 人员库删除人员
    ///
    /// 从某人员库中删除人员，此操作仅影响该人员库。若该人员仅存在于指定的人员库中，该人员将被删除，其所有的人脸信息也将被删除。
    @inlinable @discardableResult
    public func deletePersonFromGroup(personId: String, groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePersonFromGroupResponse {
        try await self.deletePersonFromGroup(.init(personId: personId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
