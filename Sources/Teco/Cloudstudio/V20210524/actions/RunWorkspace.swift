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

extension Cloudstudio {
    /// RunWorkspace请求参数结构体
    public struct RunWorkspaceRequest: TCRequest {
        /// 空间标识
        public let spaceKey: String

        /// 用户所属组
        public let cloudStudioSessionTeam: String

        public init(spaceKey: String, cloudStudioSessionTeam: String) {
            self.spaceKey = spaceKey
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
        }

        enum CodingKeys: String, CodingKey {
            case spaceKey = "SpaceKey"
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
        }
    }

    /// RunWorkspace返回参数结构体
    public struct RunWorkspaceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 运行空间
    @inlinable @discardableResult
    public func runWorkspace(_ input: RunWorkspaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunWorkspaceResponse> {
        self.client.execute(action: "RunWorkspace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行空间
    @inlinable @discardableResult
    public func runWorkspace(_ input: RunWorkspaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunWorkspaceResponse {
        try await self.client.execute(action: "RunWorkspace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行空间
    @inlinable @discardableResult
    public func runWorkspace(spaceKey: String, cloudStudioSessionTeam: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunWorkspaceResponse> {
        self.runWorkspace(.init(spaceKey: spaceKey, cloudStudioSessionTeam: cloudStudioSessionTeam), region: region, logger: logger, on: eventLoop)
    }

    /// 运行空间
    @inlinable @discardableResult
    public func runWorkspace(spaceKey: String, cloudStudioSessionTeam: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunWorkspaceResponse {
        try await self.runWorkspace(.init(spaceKey: spaceKey, cloudStudioSessionTeam: cloudStudioSessionTeam), region: region, logger: logger, on: eventLoop)
    }
}
