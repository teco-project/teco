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
    /// DescribeRumLogExports请求参数结构体
    public struct DescribeRumLogExportsRequest: TCRequest {
        /// 页面大小
        public let pageSize: Int64

        /// 页数，第几页
        public let pageNum: Int64

        /// 项目ID（必填）
        public let id: Int64

        public init(pageSize: Int64, pageNum: Int64, id: Int64) {
            self.pageSize = pageSize
            self.pageNum = pageNum
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageNum = "PageNum"
            case id = "ID"
        }
    }

    /// DescribeRumLogExports返回参数结构体
    public struct DescribeRumLogExportsResponse: TCResponse {
        /// 返回字符串
        public let result: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取Rum日志导出列表
    ///
    /// 获取项目下的日志导出列表
    @inlinable
    public func describeRumLogExports(_ input: DescribeRumLogExportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRumLogExportsResponse> {
        self.client.execute(action: "DescribeRumLogExports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Rum日志导出列表
    ///
    /// 获取项目下的日志导出列表
    @inlinable
    public func describeRumLogExports(_ input: DescribeRumLogExportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRumLogExportsResponse {
        try await self.client.execute(action: "DescribeRumLogExports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Rum日志导出列表
    ///
    /// 获取项目下的日志导出列表
    @inlinable
    public func describeRumLogExports(pageSize: Int64, pageNum: Int64, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRumLogExportsResponse> {
        self.describeRumLogExports(.init(pageSize: pageSize, pageNum: pageNum, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Rum日志导出列表
    ///
    /// 获取项目下的日志导出列表
    @inlinable
    public func describeRumLogExports(pageSize: Int64, pageNum: Int64, id: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRumLogExportsResponse {
        try await self.describeRumLogExports(.init(pageSize: pageSize, pageNum: pageNum, id: id), region: region, logger: logger, on: eventLoop)
    }
}
