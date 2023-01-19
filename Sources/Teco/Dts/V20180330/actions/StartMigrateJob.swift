//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// StartMigrateJob请求参数结构体
    public struct StartMigrateJobRequest: TCRequestModel {
        /// 数据迁移任务ID
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// StartMigrateJob返回参数结构体
    public struct StartMigrateJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启动数据迁移任务
    ///
    /// 本接口（StartMigrationJob）用于启动迁移任务。非定时迁移任务会在调用后立即开始迁移，定时任务则会开始倒计时。
    /// 调用此接口前，请务必先使用CreateMigrateCheckJob校验数据迁移任务，并通过DescribeMigrateJobs接口查询到任务状态为校验通过（status=4）时，才能启动数据迁移任务。
    @inlinable
    public func startMigrateJob(_ input: StartMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMigrateJobResponse> {
        self.client.execute(action: "StartMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动数据迁移任务
    ///
    /// 本接口（StartMigrationJob）用于启动迁移任务。非定时迁移任务会在调用后立即开始迁移，定时任务则会开始倒计时。
    /// 调用此接口前，请务必先使用CreateMigrateCheckJob校验数据迁移任务，并通过DescribeMigrateJobs接口查询到任务状态为校验通过（status=4）时，才能启动数据迁移任务。
    @inlinable
    public func startMigrateJob(_ input: StartMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMigrateJobResponse {
        try await self.client.execute(action: "StartMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动数据迁移任务
    ///
    /// 本接口（StartMigrationJob）用于启动迁移任务。非定时迁移任务会在调用后立即开始迁移，定时任务则会开始倒计时。
    /// 调用此接口前，请务必先使用CreateMigrateCheckJob校验数据迁移任务，并通过DescribeMigrateJobs接口查询到任务状态为校验通过（status=4）时，才能启动数据迁移任务。
    @inlinable
    public func startMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMigrateJobResponse> {
        self.startMigrateJob(StartMigrateJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 启动数据迁移任务
    ///
    /// 本接口（StartMigrationJob）用于启动迁移任务。非定时迁移任务会在调用后立即开始迁移，定时任务则会开始倒计时。
    /// 调用此接口前，请务必先使用CreateMigrateCheckJob校验数据迁移任务，并通过DescribeMigrateJobs接口查询到任务状态为校验通过（status=4）时，才能启动数据迁移任务。
    @inlinable
    public func startMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMigrateJobResponse {
        try await self.startMigrateJob(StartMigrateJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
