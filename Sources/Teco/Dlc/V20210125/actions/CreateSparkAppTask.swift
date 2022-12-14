//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Dlc {
    /// CreateSparkAppTask请求参数结构体
    public struct CreateSparkAppTaskRequest: TCRequestModel {
        /// spark作业名
        public let jobName: String

        /// spark作业的命令行参数，以空格分隔；一般用于周期性调用使用
        public let cmdArgs: String?

        public init(jobName: String, cmdArgs: String? = nil) {
            self.jobName = jobName
            self.cmdArgs = cmdArgs
        }

        enum CodingKeys: String, CodingKey {
            case jobName = "JobName"
            case cmdArgs = "CmdArgs"
        }
    }

    /// CreateSparkAppTask返回参数结构体
    public struct CreateSparkAppTaskResponse: TCResponseModel {
        /// 批Id
        public let batchId: String

        /// 任务Id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case batchId = "BatchId"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建spark任务
    @inlinable
    public func createSparkAppTask(_ input: CreateSparkAppTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSparkAppTaskResponse > {
        self.client.execute(action: "CreateSparkAppTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建spark任务
    @inlinable
    public func createSparkAppTask(_ input: CreateSparkAppTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSparkAppTaskResponse {
        try await self.client.execute(action: "CreateSparkAppTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建spark任务
    @inlinable
    public func createSparkAppTask(jobName: String, cmdArgs: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSparkAppTaskResponse > {
        self.createSparkAppTask(CreateSparkAppTaskRequest(jobName: jobName, cmdArgs: cmdArgs), logger: logger, on: eventLoop)
    }

    /// 创建spark任务
    @inlinable
    public func createSparkAppTask(jobName: String, cmdArgs: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSparkAppTaskResponse {
        try await self.createSparkAppTask(CreateSparkAppTaskRequest(jobName: jobName, cmdArgs: cmdArgs), logger: logger, on: eventLoop)
    }
}
