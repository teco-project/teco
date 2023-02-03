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

extension Essbasic {
    /// ChannelVerifyPdf请求参数结构体
    public struct ChannelVerifyPdfRequest: TCRequestModel {
        /// 合同Id，流程Id
        public let flowId: String

        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent?

        /// 操作者的信息
        public let `operator`: UserInfo?

        public init(flowId: String, agent: Agent? = nil, operator: UserInfo? = nil) {
            self.flowId = flowId
            self.agent = agent
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case agent = "Agent"
            case `operator` = "Operator"
        }
    }

    /// ChannelVerifyPdf返回参数结构体
    public struct ChannelVerifyPdfResponse: TCResponseModel {
        /// 验签结果，1-文件未被篡改，全部签名在腾讯电子签完成； 2-文件未被篡改，部分签名在腾讯电子签完成；3-文件被篡改；4-异常：文件内没有签名域；5-异常：文件签名格式错误
        public let verifyResult: Int64

        /// 验签结果详情,内部状态1-验签成功，在电子签签署；2-验签成功，在其他平台签署；3-验签失败；4-pdf文件没有签名域
        /// ；5-文件签名格式错误
        public let pdfVerifyResults: [PdfVerifyResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case verifyResult = "VerifyResult"
            case pdfVerifyResults = "PdfVerifyResults"
            case requestId = "RequestId"
        }
    }

    /// 合同文件验签
    @inlinable
    public func channelVerifyPdf(_ input: ChannelVerifyPdfRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelVerifyPdfResponse> {
        self.client.execute(action: "ChannelVerifyPdf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合同文件验签
    @inlinable
    public func channelVerifyPdf(_ input: ChannelVerifyPdfRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelVerifyPdfResponse {
        try await self.client.execute(action: "ChannelVerifyPdf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 合同文件验签
    @inlinable
    public func channelVerifyPdf(flowId: String, agent: Agent? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelVerifyPdfResponse> {
        let input = ChannelVerifyPdfRequest(flowId: flowId, agent: agent, operator: `operator`)
        return self.client.execute(action: "ChannelVerifyPdf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 合同文件验签
    @inlinable
    public func channelVerifyPdf(flowId: String, agent: Agent? = nil, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelVerifyPdfResponse {
        let input = ChannelVerifyPdfRequest(flowId: flowId, agent: agent, operator: `operator`)
        return try await self.client.execute(action: "ChannelVerifyPdf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
