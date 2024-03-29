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

extension Mps {
    /// DeleteSnapshotByTimeOffsetTemplate请求参数结构体
    public struct DeleteSnapshotByTimeOffsetTemplateRequest: TCRequest {
        /// 指定时间点截图模板唯一标识。
        public let definition: UInt64

        public init(definition: UInt64) {
            self.definition = definition
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
        }
    }

    /// DeleteSnapshotByTimeOffsetTemplate返回参数结构体
    public struct DeleteSnapshotByTimeOffsetTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除指定时间点截图模板
    ///
    /// 删除用户自定义指定时间点截图模板。
    @inlinable @discardableResult
    public func deleteSnapshotByTimeOffsetTemplate(_ input: DeleteSnapshotByTimeOffsetTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSnapshotByTimeOffsetTemplateResponse> {
        self.client.execute(action: "DeleteSnapshotByTimeOffsetTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除指定时间点截图模板
    ///
    /// 删除用户自定义指定时间点截图模板。
    @inlinable @discardableResult
    public func deleteSnapshotByTimeOffsetTemplate(_ input: DeleteSnapshotByTimeOffsetTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotByTimeOffsetTemplateResponse {
        try await self.client.execute(action: "DeleteSnapshotByTimeOffsetTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除指定时间点截图模板
    ///
    /// 删除用户自定义指定时间点截图模板。
    @inlinable @discardableResult
    public func deleteSnapshotByTimeOffsetTemplate(definition: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSnapshotByTimeOffsetTemplateResponse> {
        self.deleteSnapshotByTimeOffsetTemplate(.init(definition: definition), region: region, logger: logger, on: eventLoop)
    }

    /// 删除指定时间点截图模板
    ///
    /// 删除用户自定义指定时间点截图模板。
    @inlinable @discardableResult
    public func deleteSnapshotByTimeOffsetTemplate(definition: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSnapshotByTimeOffsetTemplateResponse {
        try await self.deleteSnapshotByTimeOffsetTemplate(.init(definition: definition), region: region, logger: logger, on: eventLoop)
    }
}
