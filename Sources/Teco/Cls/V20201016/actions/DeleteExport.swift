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

extension Cls {
    /// DeleteExport请求参数结构体
    public struct DeleteExportRequest: TCRequest {
        /// 日志导出ID
        public let exportId: String

        public init(exportId: String) {
            self.exportId = exportId
        }

        enum CodingKeys: String, CodingKey {
            case exportId = "ExportId"
        }
    }

    /// DeleteExport返回参数结构体
    public struct DeleteExportResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除日志下载任务
    ///
    /// 本接口用于删除日志下载任务
    @inlinable @discardableResult
    public func deleteExport(_ input: DeleteExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteExportResponse> {
        self.client.execute(action: "DeleteExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除日志下载任务
    ///
    /// 本接口用于删除日志下载任务
    @inlinable @discardableResult
    public func deleteExport(_ input: DeleteExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteExportResponse {
        try await self.client.execute(action: "DeleteExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除日志下载任务
    ///
    /// 本接口用于删除日志下载任务
    @inlinable @discardableResult
    public func deleteExport(exportId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteExportResponse> {
        self.deleteExport(.init(exportId: exportId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除日志下载任务
    ///
    /// 本接口用于删除日志下载任务
    @inlinable @discardableResult
    public func deleteExport(exportId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteExportResponse {
        try await self.deleteExport(.init(exportId: exportId), region: region, logger: logger, on: eventLoop)
    }
}
