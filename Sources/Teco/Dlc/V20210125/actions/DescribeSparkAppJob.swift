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

extension Dlc {
    /// DescribeSparkAppJob请求参数结构体
    public struct DescribeSparkAppJobRequest: TCRequestModel {
        /// spark作业Id，与JobName同时存在时，JobName无效
        public let jobId: String?

        /// spark作业名
        public let jobName: String?

        public init(jobId: String? = nil, jobName: String? = nil) {
            self.jobId = jobId
            self.jobName = jobName
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobName = "JobName"
        }
    }

    /// DescribeSparkAppJob返回参数结构体
    public struct DescribeSparkAppJobResponse: TCResponseModel {
        /// spark作业详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let job: SparkJobInfo?

        /// 查询的spark作业是否存在
        public let isExists: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case job = "Job"
            case isExists = "IsExists"
            case requestId = "RequestId"
        }
    }

    /// 查询具体的spark应用
    @inlinable
    public func describeSparkAppJob(_ input: DescribeSparkAppJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSparkAppJobResponse> {
        self.client.execute(action: "DescribeSparkAppJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询具体的spark应用
    @inlinable
    public func describeSparkAppJob(_ input: DescribeSparkAppJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkAppJobResponse {
        try await self.client.execute(action: "DescribeSparkAppJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询具体的spark应用
    @inlinable
    public func describeSparkAppJob(jobId: String? = nil, jobName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSparkAppJobResponse> {
        let input = DescribeSparkAppJobRequest(jobId: jobId, jobName: jobName)
        return self.client.execute(action: "DescribeSparkAppJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询具体的spark应用
    @inlinable
    public func describeSparkAppJob(jobId: String? = nil, jobName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSparkAppJobResponse {
        let input = DescribeSparkAppJobRequest(jobId: jobId, jobName: jobName)
        return try await self.client.execute(action: "DescribeSparkAppJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
