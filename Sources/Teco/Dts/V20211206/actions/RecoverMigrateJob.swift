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
    /// RecoverMigrateJob请求参数结构体
    public struct RecoverMigrateJobRequest: TCRequestModel {
        /// 任务id
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// RecoverMigrateJob返回参数结构体
    public struct RecoverMigrateJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解除隔离数据迁移任务
    ///
    /// 解除隔离数据迁移任务，用户手动发起隔离后的手动解隔离，只有任务状态为已隔离(手动操作)状态下才能触发此操作。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable @discardableResult
    public func recoverMigrateJob(_ input: RecoverMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecoverMigrateJobResponse> {
        self.client.execute(action: "RecoverMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解除隔离数据迁移任务
    ///
    /// 解除隔离数据迁移任务，用户手动发起隔离后的手动解隔离，只有任务状态为已隔离(手动操作)状态下才能触发此操作。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable @discardableResult
    public func recoverMigrateJob(_ input: RecoverMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecoverMigrateJobResponse {
        try await self.client.execute(action: "RecoverMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解除隔离数据迁移任务
    ///
    /// 解除隔离数据迁移任务，用户手动发起隔离后的手动解隔离，只有任务状态为已隔离(手动操作)状态下才能触发此操作。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable @discardableResult
    public func recoverMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecoverMigrateJobResponse> {
        self.recoverMigrateJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 解除隔离数据迁移任务
    ///
    /// 解除隔离数据迁移任务，用户手动发起隔离后的手动解隔离，只有任务状态为已隔离(手动操作)状态下才能触发此操作。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable @discardableResult
    public func recoverMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecoverMigrateJobResponse {
        try await self.recoverMigrateJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
