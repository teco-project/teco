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

extension Tione {
    /// StartNotebookInstance请求参数结构体
    public struct StartNotebookInstanceRequest: TCRequestModel {
        /// Notebook实例名称
        public let notebookInstanceName: String

        /// 自动停止，可取值Enabled/Disabled
        /// 取值为Disabled的时候StoppingCondition将被忽略
        /// 取值为Enabled的时候读取StoppingCondition作为自动停止的配置
        public let autoStopping: String?

        /// 自动停止配置，只在AutoStopping为Enabled的时候生效
        public let stoppingCondition: StoppingCondition?

        public init(notebookInstanceName: String, autoStopping: String? = nil, stoppingCondition: StoppingCondition? = nil) {
            self.notebookInstanceName = notebookInstanceName
            self.autoStopping = autoStopping
            self.stoppingCondition = stoppingCondition
        }

        enum CodingKeys: String, CodingKey {
            case notebookInstanceName = "NotebookInstanceName"
            case autoStopping = "AutoStopping"
            case stoppingCondition = "StoppingCondition"
        }
    }

    /// StartNotebookInstance返回参数结构体
    public struct StartNotebookInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启动Notebook实例
    @inlinable @discardableResult
    public func startNotebookInstance(_ input: StartNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartNotebookInstanceResponse> {
        self.client.execute(action: "StartNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动Notebook实例
    @inlinable @discardableResult
    public func startNotebookInstance(_ input: StartNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartNotebookInstanceResponse {
        try await self.client.execute(action: "StartNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动Notebook实例
    @inlinable @discardableResult
    public func startNotebookInstance(notebookInstanceName: String, autoStopping: String? = nil, stoppingCondition: StoppingCondition? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartNotebookInstanceResponse> {
        self.startNotebookInstance(.init(notebookInstanceName: notebookInstanceName, autoStopping: autoStopping, stoppingCondition: stoppingCondition), region: region, logger: logger, on: eventLoop)
    }

    /// 启动Notebook实例
    @inlinable @discardableResult
    public func startNotebookInstance(notebookInstanceName: String, autoStopping: String? = nil, stoppingCondition: StoppingCondition? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartNotebookInstanceResponse {
        try await self.startNotebookInstance(.init(notebookInstanceName: notebookInstanceName, autoStopping: autoStopping, stoppingCondition: stoppingCondition), region: region, logger: logger, on: eventLoop)
    }
}
