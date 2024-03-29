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
    /// CreateModifyCheckSyncJob请求参数结构体
    public struct CreateModifyCheckSyncJobRequest: TCRequest {
        /// 同步任务id
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// CreateModifyCheckSyncJob返回参数结构体
    public struct CreateModifyCheckSyncJobResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建修改同步配置的校验任务
    ///
    /// 在修改同步任务的配置后、通过该接口校验当前任务是否支持修改对象操作
    @inlinable @discardableResult
    public func createModifyCheckSyncJob(_ input: CreateModifyCheckSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModifyCheckSyncJobResponse> {
        self.client.execute(action: "CreateModifyCheckSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建修改同步配置的校验任务
    ///
    /// 在修改同步任务的配置后、通过该接口校验当前任务是否支持修改对象操作
    @inlinable @discardableResult
    public func createModifyCheckSyncJob(_ input: CreateModifyCheckSyncJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModifyCheckSyncJobResponse {
        try await self.client.execute(action: "CreateModifyCheckSyncJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建修改同步配置的校验任务
    ///
    /// 在修改同步任务的配置后、通过该接口校验当前任务是否支持修改对象操作
    @inlinable @discardableResult
    public func createModifyCheckSyncJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateModifyCheckSyncJobResponse> {
        self.createModifyCheckSyncJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建修改同步配置的校验任务
    ///
    /// 在修改同步任务的配置后、通过该接口校验当前任务是否支持修改对象操作
    @inlinable @discardableResult
    public func createModifyCheckSyncJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModifyCheckSyncJobResponse {
        try await self.createModifyCheckSyncJob(.init(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
