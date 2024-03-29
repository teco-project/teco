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

extension Dts {
    /// DescribeAsyncRequestInfo请求参数结构体
    public struct DescribeAsyncRequestInfoRequest: TCRequest {
        /// 任务 ID
        public let asyncRequestId: String

        public init(asyncRequestId: String) {
            self.asyncRequestId = asyncRequestId
        }

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
        }
    }

    /// DescribeAsyncRequestInfo返回参数结构体
    public struct DescribeAsyncRequestInfoResponse: TCResponse {
        /// 任务执行结果信息
        public let info: String

        /// 任务执行状态，可能的值有：success，failed，running
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case info = "Info"
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询任务执行结果
    ///
    /// 本接口（DescribeAsyncRequestInfo）用于查询任务执行结果
    @inlinable
    public func describeAsyncRequestInfo(_ input: DescribeAsyncRequestInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAsyncRequestInfoResponse> {
        self.client.execute(action: "DescribeAsyncRequestInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务执行结果
    ///
    /// 本接口（DescribeAsyncRequestInfo）用于查询任务执行结果
    @inlinable
    public func describeAsyncRequestInfo(_ input: DescribeAsyncRequestInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAsyncRequestInfoResponse {
        try await self.client.execute(action: "DescribeAsyncRequestInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务执行结果
    ///
    /// 本接口（DescribeAsyncRequestInfo）用于查询任务执行结果
    @inlinable
    public func describeAsyncRequestInfo(asyncRequestId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAsyncRequestInfoResponse> {
        self.describeAsyncRequestInfo(.init(asyncRequestId: asyncRequestId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务执行结果
    ///
    /// 本接口（DescribeAsyncRequestInfo）用于查询任务执行结果
    @inlinable
    public func describeAsyncRequestInfo(asyncRequestId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAsyncRequestInfoResponse {
        try await self.describeAsyncRequestInfo(.init(asyncRequestId: asyncRequestId), region: region, logger: logger, on: eventLoop)
    }
}
