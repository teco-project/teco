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

extension Essbasic {
    /// ChannelVerifyPdf请求参数结构体
    public struct ChannelVerifyPdfRequest: TCRequest {
        /// 流程ID
        public let flowId: String

        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填。
        public let agent: Agent?

        /// 暂未开放
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(flowId: String, agent: Agent? = nil) {
            self.flowId = flowId
            self.agent = agent
        }

        @available(*, deprecated, renamed: "init(flowId:agent:)", message: "'operator' is deprecated in 'ChannelVerifyPdfRequest'. Setting this parameter has no effect.")
        public init(flowId: String, agent: Agent? = nil, operator: UserInfo? = nil) {
            self.flowId = flowId
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case agent = "Agent"
            case `operator` = "Operator"
        }
    }

    /// ChannelVerifyPdf返回参数结构体
    public struct ChannelVerifyPdfResponse: TCResponse {
        /// 验签结果，1-文件未被篡改，全部签名在腾讯电子签完成； 2-文件未被篡改，部分签名在腾讯电子签完成；3-文件被篡改；4-异常：文件内没有签名域；5-异常：文件签名格式错误
        public let verifyResult: Int64

        /// 验签结果详情,内部状态1-验签成功，在电子签签署；2-验签成功，在其他平台签署；3-验签失败；4-pdf文件没有签名域；5-文件签名格式错误
        public let pdfVerifyResults: [PdfVerifyResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case verifyResult = "VerifyResult"
            case pdfVerifyResults = "PdfVerifyResults"
            case requestId = "RequestId"
        }
    }

    /// 流程文件验签
    ///
    /// 对流程的合同文件进行验证，判断文件是否合法。
    @inlinable
    public func channelVerifyPdf(_ input: ChannelVerifyPdfRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelVerifyPdfResponse> {
        self.client.execute(action: "ChannelVerifyPdf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 流程文件验签
    ///
    /// 对流程的合同文件进行验证，判断文件是否合法。
    @inlinable
    public func channelVerifyPdf(_ input: ChannelVerifyPdfRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelVerifyPdfResponse {
        try await self.client.execute(action: "ChannelVerifyPdf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 流程文件验签
    ///
    /// 对流程的合同文件进行验证，判断文件是否合法。
    @inlinable
    public func channelVerifyPdf(flowId: String, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelVerifyPdfResponse> {
        self.channelVerifyPdf(.init(flowId: flowId, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 流程文件验签
    ///
    /// 对流程的合同文件进行验证，判断文件是否合法。
    @available(*, deprecated, renamed: "channelVerifyPdf(flowId:agent:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func channelVerifyPdf(flowId: String, agent: Agent? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelVerifyPdfResponse> {
        self.channelVerifyPdf(.init(flowId: flowId, agent: agent, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 流程文件验签
    ///
    /// 对流程的合同文件进行验证，判断文件是否合法。
    @inlinable
    public func channelVerifyPdf(flowId: String, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelVerifyPdfResponse {
        try await self.channelVerifyPdf(.init(flowId: flowId, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 流程文件验签
    ///
    /// 对流程的合同文件进行验证，判断文件是否合法。
    @available(*, deprecated, renamed: "channelVerifyPdf(flowId:agent:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func channelVerifyPdf(flowId: String, agent: Agent? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelVerifyPdfResponse {
        try await self.channelVerifyPdf(.init(flowId: flowId, agent: agent, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
