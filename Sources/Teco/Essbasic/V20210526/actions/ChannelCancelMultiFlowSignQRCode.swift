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
    /// ChannelCancelMultiFlowSignQRCode请求参数结构体
    public struct ChannelCancelMultiFlowSignQRCodeRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId必填。
        public let agent: Agent

        /// 二维码id
        public let qrCodeId: String

        /// 暂未开放
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(agent: Agent, qrCodeId: String) {
            self.agent = agent
            self.qrCodeId = qrCodeId
        }

        @available(*, deprecated, renamed: "init(agent:qrCodeId:)", message: "'operator' is deprecated in 'ChannelCancelMultiFlowSignQRCodeRequest'. Setting this parameter has no effect.")
        public init(agent: Agent, qrCodeId: String, operator: UserInfo? = nil) {
            self.agent = agent
            self.qrCodeId = qrCodeId
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
    @inlinable @discardableResult
    public func channelCancelMultiFlowSignQRCode(_ input: ChannelCancelMultiFlowSignQRCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCancelMultiFlowSignQRCodeResponse> {
        self.client.execute(action: "ChannelCancelMultiFlowSignQRCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消一码多扫二维码
    ///
    /// 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。
    @inlinable @discardableResult
    public func channelCancelMultiFlowSignQRCode(_ input: ChannelCancelMultiFlowSignQRCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCancelMultiFlowSignQRCodeResponse {
        try await self.client.execute(action: "ChannelCancelMultiFlowSignQRCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消一码多扫二维码
    ///
    /// 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。
    @inlinable @discardableResult
    public func channelCancelMultiFlowSignQRCode(agent: Agent, qrCodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCancelMultiFlowSignQRCodeResponse> {
        self.channelCancelMultiFlowSignQRCode(.init(agent: agent, qrCodeId: qrCodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消一码多扫二维码
    ///
    /// 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。
    @available(*, deprecated, renamed: "channelCancelMultiFlowSignQRCode(agent:qrCodeId:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable @discardableResult
    public func channelCancelMultiFlowSignQRCode(agent: Agent, qrCodeId: String, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChannelCancelMultiFlowSignQRCodeResponse> {
        self.channelCancelMultiFlowSignQRCode(.init(agent: agent, qrCodeId: qrCodeId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 取消一码多扫二维码
    ///
    /// 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。
    @inlinable @discardableResult
    public func channelCancelMultiFlowSignQRCode(agent: Agent, qrCodeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCancelMultiFlowSignQRCodeResponse {
        try await self.channelCancelMultiFlowSignQRCode(.init(agent: agent, qrCodeId: qrCodeId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消一码多扫二维码
    ///
    /// 此接口（ChannelCancelMultiFlowSignQRCode）用于取消一码多扫二维码。该接口对传入的二维码ID，若还在有效期内，可以提前失效。
    @available(*, deprecated, renamed: "channelCancelMultiFlowSignQRCode(agent:qrCodeId:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable @discardableResult
    public func channelCancelMultiFlowSignQRCode(agent: Agent, qrCodeId: String, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChannelCancelMultiFlowSignQRCodeResponse {
        try await self.channelCancelMultiFlowSignQRCode(.init(agent: agent, qrCodeId: qrCodeId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
