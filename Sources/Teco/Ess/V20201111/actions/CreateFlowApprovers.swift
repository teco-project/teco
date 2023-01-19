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

extension Ess {
    /// CreateFlowApprovers请求参数结构体
    public struct CreateFlowApproversRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 签署流程编号
        public let flowId: String

        /// 补充签署人信息
        public let approvers: [FillApproverInfo]

        public init(operator: UserInfo, flowId: String, approvers: [FillApproverInfo]) {
            self.`operator` = `operator`
            self.flowId = flowId
            self.approvers = approvers
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowId = "FlowId"
            case approvers = "Approvers"
        }
    }

    /// CreateFlowApprovers返回参数结构体
    public struct CreateFlowApproversResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 补充签署流程本企业签署人信息
    ///
    /// 补充签署流程本企业签署人信息
    /// 适用场景：在通过模板或者文件发起合同时，若未指定本企业签署人信息，则流程发起后，可以调用此接口补充签署人。
    /// 同一签署人可以补充多个员工作为候选签署人,最终签署人取决于谁先领取合同完成签署。
    /// 注：目前暂时只支持补充来源于企业微信的员工作为候选签署人
    @inlinable
    public func createFlowApprovers(_ input: CreateFlowApproversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowApproversResponse> {
        self.client.execute(action: "CreateFlowApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 补充签署流程本企业签署人信息
    ///
    /// 补充签署流程本企业签署人信息
    /// 适用场景：在通过模板或者文件发起合同时，若未指定本企业签署人信息，则流程发起后，可以调用此接口补充签署人。
    /// 同一签署人可以补充多个员工作为候选签署人,最终签署人取决于谁先领取合同完成签署。
    /// 注：目前暂时只支持补充来源于企业微信的员工作为候选签署人
    @inlinable
    public func createFlowApprovers(_ input: CreateFlowApproversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowApproversResponse {
        try await self.client.execute(action: "CreateFlowApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 补充签署流程本企业签署人信息
    ///
    /// 补充签署流程本企业签署人信息
    /// 适用场景：在通过模板或者文件发起合同时，若未指定本企业签署人信息，则流程发起后，可以调用此接口补充签署人。
    /// 同一签署人可以补充多个员工作为候选签署人,最终签署人取决于谁先领取合同完成签署。
    /// 注：目前暂时只支持补充来源于企业微信的员工作为候选签署人
    @inlinable
    public func createFlowApprovers(operator: UserInfo, flowId: String, approvers: [FillApproverInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowApproversResponse> {
        self.createFlowApprovers(CreateFlowApproversRequest(operator: `operator`, flowId: flowId, approvers: approvers), region: region, logger: logger, on: eventLoop)
    }

    /// 补充签署流程本企业签署人信息
    ///
    /// 补充签署流程本企业签署人信息
    /// 适用场景：在通过模板或者文件发起合同时，若未指定本企业签署人信息，则流程发起后，可以调用此接口补充签署人。
    /// 同一签署人可以补充多个员工作为候选签署人,最终签署人取决于谁先领取合同完成签署。
    /// 注：目前暂时只支持补充来源于企业微信的员工作为候选签署人
    @inlinable
    public func createFlowApprovers(operator: UserInfo, flowId: String, approvers: [FillApproverInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowApproversResponse {
        try await self.createFlowApprovers(CreateFlowApproversRequest(operator: `operator`, flowId: flowId, approvers: approvers), region: region, logger: logger, on: eventLoop)
    }
}
