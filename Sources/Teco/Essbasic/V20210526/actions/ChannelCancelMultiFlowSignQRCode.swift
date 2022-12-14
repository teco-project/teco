//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// ChannelCancelMultiFlowSignQRCode请求参数结构体
    public struct ChannelCancelMultiFlowSignQRCodeRequest: TCRequestModel {
        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填。
        public let agent: Agent

        /// 二维码id
        public let qrCodeId: String

        /// 用户信息
        public let `operator`: UserInfo?

        public init(agent: Agent, qrCodeId: String, operator: UserInfo? = nil) {
            self.agent = agent
            self.qrCodeId = qrCodeId
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case qrCodeId = "QrCodeId"
            case `operator` = "Operator"
        }
    }

    /// ChannelCancelMultiFlowSignQRCode返回参数结构体
    public struct ChannelCancelMultiFlowSignQRCodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消一码多扫二维码
    ///
    /// 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。
    @inlinable
    public func channelCancelMultiFlowSignQRCode(_ input: ChannelCancelMultiFlowSignQRCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ChannelCancelMultiFlowSignQRCodeResponse > {
        self.client.execute(action: "ChannelCancelMultiFlowSignQRCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消一码多扫二维码
    ///
    /// 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。
    @inlinable
    public func channelCancelMultiFlowSignQRCode(_ input: ChannelCancelMultiFlowSignQRCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCancelMultiFlowSignQRCodeResponse {
        try await self.client.execute(action: "ChannelCancelMultiFlowSignQRCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消一码多扫二维码
    ///
    /// 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。
    @inlinable
    public func channelCancelMultiFlowSignQRCode(agent: Agent, qrCodeId: String, operator: UserInfo? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ChannelCancelMultiFlowSignQRCodeResponse > {
        self.channelCancelMultiFlowSignQRCode(ChannelCancelMultiFlowSignQRCodeRequest(agent: agent, qrCodeId: qrCodeId, operator: `operator`), logger: logger, on: eventLoop)
    }

    /// 取消一码多扫二维码
    ///
    /// 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。
    @inlinable
    public func channelCancelMultiFlowSignQRCode(agent: Agent, qrCodeId: String, operator: UserInfo? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCancelMultiFlowSignQRCodeResponse {
        try await self.channelCancelMultiFlowSignQRCode(ChannelCancelMultiFlowSignQRCodeRequest(agent: agent, qrCodeId: qrCodeId, operator: `operator`), logger: logger, on: eventLoop)
    }
}
