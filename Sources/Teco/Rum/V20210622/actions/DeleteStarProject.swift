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

extension Rum {
    /// DeleteStarProject请求参数结构体
    public struct DeleteStarProjectRequest: TCRequest {
        /// 实例ID：taw-123
        public let instanceID: String

        /// 项目ID
        public let id: Int64

        public init(instanceID: String, id: Int64) {
            self.instanceID = instanceID
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case instanceID = "InstanceID"
            case id = "ID"
        }
    }

    /// DeleteStarProject返回参数结构体
    public struct DeleteStarProjectResponse: TCResponse {
        /// 返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 删除星标应用
    ///
    /// 删除用户名下的星标项目
    @inlinable
    public func deleteStarProject(_ input: DeleteStarProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStarProjectResponse> {
        self.client.execute(action: "DeleteStarProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除星标应用
    ///
    /// 删除用户名下的星标项目
    @inlinable
    public func deleteStarProject(_ input: DeleteStarProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStarProjectResponse {
        try await self.client.execute(action: "DeleteStarProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除星标应用
    ///
    /// 删除用户名下的星标项目
    @inlinable
    public func deleteStarProject(instanceID: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStarProjectResponse> {
        self.deleteStarProject(.init(instanceID: instanceID, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 删除星标应用
    ///
    /// 删除用户名下的星标项目
    @inlinable
    public func deleteStarProject(instanceID: String, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStarProjectResponse {
        try await self.deleteStarProject(.init(instanceID: instanceID, id: id), region: region, logger: logger, on: eventLoop)
    }
}
