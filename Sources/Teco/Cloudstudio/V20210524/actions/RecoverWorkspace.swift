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

extension Cloudstudio {
    /// RecoverWorkspace请求参数结构体
    public struct RecoverWorkspaceRequest: TCRequestModel {
        /// 无
        public let cloudStudioSessionTeam: String

        /// 无
        public let spaceKey: String

        public init(cloudStudioSessionTeam: String, spaceKey: String) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.spaceKey = spaceKey
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case spaceKey = "SpaceKey"
        }
    }

    /// RecoverWorkspace返回参数结构体
    public struct RecoverWorkspaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 恢复工作空间
    @inlinable @discardableResult
    public func recoverWorkspace(_ input: RecoverWorkspaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecoverWorkspaceResponse> {
        self.client.execute(action: "RecoverWorkspace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 恢复工作空间
    @inlinable @discardableResult
    public func recoverWorkspace(_ input: RecoverWorkspaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecoverWorkspaceResponse {
        try await self.client.execute(action: "RecoverWorkspace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 恢复工作空间
    @inlinable @discardableResult
    public func recoverWorkspace(cloudStudioSessionTeam: String, spaceKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecoverWorkspaceResponse> {
        self.recoverWorkspace(RecoverWorkspaceRequest(cloudStudioSessionTeam: cloudStudioSessionTeam, spaceKey: spaceKey), region: region, logger: logger, on: eventLoop)
    }

    /// 恢复工作空间
    @inlinable @discardableResult
    public func recoverWorkspace(cloudStudioSessionTeam: String, spaceKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecoverWorkspaceResponse {
        try await self.recoverWorkspace(RecoverWorkspaceRequest(cloudStudioSessionTeam: cloudStudioSessionTeam, spaceKey: spaceKey), region: region, logger: logger, on: eventLoop)
    }
}
