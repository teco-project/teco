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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Waf {
    /// CreateAccessExport请求参数结构体
    public struct CreateAccessExportRequest: TCRequestModel {
        /// 客户要查询的日志主题ID，每个客户都有对应的一个主题
        public let topicId: String

        /// 要查询的日志的起始时间，Unix时间戳，单位ms
        public let from: Int64

        /// 要查询的日志的结束时间，Unix时间戳，单位ms
        public let to: Int64

        /// 日志导出检索语句
        public let query: String

        /// 日志导出数量，最大值100w
        public let count: Int64

        /// 日志导出数据格式。json，csv，默认为json
        public let format: String?

        /// 日志导出时间排序。desc，asc，默认为desc
        public let order: String?

        public init(topicId: String, from: Int64, to: Int64, query: String, count: Int64, format: String? = nil, order: String? = nil) {
            self.topicId = topicId
            self.from = from
            self.to = to
            self.query = query
            self.count = count
            self.format = format
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case from = "From"
            case to = "To"
            case query = "Query"
            case count = "Count"
            case format = "Format"
            case order = "Order"
        }
    }

    /// CreateAccessExport返回参数结构体
    public struct CreateAccessExportResponse: TCResponseModel {
        /// 日志导出ID。
        public let exportId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case exportId = "ExportId"
            case requestId = "RequestId"
        }
    }

    /// 创建访问日志导出
    ///
    /// 本接口用于创建访问日志导出
    @inlinable
    public func createAccessExport(_ input: CreateAccessExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessExportResponse> {
        self.client.execute(action: "CreateAccessExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建访问日志导出
    ///
    /// 本接口用于创建访问日志导出
    @inlinable
    public func createAccessExport(_ input: CreateAccessExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessExportResponse {
        try await self.client.execute(action: "CreateAccessExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建访问日志导出
    ///
    /// 本接口用于创建访问日志导出
    @inlinable
    public func createAccessExport(topicId: String, from: Int64, to: Int64, query: String, count: Int64, format: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccessExportResponse> {
        self.createAccessExport(.init(topicId: topicId, from: from, to: to, query: query, count: count, format: format, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 创建访问日志导出
    ///
    /// 本接口用于创建访问日志导出
    @inlinable
    public func createAccessExport(topicId: String, from: Int64, to: Int64, query: String, count: Int64, format: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessExportResponse {
        try await self.createAccessExport(.init(topicId: topicId, from: from, to: to, query: query, count: count, format: format, order: order), region: region, logger: logger, on: eventLoop)
    }
}
