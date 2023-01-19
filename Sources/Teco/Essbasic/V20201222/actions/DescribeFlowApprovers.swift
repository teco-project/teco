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

extension Essbasic {
    /// DescribeFlowApprovers请求参数结构体
    public struct DescribeFlowApproversRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 需要查询的流程ID
        public let flowId: String

        /// 需要查询的用户ID，为空则默认查询所有用户信息
        public let userId: String?

        /// 需要查询的签署ID，为空则不按签署ID过滤
        public let signId: String?

        public init(caller: Caller, flowId: String, userId: String? = nil, signId: String? = nil) {
            self.caller = caller
            self.flowId = flowId
            self.userId = userId
            self.signId = signId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case flowId = "FlowId"
            case userId = "UserId"
            case signId = "SignId"
        }
    }

    /// DescribeFlowApprovers返回参数结构体
    public struct DescribeFlowApproversResponse: TCResponseModel {
        /// 流程编号
        public let flowId: String

        /// 流程参与者信息
        public let approvers: [FlowApproverInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case approvers = "Approvers"
            case requestId = "RequestId"
        }
    }

    /// 查询流程参与者信息
    ///
    /// 第三方应用可通过此接口（DescribeFlowApprovers）查询流程参与者信息。
    @inlinable
    public func describeFlowApprovers(_ input: DescribeFlowApproversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowApproversResponse> {
        self.client.execute(action: "DescribeFlowApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询流程参与者信息
    ///
    /// 第三方应用可通过此接口（DescribeFlowApprovers）查询流程参与者信息。
    @inlinable
    public func describeFlowApprovers(_ input: DescribeFlowApproversRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowApproversResponse {
        try await self.client.execute(action: "DescribeFlowApprovers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询流程参与者信息
    ///
    /// 第三方应用可通过此接口（DescribeFlowApprovers）查询流程参与者信息。
    @inlinable
    public func describeFlowApprovers(caller: Caller, flowId: String, userId: String? = nil, signId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowApproversResponse> {
        self.describeFlowApprovers(DescribeFlowApproversRequest(caller: caller, flowId: flowId, userId: userId, signId: signId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询流程参与者信息
    ///
    /// 第三方应用可通过此接口（DescribeFlowApprovers）查询流程参与者信息。
    @inlinable
    public func describeFlowApprovers(caller: Caller, flowId: String, userId: String? = nil, signId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowApproversResponse {
        try await self.describeFlowApprovers(DescribeFlowApproversRequest(caller: caller, flowId: flowId, userId: userId, signId: signId), region: region, logger: logger, on: eventLoop)
    }
}
