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

extension Dnspod {
    /// DescribeBatchTask请求参数结构体
    public struct DescribeBatchTaskRequest: TCRequestModel {
        /// 任务ID。操作批量接口时会返回JobId
        public let jobId: UInt64

        public init(jobId: UInt64) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// DescribeBatchTask返回参数结构体
    public struct DescribeBatchTaskResponse: TCResponseModel {
        /// 批量任务详情
        public let detailList: [DescribeBatchTaskDetail]

        /// 总任务条数
        public let totalCount: UInt64

        /// 成功条数
        public let successCount: UInt64

        /// 失败条数
        public let failCount: UInt64

        /// 批量任务类型
        public let jobType: String

        /// 任务创建时间
        public let createdAt: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case detailList = "DetailList"
            case totalCount = "TotalCount"
            case successCount = "SuccessCount"
            case failCount = "FailCount"
            case jobType = "JobType"
            case createdAt = "CreatedAt"
            case requestId = "RequestId"
        }
    }

    /// 获取任务详情
    @inlinable
    public func describeBatchTask(_ input: DescribeBatchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchTaskResponse> {
        self.client.execute(action: "DescribeBatchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务详情
    @inlinable
    public func describeBatchTask(_ input: DescribeBatchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchTaskResponse {
        try await self.client.execute(action: "DescribeBatchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务详情
    @inlinable
    public func describeBatchTask(jobId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchTaskResponse> {
        self.describeBatchTask(DescribeBatchTaskRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务详情
    @inlinable
    public func describeBatchTask(jobId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchTaskResponse {
        try await self.describeBatchTask(DescribeBatchTaskRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
