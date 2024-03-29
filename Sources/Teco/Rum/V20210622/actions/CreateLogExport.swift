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

extension Rum {
    /// CreateLogExport请求参数结构体
    public struct CreateLogExportRequest: TCRequest {
        /// 项目ID
        public let id: Int64

        /// 日志导出起始时间
        public let startTime: String

        /// 日志导出结束时间
        public let endTime: String

        /// 日志导出检索语句
        public let query: String

        /// 日志导出数量, 最大值1000万
        public let count: Int64

        /// 日志导出时间排序。desc，asc，默认为desc
        public let order: String?

        /// 日志导出数据格式。json，csv，默认为json
        public let format: String?

        public init(id: Int64, startTime: String, endTime: String, query: String, count: Int64, order: String? = nil, format: String? = nil) {
            self.id = id
            self.startTime = startTime
            self.endTime = endTime
            self.query = query
            self.count = count
            self.order = order
            self.format = format
        }

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case query = "Query"
            case count = "Count"
            case order = "Order"
            case format = "Format"
        }
    }

    /// CreateLogExport返回参数结构体
    public struct CreateLogExportResponse: TCResponse {
        /// 日志导出ID
        public let exportID: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case exportID = "ExportID"
            case requestId = "RequestId"
        }
    }

    /// 创建日志下载任务
    ///
    /// 接口请求域名： rum.tencentcloudapi.com 。
    ///
    /// 本接口用于创建日志下载任务
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func createLogExport(_ input: CreateLogExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLogExportResponse> {
        self.client.execute(action: "CreateLogExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建日志下载任务
    ///
    /// 接口请求域名： rum.tencentcloudapi.com 。
    ///
    /// 本接口用于创建日志下载任务
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func createLogExport(_ input: CreateLogExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogExportResponse {
        try await self.client.execute(action: "CreateLogExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建日志下载任务
    ///
    /// 接口请求域名： rum.tencentcloudapi.com 。
    ///
    /// 本接口用于创建日志下载任务
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func createLogExport(id: Int64, startTime: String, endTime: String, query: String, count: Int64, order: String? = nil, format: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLogExportResponse> {
        self.createLogExport(.init(id: id, startTime: startTime, endTime: endTime, query: query, count: count, order: order, format: format), region: region, logger: logger, on: eventLoop)
    }

    /// 创建日志下载任务
    ///
    /// 接口请求域名： rum.tencentcloudapi.com 。
    ///
    /// 本接口用于创建日志下载任务
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func createLogExport(id: Int64, startTime: String, endTime: String, query: String, count: Int64, order: String? = nil, format: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLogExportResponse {
        try await self.createLogExport(.init(id: id, startTime: startTime, endTime: endTime, query: query, count: count, order: order, format: format), region: region, logger: logger, on: eventLoop)
    }
}
