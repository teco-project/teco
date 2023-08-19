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

extension Tcr {
    /// DescribeGCJobs请求参数结构体
    public struct DescribeGCJobsRequest: TCRequest {
        /// 实例 Id
        public let registryId: String

        public init(registryId: String) {
            self.registryId = registryId
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
        }
    }

    /// DescribeGCJobs返回参数结构体
    public struct DescribeGCJobsResponse: TCResponse {
        /// GC Job 列表
        public let jobs: [GCJobInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobs = "Jobs"
            case requestId = "RequestId"
        }
    }

    /// GC 历史
    ///
    /// GC 最近10条历史
    @inlinable
    public func describeGCJobs(_ input: DescribeGCJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGCJobsResponse> {
        self.client.execute(action: "DescribeGCJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// GC 历史
    ///
    /// GC 最近10条历史
    @inlinable
    public func describeGCJobs(_ input: DescribeGCJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGCJobsResponse {
        try await self.client.execute(action: "DescribeGCJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// GC 历史
    ///
    /// GC 最近10条历史
    @inlinable
    public func describeGCJobs(registryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGCJobsResponse> {
        self.describeGCJobs(.init(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }

    /// GC 历史
    ///
    /// GC 最近10条历史
    @inlinable
    public func describeGCJobs(registryId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGCJobsResponse {
        try await self.describeGCJobs(.init(registryId: registryId), region: region, logger: logger, on: eventLoop)
    }
}
