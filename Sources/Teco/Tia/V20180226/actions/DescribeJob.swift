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

extension Tia {
    /// DescribeJob请求参数结构体
    public struct DescribeJobRequest: TCRequestModel {
        /// 任务名称
        public let name: String

        /// 运行任务的集群
        public let cluster: String

        public init(name: String, cluster: String) {
            self.name = name
            self.cluster = cluster
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case cluster = "Cluster"
        }
    }

    /// DescribeJob返回参数结构体
    public struct DescribeJobResponse: TCResponseModel {
        /// 训练任务信息
        public let job: Job

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case job = "Job"
            case requestId = "RequestId"
        }
    }

    /// 获取Job详情
    ///
    /// 获取训练任务详情
    @inlinable
    public func describeJob(_ input: DescribeJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobResponse> {
        self.client.execute(action: "DescribeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Job详情
    ///
    /// 获取训练任务详情
    @inlinable
    public func describeJob(_ input: DescribeJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobResponse {
        try await self.client.execute(action: "DescribeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Job详情
    ///
    /// 获取训练任务详情
    @inlinable
    public func describeJob(name: String, cluster: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobResponse> {
        let input = DescribeJobRequest(name: name, cluster: cluster)
        return self.client.execute(action: "DescribeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Job详情
    ///
    /// 获取训练任务详情
    @inlinable
    public func describeJob(name: String, cluster: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobResponse {
        let input = DescribeJobRequest(name: name, cluster: cluster)
        return try await self.client.execute(action: "DescribeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
