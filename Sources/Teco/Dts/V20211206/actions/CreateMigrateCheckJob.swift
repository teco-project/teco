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
    /// CreateMigrateCheckJob请求参数结构体
    public struct CreateMigrateCheckJobRequest: TCRequestModel {
        /// 数据迁移任务ID
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// CreateMigrateCheckJob返回参数结构体
    public struct CreateMigrateCheckJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 校验迁移任务
    ///
    /// 校验迁移任务，
    /// 在开始迁移前, 必须调用本接口创建校验迁移任务, 且校验成功后才能开始迁移. 校验的结果可以通过DescribeMigrationCheckJob查看，
    /// 校验成功后,迁移任务若有修改, 则必须重新校验并通过后, 才能开始迁移
    @inlinable @discardableResult
    public func createMigrateCheckJob(_ input: CreateMigrateCheckJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMigrateCheckJobResponse> {
        self.client.execute(action: "CreateMigrateCheckJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 校验迁移任务
    ///
    /// 校验迁移任务，
    /// 在开始迁移前, 必须调用本接口创建校验迁移任务, 且校验成功后才能开始迁移. 校验的结果可以通过DescribeMigrationCheckJob查看，
    /// 校验成功后,迁移任务若有修改, 则必须重新校验并通过后, 才能开始迁移
    @inlinable @discardableResult
    public func createMigrateCheckJob(_ input: CreateMigrateCheckJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMigrateCheckJobResponse {
        try await self.client.execute(action: "CreateMigrateCheckJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 校验迁移任务
    ///
    /// 校验迁移任务，
    /// 在开始迁移前, 必须调用本接口创建校验迁移任务, 且校验成功后才能开始迁移. 校验的结果可以通过DescribeMigrationCheckJob查看，
    /// 校验成功后,迁移任务若有修改, 则必须重新校验并通过后, 才能开始迁移
    @inlinable @discardableResult
    public func createMigrateCheckJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMigrateCheckJobResponse> {
        self.createMigrateCheckJob(CreateMigrateCheckJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 校验迁移任务
    ///
    /// 校验迁移任务，
    /// 在开始迁移前, 必须调用本接口创建校验迁移任务, 且校验成功后才能开始迁移. 校验的结果可以通过DescribeMigrationCheckJob查看，
    /// 校验成功后,迁移任务若有修改, 则必须重新校验并通过后, 才能开始迁移
    @inlinable @discardableResult
    public func createMigrateCheckJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMigrateCheckJobResponse {
        try await self.createMigrateCheckJob(CreateMigrateCheckJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
