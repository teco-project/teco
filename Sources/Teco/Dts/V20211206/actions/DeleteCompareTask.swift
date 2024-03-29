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
    /// DeleteCompareTask请求参数结构体
    public struct DeleteCompareTaskRequest: TCRequest {
        /// 迁移任务 Id
        public let jobId: String

        /// 对比任务 ID，形如：dts-8yv4w2i1-cmp-37skmii9
        public let compareTaskId: String

        public init(jobId: String, compareTaskId: String) {
            self.jobId = jobId
            self.compareTaskId = compareTaskId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case compareTaskId = "CompareTaskId"
        }
    }

    /// DeleteCompareTask返回参数结构体
    public struct DeleteCompareTaskResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除一致性校验任务
    ///
    /// 删除一致性校验任务。当一致性校验任务状态为success、failed、canceled 时可以执行此操作。
    @inlinable @discardableResult
    public func deleteCompareTask(_ input: DeleteCompareTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCompareTaskResponse> {
        self.client.execute(action: "DeleteCompareTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除一致性校验任务
    ///
    /// 删除一致性校验任务。当一致性校验任务状态为success、failed、canceled 时可以执行此操作。
    @inlinable @discardableResult
    public func deleteCompareTask(_ input: DeleteCompareTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCompareTaskResponse {
        try await self.client.execute(action: "DeleteCompareTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除一致性校验任务
    ///
    /// 删除一致性校验任务。当一致性校验任务状态为success、failed、canceled 时可以执行此操作。
    @inlinable @discardableResult
    public func deleteCompareTask(jobId: String, compareTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCompareTaskResponse> {
        self.deleteCompareTask(.init(jobId: jobId, compareTaskId: compareTaskId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除一致性校验任务
    ///
    /// 删除一致性校验任务。当一致性校验任务状态为success、failed、canceled 时可以执行此操作。
    @inlinable @discardableResult
    public func deleteCompareTask(jobId: String, compareTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCompareTaskResponse {
        try await self.deleteCompareTask(.init(jobId: jobId, compareTaskId: compareTaskId), region: region, logger: logger, on: eventLoop)
    }
}
