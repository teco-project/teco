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

extension Wedata {
    /// MakeUpWorkflowNew请求参数结构体
    public struct MakeUpWorkflowNewRequest: TCRequest {
        /// 工作流id
        public let workFlowId: String

        /// 补录开始时间
        public let startTime: String

        /// 补录结束时间
        public let endTime: String

        /// 项目id
        public let projectId: String

        public init(workFlowId: String, startTime: String, endTime: String, projectId: String) {
            self.workFlowId = workFlowId
            self.startTime = startTime
            self.endTime = endTime
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case workFlowId = "WorkFlowId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case projectId = "ProjectId"
        }
    }

    /// MakeUpWorkflowNew返回参数结构体
    public struct MakeUpWorkflowNewResponse: TCResponse {
        /// 返回补录成功或失败的任务数
        public let data: BatchOperateResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 工作流任务补录【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 工作流下所有任务的补录
    @inlinable
    public func makeUpWorkflowNew(_ input: MakeUpWorkflowNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MakeUpWorkflowNewResponse> {
        self.client.execute(action: "MakeUpWorkflowNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 工作流任务补录【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 工作流下所有任务的补录
    @inlinable
    public func makeUpWorkflowNew(_ input: MakeUpWorkflowNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MakeUpWorkflowNewResponse {
        try await self.client.execute(action: "MakeUpWorkflowNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 工作流任务补录【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 工作流下所有任务的补录
    @inlinable
    public func makeUpWorkflowNew(workFlowId: String, startTime: String, endTime: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MakeUpWorkflowNewResponse> {
        self.makeUpWorkflowNew(.init(workFlowId: workFlowId, startTime: startTime, endTime: endTime, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 工作流任务补录【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 工作流下所有任务的补录
    @inlinable
    public func makeUpWorkflowNew(workFlowId: String, startTime: String, endTime: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MakeUpWorkflowNewResponse {
        try await self.makeUpWorkflowNew(.init(workFlowId: workFlowId, startTime: startTime, endTime: endTime, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
