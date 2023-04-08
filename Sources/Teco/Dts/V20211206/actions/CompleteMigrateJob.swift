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
    /// CompleteMigrateJob请求参数结构体
    public struct CompleteMigrateJobRequest: TCRequestModel {
        /// 数据迁移任务ID
        public let jobId: String

        /// 完成任务的方式,仅支持旧版MySQL迁移任务。waitForSync-等待主从差距为0才停止,immediately-立即完成，不会等待主从差距一致。默认为waitForSync
        public let completeMode: String?

        public init(jobId: String, completeMode: String? = nil) {
            self.jobId = jobId
            self.completeMode = completeMode
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case completeMode = "CompleteMode"
        }
    }

    /// CompleteMigrateJob返回参数结构体
    public struct CompleteMigrateJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 完成数据迁移任务
    ///
    /// 本接口（CompleteMigrateJob）用于完成数据迁移任务。
    /// 选择采用增量迁移方式的任务, 需要在迁移进度进入准备完成阶段后, 调用本接口, 停止迁移增量数据。
    /// 通过DescribeMigrationJobs接口查询到任务的状态为准备完成（Status="readyComplete"）时，此时可以调用本接口完成迁移任务。
    @inlinable @discardableResult
    public func completeMigrateJob(_ input: CompleteMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteMigrateJobResponse> {
        self.client.execute(action: "CompleteMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 完成数据迁移任务
    ///
    /// 本接口（CompleteMigrateJob）用于完成数据迁移任务。
    /// 选择采用增量迁移方式的任务, 需要在迁移进度进入准备完成阶段后, 调用本接口, 停止迁移增量数据。
    /// 通过DescribeMigrationJobs接口查询到任务的状态为准备完成（Status="readyComplete"）时，此时可以调用本接口完成迁移任务。
    @inlinable @discardableResult
    public func completeMigrateJob(_ input: CompleteMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteMigrateJobResponse {
        try await self.client.execute(action: "CompleteMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 完成数据迁移任务
    ///
    /// 本接口（CompleteMigrateJob）用于完成数据迁移任务。
    /// 选择采用增量迁移方式的任务, 需要在迁移进度进入准备完成阶段后, 调用本接口, 停止迁移增量数据。
    /// 通过DescribeMigrationJobs接口查询到任务的状态为准备完成（Status="readyComplete"）时，此时可以调用本接口完成迁移任务。
    @inlinable @discardableResult
    public func completeMigrateJob(jobId: String, completeMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompleteMigrateJobResponse> {
        self.completeMigrateJob(.init(jobId: jobId, completeMode: completeMode), region: region, logger: logger, on: eventLoop)
    }

    /// 完成数据迁移任务
    ///
    /// 本接口（CompleteMigrateJob）用于完成数据迁移任务。
    /// 选择采用增量迁移方式的任务, 需要在迁移进度进入准备完成阶段后, 调用本接口, 停止迁移增量数据。
    /// 通过DescribeMigrationJobs接口查询到任务的状态为准备完成（Status="readyComplete"）时，此时可以调用本接口完成迁移任务。
    @inlinable @discardableResult
    public func completeMigrateJob(jobId: String, completeMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteMigrateJobResponse {
        try await self.completeMigrateJob(.init(jobId: jobId, completeMode: completeMode), region: region, logger: logger, on: eventLoop)
    }
}
