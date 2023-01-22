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

extension Dts {
    /// PauseMigrateJob请求参数结构体
    public struct PauseMigrateJobRequest: TCRequestModel {
        /// 数据迁移任务ID
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// PauseMigrateJob返回参数结构体
    public struct PauseMigrateJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 暂停迁移任务
    ///
    /// 暂停一个迁移任务。
    @inlinable @discardableResult
    public func pauseMigrateJob(_ input: PauseMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PauseMigrateJobResponse> {
        self.client.execute(action: "PauseMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 暂停迁移任务
    ///
    /// 暂停一个迁移任务。
    @inlinable @discardableResult
    public func pauseMigrateJob(_ input: PauseMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PauseMigrateJobResponse {
        try await self.client.execute(action: "PauseMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 暂停迁移任务
    ///
    /// 暂停一个迁移任务。
    @inlinable @discardableResult
    public func pauseMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PauseMigrateJobResponse> {
        self.pauseMigrateJob(PauseMigrateJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 暂停迁移任务
    ///
    /// 暂停一个迁移任务。
    @inlinable @discardableResult
    public func pauseMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PauseMigrateJobResponse {
        try await self.pauseMigrateJob(PauseMigrateJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
