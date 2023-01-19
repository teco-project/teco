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

extension Tsf {
    /// StartGroup请求参数结构体
    public struct StartGroupRequest: TCRequestModel {
        /// 部署组ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// StartGroup返回参数结构体
    public struct StartGroupResponse: TCResponseModel {
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

    /// 启动虚拟机部署组
    ///
    /// 启动分组
    @inlinable
    public func startGroup(_ input: StartGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartGroupResponse> {
        self.client.execute(action: "StartGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动虚拟机部署组
    ///
    /// 启动分组
    @inlinable
    public func startGroup(_ input: StartGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartGroupResponse {
        try await self.client.execute(action: "StartGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动虚拟机部署组
    ///
    /// 启动分组
    @inlinable
    public func startGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartGroupResponse> {
        self.startGroup(StartGroupRequest(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 启动虚拟机部署组
    ///
    /// 启动分组
    @inlinable
    public func startGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartGroupResponse {
        try await self.startGroup(StartGroupRequest(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
