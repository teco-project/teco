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

extension Fmu {
    /// QueryBeautifyVideoJob请求参数结构体
    public struct QueryBeautifyVideoJobRequest: TCRequestModel {
        /// 视频美颜Job id
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// QueryBeautifyVideoJob返回参数结构体
    public struct QueryBeautifyVideoJobResponse: TCResponseModel {
        /// 当前任务状态：排队中、处理中、处理失败或者处理完成
        public let jobStatus: String

        /// 视频美颜输出的结果信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let beautifyVideoOutput: BeautifyVideoOutput?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobStatus = "JobStatus"
            case beautifyVideoOutput = "BeautifyVideoOutput"
            case requestId = "RequestId"
        }
    }

    /// 查询视频美颜任务
    ///
    /// 查询视频美颜处理进度
    @inlinable
    public func queryBeautifyVideoJob(_ input: QueryBeautifyVideoJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryBeautifyVideoJobResponse > {
        self.client.execute(action: "QueryBeautifyVideoJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询视频美颜任务
    ///
    /// 查询视频美颜处理进度
    @inlinable
    public func queryBeautifyVideoJob(_ input: QueryBeautifyVideoJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryBeautifyVideoJobResponse {
        try await self.client.execute(action: "QueryBeautifyVideoJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询视频美颜任务
    ///
    /// 查询视频美颜处理进度
    @inlinable
    public func queryBeautifyVideoJob(jobId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryBeautifyVideoJobResponse > {
        self.queryBeautifyVideoJob(QueryBeautifyVideoJobRequest(jobId: jobId), logger: logger, on: eventLoop)
    }

    /// 查询视频美颜任务
    ///
    /// 查询视频美颜处理进度
    @inlinable
    public func queryBeautifyVideoJob(jobId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryBeautifyVideoJobResponse {
        try await self.queryBeautifyVideoJob(QueryBeautifyVideoJobRequest(jobId: jobId), logger: logger, on: eventLoop)
    }
}
