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

extension Ciam {
    /// ListJobs请求参数结构体
    public struct ListJobsRequest: TCRequest {
        /// 用户目录ID
        public let userStoreId: String

        /// 任务ID列表，为空时返回全部任务
        public let jobIds: [String]?

        public init(userStoreId: String, jobIds: [String]? = nil) {
            self.userStoreId = userStoreId
            self.jobIds = jobIds
        }

        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case jobIds = "JobIds"
        }
    }

    /// ListJobs返回参数结构体
    public struct ListJobsResponse: TCResponse {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobSet: [Job]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobSet = "JobSet"
            case requestId = "RequestId"
        }
    }

    /// 查询任务详情
    @inlinable
    public func listJobs(_ input: ListJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsResponse> {
        self.client.execute(action: "ListJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    @inlinable
    public func listJobs(_ input: ListJobsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsResponse {
        try await self.client.execute(action: "ListJobs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务详情
    @inlinable
    public func listJobs(userStoreId: String, jobIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListJobsResponse> {
        self.listJobs(.init(userStoreId: userStoreId, jobIds: jobIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    @inlinable
    public func listJobs(userStoreId: String, jobIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListJobsResponse {
        try await self.listJobs(.init(userStoreId: userStoreId, jobIds: jobIds), region: region, logger: logger, on: eventLoop)
    }
}
