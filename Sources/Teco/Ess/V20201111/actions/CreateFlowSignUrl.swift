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

extension Ess {
    /// CreateFlowSignUrl请求参数结构体
    public struct CreateFlowSignUrlRequest: TCRequestModel {
        /// 流程编号
        public let flowId: String

        /// 流程签署人，其中ApproverName，ApproverMobile和ApproverType必传，其他可不传，ApproverType目前只支持个人类型的签署人。还需注意签署人只能有手写签名和时间类型的签署控件，其他类型的填写控件和签署控件暂时都未支持。
        public let flowApproverInfos: [FlowCreateApprover]

        /// 机构信息，暂未开放
        public let organization: OrganizationInfo

        /// 用户信息，此结构体UserId必填
        public let `operator`: UserInfo?

        public init(flowId: String, flowApproverInfos: [FlowCreateApprover], organization: OrganizationInfo, operator: UserInfo? = nil) {
            self.flowId = flowId
            self.flowApproverInfos = flowApproverInfos
            self.organization = organization
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case flowApproverInfos = "FlowApproverInfos"
            case organization = "Organization"
            case `operator` = "Operator"
        }
    }

    /// CreateFlowSignUrl返回参数结构体
    public struct CreateFlowSignUrlResponse: TCResponseModel {
        /// 签署人签署链接信息
        public let flowApproverUrlInfos: [FlowApproverUrlInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowApproverUrlInfos = "FlowApproverUrlInfos"
            case requestId = "RequestId"
        }
    }

    /// 创建签署链接
    ///
    /// 创建签署链接，需要联系运营人员开白后才可使用
    @inlinable
    public func createFlowSignUrl(_ input: CreateFlowSignUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowSignUrlResponse> {
        self.client.execute(action: "CreateFlowSignUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建签署链接
    ///
    /// 创建签署链接，需要联系运营人员开白后才可使用
    @inlinable
    public func createFlowSignUrl(_ input: CreateFlowSignUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowSignUrlResponse {
        try await self.client.execute(action: "CreateFlowSignUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建签署链接
    ///
    /// 创建签署链接，需要联系运营人员开白后才可使用
    @inlinable
    public func createFlowSignUrl(flowId: String, flowApproverInfos: [FlowCreateApprover], organization: OrganizationInfo, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowSignUrlResponse> {
        self.createFlowSignUrl(CreateFlowSignUrlRequest(flowId: flowId, flowApproverInfos: flowApproverInfos, organization: organization, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 创建签署链接
    ///
    /// 创建签署链接，需要联系运营人员开白后才可使用
    @inlinable
    public func createFlowSignUrl(flowId: String, flowApproverInfos: [FlowCreateApprover], organization: OrganizationInfo, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowSignUrlResponse {
        try await self.createFlowSignUrl(CreateFlowSignUrlRequest(flowId: flowId, flowApproverInfos: flowApproverInfos, organization: organization, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}