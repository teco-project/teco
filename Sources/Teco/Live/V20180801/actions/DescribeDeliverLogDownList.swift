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

extension Live {
    /// DescribeDeliverLogDownList请求参数结构体
    public struct DescribeDeliverLogDownListRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeDeliverLogDownList返回参数结构体
    public struct DescribeDeliverLogDownListResponse: TCResponse {
        /// 日志信息列表。
        public let logInfoList: [PushLogInfo]

        /// 总条数。
        public let totalNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logInfoList = "LogInfoList"
            case totalNum = "TotalNum"
            case requestId = "RequestId"
        }
    }

    /// 批量获取转推日志的URL
    ///
    /// 批量获取转推日志的URL。
    @inlinable
    public func describeDeliverLogDownList(_ input: DescribeDeliverLogDownListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliverLogDownListResponse> {
        self.client.execute(action: "DescribeDeliverLogDownList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量获取转推日志的URL
    ///
    /// 批量获取转推日志的URL。
    @inlinable
    public func describeDeliverLogDownList(_ input: DescribeDeliverLogDownListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliverLogDownListResponse {
        try await self.client.execute(action: "DescribeDeliverLogDownList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量获取转推日志的URL
    ///
    /// 批量获取转推日志的URL。
    @inlinable
    public func describeDeliverLogDownList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliverLogDownListResponse> {
        self.describeDeliverLogDownList(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 批量获取转推日志的URL
    ///
    /// 批量获取转推日志的URL。
    @inlinable
    public func describeDeliverLogDownList(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliverLogDownListResponse {
        try await self.describeDeliverLogDownList(.init(), region: region, logger: logger, on: eventLoop)
    }
}