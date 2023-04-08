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

import TecoCore

extension Ess {
    /// CreatePrepareFlow请求参数结构体
    public struct CreatePrepareFlowRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 资源Id，通过多文件上传（UploadFiles）接口获得
        public let resourceId: String

        /// 合同名称
        public let flowName: String

        /// 是否顺序签署(true:无序签,false:顺序签)
        public let unordered: Bool?

        /// 签署流程的签署截止时间。
        /// 值为unix时间戳,精确到秒,不传默认为当前时间一年后
        public let deadline: Int64?

        /// 用户自定义合同类型
        public let userFlowTypeId: String?

        /// 签署流程参与者信息，最大限制50方
        public let approvers: [FlowCreateApprover]?

        /// 打开智能添加填写区(默认开启，打开:"OPEN" 关闭："CLOSE")
        public let intelligentStatus: String?

        public init(operator: UserInfo, resourceId: String, flowName: String, unordered: Bool? = nil, deadline: Int64? = nil, userFlowTypeId: String? = nil, approvers: [FlowCreateApprover]? = nil, intelligentStatus: String? = nil) {
            self.operator = `operator`
            self.resourceId = resourceId
            self.flowName = flowName
            self.unordered = unordered
            self.deadline = deadline
            self.userFlowTypeId = userFlowTypeId
            self.approvers = approvers
            self.intelligentStatus = intelligentStatus
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case resourceId = "ResourceId"
            case flowName = "FlowName"
            case unordered = "Unordered"
            case deadline = "Deadline"
            case userFlowTypeId = "UserFlowTypeId"
            case approvers = "Approvers"
            case intelligentStatus = "IntelligentStatus"
        }
    }

    /// CreatePrepareFlow返回参数结构体
    public struct CreatePrepareFlowResponse: TCResponseModel {
        /// 快速发起预览链接
        public let url: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case requestId = "RequestId"
        }
    }

    /// 创建快速发起流程
    ///
    /// 创建快速发起流程
    /// 适用场景：用户通过API 合同文件及签署信息，并可通过我们返回的URL在页面完成签署控件等信息的编辑与确认，快速发起合同.
    /// 注：该接口文件的resourceId 是通过上传文件之后获取的。
    @inlinable
    public func createPrepareFlow(_ input: CreatePrepareFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrepareFlowResponse> {
        self.client.execute(action: "CreatePrepareFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建快速发起流程
    ///
    /// 创建快速发起流程
    /// 适用场景：用户通过API 合同文件及签署信息，并可通过我们返回的URL在页面完成签署控件等信息的编辑与确认，快速发起合同.
    /// 注：该接口文件的resourceId 是通过上传文件之后获取的。
    @inlinable
    public func createPrepareFlow(_ input: CreatePrepareFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrepareFlowResponse {
        try await self.client.execute(action: "CreatePrepareFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建快速发起流程
    ///
    /// 创建快速发起流程
    /// 适用场景：用户通过API 合同文件及签署信息，并可通过我们返回的URL在页面完成签署控件等信息的编辑与确认，快速发起合同.
    /// 注：该接口文件的resourceId 是通过上传文件之后获取的。
    @inlinable
    public func createPrepareFlow(operator: UserInfo, resourceId: String, flowName: String, unordered: Bool? = nil, deadline: Int64? = nil, userFlowTypeId: String? = nil, approvers: [FlowCreateApprover]? = nil, intelligentStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrepareFlowResponse> {
        self.createPrepareFlow(.init(operator: `operator`, resourceId: resourceId, flowName: flowName, unordered: unordered, deadline: deadline, userFlowTypeId: userFlowTypeId, approvers: approvers, intelligentStatus: intelligentStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 创建快速发起流程
    ///
    /// 创建快速发起流程
    /// 适用场景：用户通过API 合同文件及签署信息，并可通过我们返回的URL在页面完成签署控件等信息的编辑与确认，快速发起合同.
    /// 注：该接口文件的resourceId 是通过上传文件之后获取的。
    @inlinable
    public func createPrepareFlow(operator: UserInfo, resourceId: String, flowName: String, unordered: Bool? = nil, deadline: Int64? = nil, userFlowTypeId: String? = nil, approvers: [FlowCreateApprover]? = nil, intelligentStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrepareFlowResponse {
        try await self.createPrepareFlow(.init(operator: `operator`, resourceId: resourceId, flowName: flowName, unordered: unordered, deadline: deadline, userFlowTypeId: userFlowTypeId, approvers: approvers, intelligentStatus: intelligentStatus), region: region, logger: logger, on: eventLoop)
    }
}
