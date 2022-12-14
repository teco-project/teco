//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ft {
    /// CancelFaceMorphJob请求参数结构体
    public struct CancelFaceMorphJobRequest: TCRequestModel {
        /// 人像渐变任务Job id
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// CancelFaceMorphJob返回参数结构体
    public struct CancelFaceMorphJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 撤销人像渐变任务
    ///
    /// 撤销人像渐变任务请求
    @inlinable
    public func cancelFaceMorphJob(_ input: CancelFaceMorphJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CancelFaceMorphJobResponse > {
        self.client.execute(action: "CancelFaceMorphJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤销人像渐变任务
    ///
    /// 撤销人像渐变任务请求
    @inlinable
    public func cancelFaceMorphJob(_ input: CancelFaceMorphJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelFaceMorphJobResponse {
        try await self.client.execute(action: "CancelFaceMorphJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤销人像渐变任务
    ///
    /// 撤销人像渐变任务请求
    @inlinable
    public func cancelFaceMorphJob(jobId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CancelFaceMorphJobResponse > {
        self.cancelFaceMorphJob(CancelFaceMorphJobRequest(jobId: jobId), logger: logger, on: eventLoop)
    }

    /// 撤销人像渐变任务
    ///
    /// 撤销人像渐变任务请求
    @inlinable
    public func cancelFaceMorphJob(jobId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelFaceMorphJobResponse {
        try await self.cancelFaceMorphJob(CancelFaceMorphJobRequest(jobId: jobId), logger: logger, on: eventLoop)
    }
}
