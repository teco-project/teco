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

extension Tsf {
    /// StopGroup请求参数结构体
    public struct StopGroupRequest: TCRequestModel {
        /// 部署组ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// StopGroup返回参数结构体
    public struct StopGroupResponse: TCResponseModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TaskId?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 停止虚拟机部署组
    @inlinable
    public func stopGroup(_ input: StopGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopGroupResponse > {
        self.client.execute(action: "StopGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止虚拟机部署组
    @inlinable
    public func stopGroup(_ input: StopGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopGroupResponse {
        try await self.client.execute(action: "StopGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止虚拟机部署组
    @inlinable
    public func stopGroup(groupId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopGroupResponse > {
        self.stopGroup(StopGroupRequest(groupId: groupId), logger: logger, on: eventLoop)
    }

    /// 停止虚拟机部署组
    @inlinable
    public func stopGroup(groupId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopGroupResponse {
        try await self.stopGroup(StopGroupRequest(groupId: groupId), logger: logger, on: eventLoop)
    }
}
