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

extension Tcss {
    /// DescribeExportJobResult请求参数结构体
    public struct DescribeExportJobResultRequest: TCRequestModel {
        /// CreateExportComplianceStatusListJob返回的JobId字段的值
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// DescribeExportJobResult返回参数结构体
    public struct DescribeExportJobResultResponse: TCResponseModel {
        /// 导出的状态。取值为, SUCCESS:成功、FAILURE:失败，RUNNING: 进行中。
        public let exportStatus: String

        /// 返回下载URL
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadURL: String?

        /// 当ExportStatus为RUNNING时，返回导出进度。0~100范围的浮点数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let exportProgress: Float?

        /// 失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failureMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case exportStatus = "ExportStatus"
            case downloadURL = "DownloadURL"
            case exportProgress = "ExportProgress"
            case failureMsg = "FailureMsg"
            case requestId = "RequestId"
        }
    }

    /// 查询导出任务的结果
    @inlinable
    public func describeExportJobResult(_ input: DescribeExportJobResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportJobResultResponse> {
        self.client.execute(action: "DescribeExportJobResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询导出任务的结果
    @inlinable
    public func describeExportJobResult(_ input: DescribeExportJobResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportJobResultResponse {
        try await self.client.execute(action: "DescribeExportJobResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询导出任务的结果
    @inlinable
    public func describeExportJobResult(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportJobResultResponse> {
        self.describeExportJobResult(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询导出任务的结果
    @inlinable
    public func describeExportJobResult(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportJobResultResponse {
        try await self.describeExportJobResult(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
