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

extension Waf {
    /// DeleteAccessExport请求参数结构体
    public struct DeleteAccessExportRequest: TCRequestModel {
        /// 日志导出ID
        public let exportId: String

        /// 日志主题
        public let topicId: String

        public init(exportId: String, topicId: String) {
            self.exportId = exportId
            self.topicId = topicId
        }

        enum CodingKeys: String, CodingKey {
            case exportId = "ExportId"
            case topicId = "TopicId"
        }
    }

    /// DeleteAccessExport返回参数结构体
    public struct DeleteAccessExportResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除访问日志导出
    ///
    /// 本接口用于删除访问日志导出
    @inlinable
    public func deleteAccessExport(_ input: DeleteAccessExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccessExportResponse> {
        self.client.execute(action: "DeleteAccessExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除访问日志导出
    ///
    /// 本接口用于删除访问日志导出
    @inlinable
    public func deleteAccessExport(_ input: DeleteAccessExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessExportResponse {
        try await self.client.execute(action: "DeleteAccessExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除访问日志导出
    ///
    /// 本接口用于删除访问日志导出
    @inlinable
    public func deleteAccessExport(exportId: String, topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccessExportResponse> {
        self.deleteAccessExport(DeleteAccessExportRequest(exportId: exportId, topicId: topicId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除访问日志导出
    ///
    /// 本接口用于删除访问日志导出
    @inlinable
    public func deleteAccessExport(exportId: String, topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessExportResponse {
        try await self.deleteAccessExport(DeleteAccessExportRequest(exportId: exportId, topicId: topicId), region: region, logger: logger, on: eventLoop)
    }
}
