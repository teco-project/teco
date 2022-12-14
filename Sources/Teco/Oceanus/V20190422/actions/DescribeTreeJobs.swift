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

extension Oceanus {
    /// DescribeTreeJobs请求参数结构体
    public struct DescribeTreeJobsRequest: TCRequestModel {
        /// 工作空间 Serialid
        public let workSpaceId: String?

        public init(workSpaceId: String? = nil) {
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case workSpaceId = "WorkSpaceId"
        }
    }

    /// DescribeTreeJobs返回参数结构体
    public struct DescribeTreeJobsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 自定义树状结构
    ///
    /// 生成树状作业显示结构
    @inlinable
    public func describeTreeJobs(_ input: DescribeTreeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTreeJobsResponse > {
        self.client.execute(action: "DescribeTreeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 自定义树状结构
    ///
    /// 生成树状作业显示结构
    @inlinable
    public func describeTreeJobs(_ input: DescribeTreeJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTreeJobsResponse {
        try await self.client.execute(action: "DescribeTreeJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 自定义树状结构
    ///
    /// 生成树状作业显示结构
    @inlinable
    public func describeTreeJobs(workSpaceId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTreeJobsResponse > {
        self.describeTreeJobs(DescribeTreeJobsRequest(workSpaceId: workSpaceId), logger: logger, on: eventLoop)
    }

    /// 自定义树状结构
    ///
    /// 生成树状作业显示结构
    @inlinable
    public func describeTreeJobs(workSpaceId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTreeJobsResponse {
        try await self.describeTreeJobs(DescribeTreeJobsRequest(workSpaceId: workSpaceId), logger: logger, on: eventLoop)
    }
}
