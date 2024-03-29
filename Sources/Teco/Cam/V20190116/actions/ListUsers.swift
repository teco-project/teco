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
    /// ListUsers请求参数结构体
    public struct ListUsersRequest: TCRequest {
        public init() {
        }
    }

    /// ListUsers返回参数结构体
    public struct ListUsersResponse: TCResponse {
        /// 子用户信息
        public let data: [SubAccountInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 拉取子用户
    @inlinable
    public func listUsers(_ input: ListUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        self.client.execute(action: "ListUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取子用户
    @inlinable
    public func listUsers(_ input: ListUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersResponse {
        try await self.client.execute(action: "ListUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取子用户
    @inlinable
    public func listUsers(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        self.listUsers(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取子用户
    @inlinable
    public func listUsers(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersResponse {
        try await self.listUsers(.init(), region: region, logger: logger, on: eventLoop)
    }
}
