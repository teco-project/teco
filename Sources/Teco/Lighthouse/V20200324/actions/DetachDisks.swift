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

extension Lighthouse {
    /// DetachDisks请求参数结构体
    public struct DetachDisksRequest: TCRequestModel {
        /// 云硬盘ID列表。
        public let diskIds: [String]

        public init(diskIds: [String]) {
            self.diskIds = diskIds
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
        }
    }

    /// DetachDisks返回参数结构体
    public struct DetachDisksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 卸载云硬盘
    ///
    /// 本接口（DetachDisks）用于卸载一个或多个云硬盘。
    @inlinable @discardableResult
    public func detachDisks(_ input: DetachDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachDisksResponse> {
        self.client.execute(action: "DetachDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 卸载云硬盘
    ///
    /// 本接口（DetachDisks）用于卸载一个或多个云硬盘。
    @inlinable @discardableResult
    public func detachDisks(_ input: DetachDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachDisksResponse {
        try await self.client.execute(action: "DetachDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 卸载云硬盘
    ///
    /// 本接口（DetachDisks）用于卸载一个或多个云硬盘。
    @inlinable @discardableResult
    public func detachDisks(diskIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachDisksResponse> {
        self.detachDisks(.init(diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }

    /// 卸载云硬盘
    ///
    /// 本接口（DetachDisks）用于卸载一个或多个云硬盘。
    @inlinable @discardableResult
    public func detachDisks(diskIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachDisksResponse {
        try await self.detachDisks(.init(diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }
}
