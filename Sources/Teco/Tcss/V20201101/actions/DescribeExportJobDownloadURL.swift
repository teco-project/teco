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

extension Tcss {
    /// DescribeExportJobDownloadURL请求参数结构体
    public struct DescribeExportJobDownloadURLRequest: TCRequestModel {
        /// 任务ID
        public let jobID: String

        public init(jobID: String) {
            self.jobID = jobID
        }

        enum CodingKeys: String, CodingKey {
            case jobID = "JobID"
        }
    }

    /// DescribeExportJobDownloadURL返回参数结构体
    public struct DescribeExportJobDownloadURLResponse: TCResponseModel {
        /// 下载链接
        public let downloadURL: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadURL = "DownloadURL"
            case requestId = "RequestId"
        }
    }

    /// 查询导出任务下载URL
    @inlinable
    public func describeExportJobDownloadURL(_ input: DescribeExportJobDownloadURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportJobDownloadURLResponse> {
        self.client.execute(action: "DescribeExportJobDownloadURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询导出任务下载URL
    @inlinable
    public func describeExportJobDownloadURL(_ input: DescribeExportJobDownloadURLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportJobDownloadURLResponse {
        try await self.client.execute(action: "DescribeExportJobDownloadURL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询导出任务下载URL
    @inlinable
    public func describeExportJobDownloadURL(jobID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportJobDownloadURLResponse> {
        self.describeExportJobDownloadURL(.init(jobID: jobID), region: region, logger: logger, on: eventLoop)
    }

    /// 查询导出任务下载URL
    @inlinable
    public func describeExportJobDownloadURL(jobID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportJobDownloadURLResponse {
        try await self.describeExportJobDownloadURL(.init(jobID: jobID), region: region, logger: logger, on: eventLoop)
    }
}
