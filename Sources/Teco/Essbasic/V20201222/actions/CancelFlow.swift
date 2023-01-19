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
    /// CancelFlow请求参数结构体
    public struct CancelFlowRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 流程ID
        public let flowId: String

        /// 撤销原因
        public let cancelMessage: String?

        public init(caller: Caller, flowId: String, cancelMessage: String? = nil) {
            self.caller = caller
            self.flowId = flowId
            self.cancelMessage = cancelMessage
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case flowId = "FlowId"
            case cancelMessage = "CancelMessage"
        }
    }

    /// CancelFlow返回参数结构体
    public struct CancelFlowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 撤销流程
    ///
    /// 此接口（CancelFlow）用于撤销正在进行中的流程。
    /// 注：已归档流程不可完成撤销动作。
    @inlinable
    public func cancelFlow(_ input: CancelFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelFlowResponse> {
        self.client.execute(action: "CancelFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 撤销流程
    ///
    /// 此接口（CancelFlow）用于撤销正在进行中的流程。
    /// 注：已归档流程不可完成撤销动作。
    @inlinable
    public func cancelFlow(_ input: CancelFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelFlowResponse {
        try await self.client.execute(action: "CancelFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 撤销流程
    ///
    /// 此接口（CancelFlow）用于撤销正在进行中的流程。
    /// 注：已归档流程不可完成撤销动作。
    @inlinable
    public func cancelFlow(caller: Caller, flowId: String, cancelMessage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelFlowResponse> {
        self.cancelFlow(CancelFlowRequest(caller: caller, flowId: flowId, cancelMessage: cancelMessage), region: region, logger: logger, on: eventLoop)
    }

    /// 撤销流程
    ///
    /// 此接口（CancelFlow）用于撤销正在进行中的流程。
    /// 注：已归档流程不可完成撤销动作。
    @inlinable
    public func cancelFlow(caller: Caller, flowId: String, cancelMessage: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelFlowResponse {
        try await self.cancelFlow(CancelFlowRequest(caller: caller, flowId: flowId, cancelMessage: cancelMessage), region: region, logger: logger, on: eventLoop)
    }
}
