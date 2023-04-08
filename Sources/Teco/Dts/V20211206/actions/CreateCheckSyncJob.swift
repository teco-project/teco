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
    /// CreateCheckSyncJob请求参数结构体
    public struct CreateCheckSyncJobRequest: TCRequestModel {
        /// 同步任务id
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// CreateCheckSyncJob返回参数结构体
    public struct CreateCheckSyncJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 校验同步任务
    ///
    /// 校验同步任务，检查必要参数和周边配置。
    @inlinable @discardableResult
    public func createCheckSyncJob(_ input: CreateCheckSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCheckSyncJobResponse> {
        self.client.execute(action: "CreateCheckSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 校验同步任务
    ///
    /// 校验同步任务，检查必要参数和周边配置。
    @inlinable @discardableResult
    public func createCheckSyncJob(_ input: CreateCheckSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCheckSyncJobResponse {
        try await self.client.execute(action: "CreateCheckSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 校验同步任务
    ///
    /// 校验同步任务，检查必要参数和周边配置。
    @inlinable @discardableResult
    public func createCheckSyncJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCheckSyncJobResponse> {
        self.createCheckSyncJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 校验同步任务
    ///
    /// 校验同步任务，检查必要参数和周边配置。
    @inlinable @discardableResult
    public func createCheckSyncJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCheckSyncJobResponse {
        try await self.createCheckSyncJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
