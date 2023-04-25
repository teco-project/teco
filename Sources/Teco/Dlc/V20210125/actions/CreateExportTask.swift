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

extension Dlc {
    /// CreateExportTask请求参数结构体
    public struct CreateExportTaskRequest: TCRequestModel {
        /// 数据来源，lakefsStorage、taskResult
        public let inputType: String

        /// 导出任务输入配置
        public let inputConf: [KVPair]

        /// 导出任务输出配置
        public let outputConf: [KVPair]

        /// 目标数据源的类型，目前支持导出到cos
        public let outputType: String?

        public init(inputType: String, inputConf: [KVPair], outputConf: [KVPair], outputType: String? = nil) {
            self.inputType = inputType
            self.inputConf = inputConf
            self.outputConf = outputConf
            self.outputType = outputType
        }

        enum CodingKeys: String, CodingKey {
            case inputType = "InputType"
            case inputConf = "InputConf"
            case outputConf = "OutputConf"
            case outputType = "OutputType"
        }
    }

    /// CreateExportTask返回参数结构体
    public struct CreateExportTaskResponse: TCResponseModel {
        /// 任务id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建导出任务
    ///
    /// 该接口（CreateExportTask）用于创建导出任务
    @inlinable
    public func createExportTask(_ input: CreateExportTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExportTaskResponse> {
        self.client.execute(action: "CreateExportTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建导出任务
    ///
    /// 该接口（CreateExportTask）用于创建导出任务
    @inlinable
    public func createExportTask(_ input: CreateExportTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExportTaskResponse {
        try await self.client.execute(action: "CreateExportTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建导出任务
    ///
    /// 该接口（CreateExportTask）用于创建导出任务
    @inlinable
    public func createExportTask(inputType: String, inputConf: [KVPair], outputConf: [KVPair], outputType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateExportTaskResponse> {
        self.createExportTask(.init(inputType: inputType, inputConf: inputConf, outputConf: outputConf, outputType: outputType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建导出任务
    ///
    /// 该接口（CreateExportTask）用于创建导出任务
    @inlinable
    public func createExportTask(inputType: String, inputConf: [KVPair], outputConf: [KVPair], outputType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExportTaskResponse {
        try await self.createExportTask(.init(inputType: inputType, inputConf: inputConf, outputConf: outputConf, outputType: outputType), region: region, logger: logger, on: eventLoop)
    }
}
