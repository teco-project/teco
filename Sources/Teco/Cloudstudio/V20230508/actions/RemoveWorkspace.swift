//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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
    /// RemoveWorkspace请求参数结构体
    public struct RemoveWorkspaceRequest: TCRequestModel {
        /// 工作空间 SpaceKey
        public let spaceKey: String

        public init(spaceKey: String) {
            self.spaceKey = spaceKey
        }

        enum CodingKeys: String, CodingKey {
            case spaceKey = "SpaceKey"
        }
    }

    /// RemoveWorkspace返回参数结构体
    public struct RemoveWorkspaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除工作空间
    @inlinable @discardableResult
    public func removeWorkspace(_ input: RemoveWorkspaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveWorkspaceResponse> {
        self.client.execute(action: "RemoveWorkspace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除工作空间
    @inlinable @discardableResult
    public func removeWorkspace(_ input: RemoveWorkspaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveWorkspaceResponse {
        try await self.client.execute(action: "RemoveWorkspace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除工作空间
    @inlinable @discardableResult
    public func removeWorkspace(spaceKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveWorkspaceResponse> {
        self.removeWorkspace(.init(spaceKey: spaceKey), region: region, logger: logger, on: eventLoop)
    }

    /// 删除工作空间
    @inlinable @discardableResult
    public func removeWorkspace(spaceKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveWorkspaceResponse {
        try await self.removeWorkspace(.init(spaceKey: spaceKey), region: region, logger: logger, on: eventLoop)
    }
}
