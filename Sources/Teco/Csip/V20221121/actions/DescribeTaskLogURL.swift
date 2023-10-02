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

extension Csip {
    /// DescribeTaskLogURL请求参数结构体
    public struct DescribeTaskLogURLRequest: TCRequest {
        /// 任务报告Id 列表
        public let reportItemKeyList: [ReportItemKey]

        /// 0: 预览， 1: 下载
        public let type: Int64

        public init(reportItemKeyList: [ReportItemKey], type: Int64) {
            self.reportItemKeyList = reportItemKeyList
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case reportItemKeyList = "ReportItemKeyList"
            case type = "Type"
        }
    }

    /// DescribeTaskLogURL返回参数结构体
    public struct DescribeTaskLogURLResponse: TCResponse {
        /// 返回报告临时下载url
        public let data: [TaskLogURL]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取报告下载的临时链接
    @inlinable
    public func describeTaskLogURL(_ input: DescribeTaskLogURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskLogURLResponse> {
        self.client.execute(action: "DescribeTaskLogURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取报告下载的临时链接
    @inlinable
    public func describeTaskLogURL(_ input: DescribeTaskLogURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskLogURLResponse {
        try await self.client.execute(action: "DescribeTaskLogURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取报告下载的临时链接
    @inlinable
    public func describeTaskLogURL(reportItemKeyList: [ReportItemKey], type: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskLogURLResponse> {
        self.describeTaskLogURL(.init(reportItemKeyList: reportItemKeyList, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取报告下载的临时链接
    @inlinable
    public func describeTaskLogURL(reportItemKeyList: [ReportItemKey], type: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskLogURLResponse {
        try await self.describeTaskLogURL(.init(reportItemKeyList: reportItemKeyList, type: type), region: region, logger: logger, on: eventLoop)
    }
}
