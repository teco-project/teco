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

extension Lighthouse {
    /// TerminateDisks请求参数结构体
    public struct TerminateDisksRequest: TCRequest {
        /// 云硬盘ID列表。
        public let diskIds: [String]

        public init(diskIds: [String]) {
            self.diskIds = diskIds
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
        }
    }

    /// TerminateDisks返回参数结构体
    public struct TerminateDisksResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁云硬盘
    ///
    /// 本接口（TerminateDisks）用于销毁一个或多个云硬盘。
    @inlinable @discardableResult
    public func terminateDisks(_ input: TerminateDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateDisksResponse> {
        self.client.execute(action: "TerminateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁云硬盘
    ///
    /// 本接口（TerminateDisks）用于销毁一个或多个云硬盘。
    @inlinable @discardableResult
    public func terminateDisks(_ input: TerminateDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDisksResponse {
        try await self.client.execute(action: "TerminateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁云硬盘
    ///
    /// 本接口（TerminateDisks）用于销毁一个或多个云硬盘。
    @inlinable @discardableResult
    public func terminateDisks(diskIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateDisksResponse> {
        self.terminateDisks(.init(diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁云硬盘
    ///
    /// 本接口（TerminateDisks）用于销毁一个或多个云硬盘。
    @inlinable @discardableResult
    public func terminateDisks(diskIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDisksResponse {
        try await self.terminateDisks(.init(diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }
}
