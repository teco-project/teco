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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Oceanus {
    /// DescribeJobSavepoint请求参数结构体
    public struct DescribeJobSavepointRequest: TCRequestModel {
        /// 作业 SerialId
        public let jobId: String

        /// 分页参数，单页总数
        public let limit: Int64

        /// 分页参数，偏移量
        public let offset: Int64

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(jobId: String, limit: Int64, offset: Int64, workSpaceId: String? = nil) {
            self.jobId = jobId
            self.limit = limit
            self.offset = offset
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case limit = "Limit"
            case offset = "Offset"
            case workSpaceId = "WorkSpaceId"
        }
    }

    /// DescribeJobSavepoint返回参数结构体
    public struct DescribeJobSavepointResponse: TCResponseModel {
        /// 快照列表总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalNumber: Int64?

        /// 快照列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let savepoint: [Savepoint]?

        /// 进行中的快照列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runningSavepoint: [Savepoint]?

        /// 进行中的快照列表总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runningTotalNumber: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalNumber = "TotalNumber"
            case savepoint = "Savepoint"
            case runningSavepoint = "RunningSavepoint"
            case runningTotalNumber = "RunningTotalNumber"
            case requestId = "RequestId"
        }
    }

    /// 查找Savepoint列表
    @inlinable
    public func describeJobSavepoint(_ input: DescribeJobSavepointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobSavepointResponse> {
        self.client.execute(action: "DescribeJobSavepoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查找Savepoint列表
    @inlinable
    public func describeJobSavepoint(_ input: DescribeJobSavepointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobSavepointResponse {
        try await self.client.execute(action: "DescribeJobSavepoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查找Savepoint列表
    @inlinable
    public func describeJobSavepoint(jobId: String, limit: Int64, offset: Int64, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobSavepointResponse> {
        self.describeJobSavepoint(.init(jobId: jobId, limit: limit, offset: offset, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查找Savepoint列表
    @inlinable
    public func describeJobSavepoint(jobId: String, limit: Int64, offset: Int64, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobSavepointResponse {
        try await self.describeJobSavepoint(.init(jobId: jobId, limit: limit, offset: offset, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }
}
