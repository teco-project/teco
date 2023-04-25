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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dts {
    /// ModifyCompareTaskName请求参数结构体
    public struct ModifyCompareTaskNameRequest: TCRequestModel {
        /// 迁移任务 Id
        public let jobId: String

        /// 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        public let compareTaskId: String

        /// 一致性校验任务名称
        public let taskName: String

        public init(jobId: String, compareTaskId: String, taskName: String) {
            self.jobId = jobId
            self.compareTaskId = compareTaskId
            self.taskName = taskName
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case compareTaskId = "CompareTaskId"
            case taskName = "TaskName"
        }
    }

    /// ModifyCompareTaskName返回参数结构体
    public struct ModifyCompareTaskNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改一致性校验任务名称
    @inlinable @discardableResult
    public func modifyCompareTaskName(_ input: ModifyCompareTaskNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCompareTaskNameResponse> {
        self.client.execute(action: "ModifyCompareTaskName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改一致性校验任务名称
    @inlinable @discardableResult
    public func modifyCompareTaskName(_ input: ModifyCompareTaskNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCompareTaskNameResponse {
        try await self.client.execute(action: "ModifyCompareTaskName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改一致性校验任务名称
    @inlinable @discardableResult
    public func modifyCompareTaskName(jobId: String, compareTaskId: String, taskName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCompareTaskNameResponse> {
        self.modifyCompareTaskName(.init(jobId: jobId, compareTaskId: compareTaskId, taskName: taskName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改一致性校验任务名称
    @inlinable @discardableResult
    public func modifyCompareTaskName(jobId: String, compareTaskId: String, taskName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCompareTaskNameResponse {
        try await self.modifyCompareTaskName(.init(jobId: jobId, compareTaskId: compareTaskId, taskName: taskName), region: region, logger: logger, on: eventLoop)
    }
}
