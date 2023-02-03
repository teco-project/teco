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

extension Tsf {
    /// CreateTaskFlow请求参数结构体
    public struct CreateTaskFlowRequest: TCRequestModel {
        /// 工作流名称
        public let flowName: String

        /// 触发方式
        public let triggerRule: TaskRule

        /// 工作流任务节点列表
        public let flowEdges: [TaskFlowEdge]

        /// 工作流执行超时时间
        public let timeOut: UInt64

        /// 无
        public let programIdList: [String]?

        public init(flowName: String, triggerRule: TaskRule, flowEdges: [TaskFlowEdge], timeOut: UInt64, programIdList: [String]? = nil) {
            self.flowName = flowName
            self.triggerRule = triggerRule
            self.flowEdges = flowEdges
            self.timeOut = timeOut
            self.programIdList = programIdList
        }

        enum CodingKeys: String, CodingKey {
            case flowName = "FlowName"
            case triggerRule = "TriggerRule"
            case flowEdges = "FlowEdges"
            case timeOut = "TimeOut"
            case programIdList = "ProgramIdList"
        }
    }

    /// CreateTaskFlow返回参数结构体
    public struct CreateTaskFlowResponse: TCResponseModel {
        /// 工作流 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建工作流
    @inlinable
    public func createTaskFlow(_ input: CreateTaskFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskFlowResponse> {
        self.client.execute(action: "CreateTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建工作流
    @inlinable
    public func createTaskFlow(_ input: CreateTaskFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskFlowResponse {
        try await self.client.execute(action: "CreateTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建工作流
    @inlinable
    public func createTaskFlow(flowName: String, triggerRule: TaskRule, flowEdges: [TaskFlowEdge], timeOut: UInt64, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskFlowResponse> {
        let input = CreateTaskFlowRequest(flowName: flowName, triggerRule: triggerRule, flowEdges: flowEdges, timeOut: timeOut, programIdList: programIdList)
        return self.client.execute(action: "CreateTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建工作流
    @inlinable
    public func createTaskFlow(flowName: String, triggerRule: TaskRule, flowEdges: [TaskFlowEdge], timeOut: UInt64, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskFlowResponse {
        let input = CreateTaskFlowRequest(flowName: flowName, triggerRule: triggerRule, flowEdges: flowEdges, timeOut: timeOut, programIdList: programIdList)
        return try await self.client.execute(action: "CreateTaskFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
