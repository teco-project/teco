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

extension Tiw {
    /// DescribeTranscodeByUrl请求参数结构体
    public struct DescribeTranscodeByUrlRequest: TCRequestModel {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 经过URL编码后的转码文件地址。URL 编码会将字符转换为可通过因特网传输的格式，比如文档地址为http://example.com/测试.pdf，经过URL编码之后为http://example.com/%E6%B5%8B%E8%AF%95.pdf。为了提高URL解析的成功率，请对URL进行编码。
        public let url: String

        public init(sdkAppId: Int64, url: String) {
            self.sdkAppId = sdkAppId
            self.url = url
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case url = "Url"
        }
    }

    /// DescribeTranscodeByUrl返回参数结构体
    public struct DescribeTranscodeByUrlResponse: TCResponseModel {
        /// 转码的当前进度,取值范围为0~100
        public let progress: Int64

        /// 任务的当前状态
        /// - QUEUED: 正在排队等待转换
        /// - PROCESSING: 转换中
        /// - FINISHED: 转换完成
        /// - EXCEPTION: 转换异常
        public let status: String

        /// 转码任务的唯一标识Id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case progress = "Progress"
            case status = "Status"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 通过文档URL查询转码任务状态
    ///
    /// 通过文档URL查询转码任务，返回最近一次的转码任务状态
    @inlinable
    public func describeTranscodeByUrl(_ input: DescribeTranscodeByUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTranscodeByUrlResponse> {
        self.client.execute(action: "DescribeTranscodeByUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过文档URL查询转码任务状态
    ///
    /// 通过文档URL查询转码任务，返回最近一次的转码任务状态
    @inlinable
    public func describeTranscodeByUrl(_ input: DescribeTranscodeByUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTranscodeByUrlResponse {
        try await self.client.execute(action: "DescribeTranscodeByUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过文档URL查询转码任务状态
    ///
    /// 通过文档URL查询转码任务，返回最近一次的转码任务状态
    @inlinable
    public func describeTranscodeByUrl(sdkAppId: Int64, url: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTranscodeByUrlResponse> {
        self.describeTranscodeByUrl(.init(sdkAppId: sdkAppId, url: url), region: region, logger: logger, on: eventLoop)
    }

    /// 通过文档URL查询转码任务状态
    ///
    /// 通过文档URL查询转码任务，返回最近一次的转码任务状态
    @inlinable
    public func describeTranscodeByUrl(sdkAppId: Int64, url: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTranscodeByUrlResponse {
        try await self.describeTranscodeByUrl(.init(sdkAppId: sdkAppId, url: url), region: region, logger: logger, on: eventLoop)
    }
}