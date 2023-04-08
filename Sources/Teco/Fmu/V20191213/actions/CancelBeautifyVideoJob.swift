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

import TecoCore

extension Fmu {
    /// CancelBeautifyVideoJob请求参数结构体
    public struct CancelBeautifyVideoJobRequest: TCRequestModel {
        /// 美颜视频的Job id
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// CancelBeautifyVideoJob返回参数结构体
    public struct CancelBeautifyVideoJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 撤销视频美颜任务
    ///
    /// 撤销视频美颜任务请求
    @inlinable @discardableResult
    public func cancelBeautifyVideoJob(_ input: CancelBeautifyVideoJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelBeautifyVideoJobResponse> {
        self.client.execute(action: "CancelBeautifyVideoJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤销视频美颜任务
    ///
    /// 撤销视频美颜任务请求
    @inlinable @discardableResult
    public func cancelBeautifyVideoJob(_ input: CancelBeautifyVideoJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelBeautifyVideoJobResponse {
        try await self.client.execute(action: "CancelBeautifyVideoJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤销视频美颜任务
    ///
    /// 撤销视频美颜任务请求
    @inlinable @discardableResult
    public func cancelBeautifyVideoJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelBeautifyVideoJobResponse> {
        self.cancelBeautifyVideoJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 撤销视频美颜任务
    ///
    /// 撤销视频美颜任务请求
    @inlinable @discardableResult
    public func cancelBeautifyVideoJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelBeautifyVideoJobResponse {
        try await self.cancelBeautifyVideoJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
