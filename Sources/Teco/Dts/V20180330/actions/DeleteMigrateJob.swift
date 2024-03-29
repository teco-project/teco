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
    /// DeleteMigrateJob请求参数结构体
    public struct DeleteMigrateJobRequest: TCRequest {
        /// 数据迁移任务ID
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// DeleteMigrateJob返回参数结构体
    public struct DeleteMigrateJobResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除数据迁移任务
    ///
    /// 本接口（DeleteMigrationJob）用于删除数据迁移任务。当通过DescribeMigrateJobs接口查询到任务的状态为：检验中（status=3）、运行中（status=7）、准备完成（status=8）、撤销中（status=11）或者完成中（status=12）时，不允许删除任务。
    @inlinable @discardableResult
    public func deleteMigrateJob(_ input: DeleteMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMigrateJobResponse> {
        self.client.execute(action: "DeleteMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除数据迁移任务
    ///
    /// 本接口（DeleteMigrationJob）用于删除数据迁移任务。当通过DescribeMigrateJobs接口查询到任务的状态为：检验中（status=3）、运行中（status=7）、准备完成（status=8）、撤销中（status=11）或者完成中（status=12）时，不允许删除任务。
    @inlinable @discardableResult
    public func deleteMigrateJob(_ input: DeleteMigrateJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMigrateJobResponse {
        try await self.client.execute(action: "DeleteMigrateJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除数据迁移任务
    ///
    /// 本接口（DeleteMigrationJob）用于删除数据迁移任务。当通过DescribeMigrateJobs接口查询到任务的状态为：检验中（status=3）、运行中（status=7）、准备完成（status=8）、撤销中（status=11）或者完成中（status=12）时，不允许删除任务。
    @inlinable @discardableResult
    public func deleteMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMigrateJobResponse> {
        self.deleteMigrateJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除数据迁移任务
    ///
    /// 本接口（DeleteMigrationJob）用于删除数据迁移任务。当通过DescribeMigrateJobs接口查询到任务的状态为：检验中（status=3）、运行中（status=7）、准备完成（status=8）、撤销中（status=11）或者完成中（status=12）时，不允许删除任务。
    @inlinable @discardableResult
    public func deleteMigrateJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMigrateJobResponse {
        try await self.deleteMigrateJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
