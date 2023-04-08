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

extension Dts {
    /// StopMigrateJob请求参数结构体
    public struct StopMigrateJobRequest: TCRequestModel {
        /// 数据迁移任务ID
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// StopMigrateJob返回参数结构体
    public struct StopMigrateJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 撤销数据迁移任务
    ///
    /// 本接口（StopMigrateJob）用于撤销数据迁移任务。
    /// 在迁移过程中允许调用该接口撤销迁移, 撤销迁移的任务会失败。通过DescribeMigrateJobs接口查询到任务状态为运行中（status=7）或准备完成（status=8）时，才能撤销数据迁移任务。
    @inlinable @discardableResult
    public func stopMigrateJob(_ input: StopMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMigrateJobResponse> {
        self.client.execute(action: "StopMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤销数据迁移任务
    ///
    /// 本接口（StopMigrateJob）用于撤销数据迁移任务。
    /// 在迁移过程中允许调用该接口撤销迁移, 撤销迁移的任务会失败。通过DescribeMigrateJobs接口查询到任务状态为运行中（status=7）或准备完成（status=8）时，才能撤销数据迁移任务。
    @inlinable @discardableResult
    public func stopMigrateJob(_ input: StopMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMigrateJobResponse {
        try await self.client.execute(action: "StopMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤销数据迁移任务
    ///
    /// 本接口（StopMigrateJob）用于撤销数据迁移任务。
    /// 在迁移过程中允许调用该接口撤销迁移, 撤销迁移的任务会失败。通过DescribeMigrateJobs接口查询到任务状态为运行中（status=7）或准备完成（status=8）时，才能撤销数据迁移任务。
    @inlinable @discardableResult
    public func stopMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopMigrateJobResponse> {
        self.stopMigrateJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 撤销数据迁移任务
    ///
    /// 本接口（StopMigrateJob）用于撤销数据迁移任务。
    /// 在迁移过程中允许调用该接口撤销迁移, 撤销迁移的任务会失败。通过DescribeMigrateJobs接口查询到任务状态为运行中（status=7）或准备完成（status=8）时，才能撤销数据迁移任务。
    @inlinable @discardableResult
    public func stopMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMigrateJobResponse {
        try await self.stopMigrateJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
