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

extension Waf {
    /// DeleteAttackDownloadRecord请求参数结构体
    public struct DeleteAttackDownloadRecordRequest: TCRequest {
        /// 下载任务记录唯一标记
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DeleteAttackDownloadRecord返回参数结构体
    public struct DeleteAttackDownloadRecordResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除攻击日志下载任务记录
    @inlinable @discardableResult
    public func deleteAttackDownloadRecord(_ input: DeleteAttackDownloadRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAttackDownloadRecordResponse> {
        self.client.execute(action: "DeleteAttackDownloadRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除攻击日志下载任务记录
    @inlinable @discardableResult
    public func deleteAttackDownloadRecord(_ input: DeleteAttackDownloadRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAttackDownloadRecordResponse {
        try await self.client.execute(action: "DeleteAttackDownloadRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除攻击日志下载任务记录
    @inlinable @discardableResult
    public func deleteAttackDownloadRecord(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAttackDownloadRecordResponse> {
        self.deleteAttackDownloadRecord(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 删除攻击日志下载任务记录
    @inlinable @discardableResult
    public func deleteAttackDownloadRecord(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAttackDownloadRecordResponse {
        try await self.deleteAttackDownloadRecord(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
