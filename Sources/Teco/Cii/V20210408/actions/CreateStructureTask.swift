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

extension Cii {
    /// CreateStructureTask请求参数结构体
    public struct CreateStructureTaskRequest: TCRequestModel {
        /// 服务类型
        /// Structured 仅结构化
        /// Underwrite 结构化+核保
        public let serviceType: String

        /// 创建任务时可以上传多个报告，后台生成多个识别子任务，子任务的详细信息
        public let taskInfos: [CreateStructureTaskInfo]

        /// 保单号
        public let policyId: String?

        /// 核保触发方式
        /// Auto 自动
        /// Manual 手动
        public let triggerType: String?

        /// 险种，如果是体检报告类型，此参数是必填，类型说明如下：
        /// CriticalDiseaseInsurance:重疾险
        /// LifeInsurance：寿险
        /// AccidentInsurance：意外险
        public let insuranceTypes: [String]?

        /// 回调地址，接收Post请求传送结果
        public let callbackUrl: String?

        public init(serviceType: String, taskInfos: [CreateStructureTaskInfo], policyId: String? = nil, triggerType: String? = nil, insuranceTypes: [String]? = nil, callbackUrl: String? = nil) {
            self.serviceType = serviceType
            self.taskInfos = taskInfos
            self.policyId = policyId
            self.triggerType = triggerType
            self.insuranceTypes = insuranceTypes
            self.callbackUrl = callbackUrl
        }

        enum CodingKeys: String, CodingKey {
            case serviceType = "ServiceType"
            case taskInfos = "TaskInfos"
            case policyId = "PolicyId"
            case triggerType = "TriggerType"
            case insuranceTypes = "InsuranceTypes"
            case callbackUrl = "CallbackUrl"
        }
    }

    /// CreateStructureTask返回参数结构体
    public struct CreateStructureTaskResponse: TCResponseModel {
        /// 创建的主任务号，用于查询结果
        public let mainTaskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mainTaskId = "MainTaskId"
            case requestId = "RequestId"
        }
    }

    /// 新建结构化任务
    ///
    /// 本接口(CreateStructureTask)基于提供的客户及保单信息，创建并启动结构化识别任务。
    @inlinable
    public func createStructureTask(_ input: CreateStructureTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStructureTaskResponse> {
        self.client.execute(action: "CreateStructureTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建结构化任务
    ///
    /// 本接口(CreateStructureTask)基于提供的客户及保单信息，创建并启动结构化识别任务。
    @inlinable
    public func createStructureTask(_ input: CreateStructureTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStructureTaskResponse {
        try await self.client.execute(action: "CreateStructureTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建结构化任务
    ///
    /// 本接口(CreateStructureTask)基于提供的客户及保单信息，创建并启动结构化识别任务。
    @inlinable
    public func createStructureTask(serviceType: String, taskInfos: [CreateStructureTaskInfo], policyId: String? = nil, triggerType: String? = nil, insuranceTypes: [String]? = nil, callbackUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStructureTaskResponse> {
        self.createStructureTask(CreateStructureTaskRequest(serviceType: serviceType, taskInfos: taskInfos, policyId: policyId, triggerType: triggerType, insuranceTypes: insuranceTypes, callbackUrl: callbackUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 新建结构化任务
    ///
    /// 本接口(CreateStructureTask)基于提供的客户及保单信息，创建并启动结构化识别任务。
    @inlinable
    public func createStructureTask(serviceType: String, taskInfos: [CreateStructureTaskInfo], policyId: String? = nil, triggerType: String? = nil, insuranceTypes: [String]? = nil, callbackUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStructureTaskResponse {
        try await self.createStructureTask(CreateStructureTaskRequest(serviceType: serviceType, taskInfos: taskInfos, policyId: policyId, triggerType: triggerType, insuranceTypes: insuranceTypes, callbackUrl: callbackUrl), region: region, logger: logger, on: eventLoop)
    }
}
