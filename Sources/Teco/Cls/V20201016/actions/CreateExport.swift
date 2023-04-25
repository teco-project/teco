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

extension Cls {
    /// CreateExport请求参数结构体
    public struct CreateExportRequest: TCRequestModel {
        /// 日志主题ID
        public let topicId: String

        /// 日志导出数量,  最大值5000万
        public let count: UInt64

        /// 日志导出检索语句，不支持<a href="https://cloud.tencent.com/document/product/614/44061" target="_blank">[SQL语句]</a>
        public let query: String

        /// 日志导出起始时间，毫秒时间戳
        public let from: Int64

        /// 日志导出结束时间，毫秒时间戳
        public let to: Int64

        /// 日志导出时间排序。desc，asc，默认为desc
        public let order: String?

        /// 日志导出数据格式。json，csv，默认为json
        public let format: String?

        public init(topicId: String, count: UInt64, query: String, from: Int64, to: Int64, order: String? = nil, format: String? = nil) {
            self.topicId = topicId
            self.count = count
            self.query = query
            self.from = from
            self.to = to
            self.order = order
            self.format = format
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case count = "Count"
            case query = "Query"
            case from = "From"
            case to = "To"
            case order = "Order"
            case format = "Format"
        }
    }

    /// CreateExport返回参数结构体
    public struct CreateExportResponse: TCResponseModel {
        /// 日志导出ID。
        public let exportId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case exportId = "ExportId"
            case requestId = "RequestId"
        }
    }

    /// 创建日志下载任务
    ///
    /// 本接口仅创建下载任务，任务返回的下载地址，请用户调用DescribeExports查看任务列表。其中有下载地址CosPath参数。参考文档https://cloud.tencent.com/document/product/614/56449
    @inlinable
    public func createExport(_ input: CreateExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExportResponse> {
        self.client.execute(action: "CreateExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建日志下载任务
    ///
    /// 本接口仅创建下载任务，任务返回的下载地址，请用户调用DescribeExports查看任务列表。其中有下载地址CosPath参数。参考文档https://cloud.tencent.com/document/product/614/56449
    @inlinable
    public func createExport(_ input: CreateExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExportResponse {
        try await self.client.execute(action: "CreateExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建日志下载任务
    ///
    /// 本接口仅创建下载任务，任务返回的下载地址，请用户调用DescribeExports查看任务列表。其中有下载地址CosPath参数。参考文档https://cloud.tencent.com/document/product/614/56449
    @inlinable
    public func createExport(topicId: String, count: UInt64, query: String, from: Int64, to: Int64, order: String? = nil, format: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExportResponse> {
        self.createExport(.init(topicId: topicId, count: count, query: query, from: from, to: to, order: order, format: format), region: region, logger: logger, on: eventLoop)
    }

    /// 创建日志下载任务
    ///
    /// 本接口仅创建下载任务，任务返回的下载地址，请用户调用DescribeExports查看任务列表。其中有下载地址CosPath参数。参考文档https://cloud.tencent.com/document/product/614/56449
    @inlinable
    public func createExport(topicId: String, count: UInt64, query: String, from: Int64, to: Int64, order: String? = nil, format: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExportResponse {
        try await self.createExport(.init(topicId: topicId, count: count, query: query, from: from, to: to, order: order, format: format), region: region, logger: logger, on: eventLoop)
    }
}
