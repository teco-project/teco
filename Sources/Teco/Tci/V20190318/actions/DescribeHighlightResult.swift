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

extension Tci {
    /// DescribeHighlightResult请求参数结构体
    public struct DescribeHighlightResultRequest: TCRequest {
        /// 精彩集锦任务唯一id。在URL方式时提交请求后会返回一个JobId，后续查询该url的结果时使用这个JobId进行查询。
        public let jobId: Int64

        public init(jobId: Int64) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// DescribeHighlightResult返回参数结构体
    public struct DescribeHighlightResultResponse: TCResponse {
        /// 精彩集锦详细信息。
        public let highlightsInfo: [HighlightsInfomation]

        /// 精彩集锦任务唯一id。在URL方式时提交请求后会返回一个JobId，后续查询该url的结果时使用这个JobId进行查询。
        public let jobId: Int64

        /// 任务的进度百分比，100表示任务已完成。
        public let progress: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case highlightsInfo = "HighlightsInfo"
            case jobId = "JobId"
            case progress = "Progress"
            case requestId = "RequestId"
        }
    }

    /// 视频精彩集锦结果查询接口
    ///
    /// 视频精彩集锦结果查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeHighlightResult(_ input: DescribeHighlightResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHighlightResultResponse> {
        self.client.execute(action: "DescribeHighlightResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 视频精彩集锦结果查询接口
    ///
    /// 视频精彩集锦结果查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeHighlightResult(_ input: DescribeHighlightResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHighlightResultResponse {
        try await self.client.execute(action: "DescribeHighlightResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 视频精彩集锦结果查询接口
    ///
    /// 视频精彩集锦结果查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeHighlightResult(jobId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHighlightResultResponse> {
        self.describeHighlightResult(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 视频精彩集锦结果查询接口
    ///
    /// 视频精彩集锦结果查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeHighlightResult(jobId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHighlightResultResponse {
        try await self.describeHighlightResult(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
