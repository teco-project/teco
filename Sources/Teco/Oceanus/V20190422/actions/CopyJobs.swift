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

extension Oceanus {
    /// CopyJobs请求参数结构体
    public struct CopyJobsRequest: TCRequestModel {
        /// 复制明细列表
        public let jobItems: [CopyJobItem]

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(jobItems: [CopyJobItem], workSpaceId: String? = nil) {
            self.jobItems = jobItems
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case jobItems = "JobItems"
            case workSpaceId = "WorkSpaceId"
        }
    }

    /// CopyJobs返回参数结构体
    public struct CopyJobsResponse: TCResponseModel {
        /// 成功条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let successCount: Int64?

        /// 失败条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failCount: Int64?

        /// 结果列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let copyJobsResults: [CopyJobResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successCount = "SuccessCount"
            case failCount = "FailCount"
            case copyJobsResults = "CopyJobsResults"
            case requestId = "RequestId"
        }
    }

    /// 复制作业
    ///
    /// 单条和批量复制作业
    @inlinable
    public func copyJobs(_ input: CopyJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyJobsResponse> {
        self.client.execute(action: "CopyJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复制作业
    ///
    /// 单条和批量复制作业
    @inlinable
    public func copyJobs(_ input: CopyJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyJobsResponse {
        try await self.client.execute(action: "CopyJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 复制作业
    ///
    /// 单条和批量复制作业
    @inlinable
    public func copyJobs(jobItems: [CopyJobItem], workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyJobsResponse> {
        self.copyJobs(CopyJobsRequest(jobItems: jobItems, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 复制作业
    ///
    /// 单条和批量复制作业
    @inlinable
    public func copyJobs(jobItems: [CopyJobItem], workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyJobsResponse {
        try await self.copyJobs(CopyJobsRequest(jobItems: jobItems, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }
}
