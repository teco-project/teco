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

extension Cii {
    /// CreateStructureTask请求参数结构体
    public struct CreateStructureTaskRequest: TCRequestModel {
        /// 保单号
        public let policyId: String

        /// 客户号
        public let customerId: String

        /// 客户姓名
        public let customerName: String

        /// 文件类型，目前只支持体检报告类型，对应的值为：HealthReport
        public let taskType: String

        /// 报告年份
        public let year: String

        /// 报告文件上传的地址列表，需按顺序排列。如果使用ImageList参数，置为空数组即可
        public let fileList: [String]

        /// 险种，如果是体检报告类型，此参数是必填，类型说明如下：
        /// CriticalDiseaseInsurance:重疾险
        /// LifeInsurance：寿险
        /// AccidentInsurance：意外险
        public let insuranceTypes: [String]?

        /// 报告上传的图片内容数组，图片内容采用base64编码，需按顺序排列
        public let imageList: [String]?

        public init(policyId: String, customerId: String, customerName: String, taskType: String, year: String, fileList: [String], insuranceTypes: [String]? = nil, imageList: [String]? = nil) {
            self.policyId = policyId
            self.customerId = customerId
            self.customerName = customerName
            self.taskType = taskType
            self.year = year
            self.fileList = fileList
            self.insuranceTypes = insuranceTypes
            self.imageList = imageList
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case customerId = "CustomerId"
            case customerName = "CustomerName"
            case taskType = "TaskType"
            case year = "Year"
            case fileList = "FileList"
            case insuranceTypes = "InsuranceTypes"
            case imageList = "ImageList"
        }
    }

    /// CreateStructureTask返回参数结构体
    public struct CreateStructureTaskResponse: TCResponseModel {
        /// 本次结构化任务的ID
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 新建结构化任务
    ///
    /// 基于提供的客户及保单信息，启动结构化识别任务。
    @inlinable
    public func createStructureTask(_ input: CreateStructureTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStructureTaskResponse> {
        self.client.execute(action: "CreateStructureTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建结构化任务
    ///
    /// 基于提供的客户及保单信息，启动结构化识别任务。
    @inlinable
    public func createStructureTask(_ input: CreateStructureTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStructureTaskResponse {
        try await self.client.execute(action: "CreateStructureTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建结构化任务
    ///
    /// 基于提供的客户及保单信息，启动结构化识别任务。
    @inlinable
    public func createStructureTask(policyId: String, customerId: String, customerName: String, taskType: String, year: String, fileList: [String], insuranceTypes: [String]? = nil, imageList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateStructureTaskResponse> {
        let input = CreateStructureTaskRequest(policyId: policyId, customerId: customerId, customerName: customerName, taskType: taskType, year: year, fileList: fileList, insuranceTypes: insuranceTypes, imageList: imageList)
        return self.client.execute(action: "CreateStructureTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建结构化任务
    ///
    /// 基于提供的客户及保单信息，启动结构化识别任务。
    @inlinable
    public func createStructureTask(policyId: String, customerId: String, customerName: String, taskType: String, year: String, fileList: [String], insuranceTypes: [String]? = nil, imageList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStructureTaskResponse {
        let input = CreateStructureTaskRequest(policyId: policyId, customerId: customerId, customerName: customerName, taskType: taskType, year: year, fileList: fileList, insuranceTypes: insuranceTypes, imageList: imageList)
        return try await self.client.execute(action: "CreateStructureTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
