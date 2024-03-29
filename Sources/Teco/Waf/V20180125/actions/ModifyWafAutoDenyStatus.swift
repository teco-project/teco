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

extension Waf {
    /// ModifyWafAutoDenyStatus请求参数结构体
    public struct ModifyWafAutoDenyStatusRequest: TCRequest {
        /// WAF 自动封禁配置项
        public let wafAutoDenyDetails: AutoDenyDetail

        public init(wafAutoDenyDetails: AutoDenyDetail) {
            self.wafAutoDenyDetails = wafAutoDenyDetails
        }

        enum CodingKeys: String, CodingKey {
            case wafAutoDenyDetails = "WafAutoDenyDetails"
        }
    }

    /// ModifyWafAutoDenyStatus返回参数结构体
    public struct ModifyWafAutoDenyStatusResponse: TCResponse {
        /// WAF 自动封禁配置项
        public let wafAutoDenyDetails: AutoDenyDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case wafAutoDenyDetails = "WafAutoDenyDetails"
            case requestId = "RequestId"
        }
    }

    /// 配置WAF自动封禁模块状态
    @inlinable
    public func modifyWafAutoDenyStatus(_ input: ModifyWafAutoDenyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWafAutoDenyStatusResponse> {
        self.client.execute(action: "ModifyWafAutoDenyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置WAF自动封禁模块状态
    @inlinable
    public func modifyWafAutoDenyStatus(_ input: ModifyWafAutoDenyStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWafAutoDenyStatusResponse {
        try await self.client.execute(action: "ModifyWafAutoDenyStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置WAF自动封禁模块状态
    @inlinable
    public func modifyWafAutoDenyStatus(wafAutoDenyDetails: AutoDenyDetail, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWafAutoDenyStatusResponse> {
        self.modifyWafAutoDenyStatus(.init(wafAutoDenyDetails: wafAutoDenyDetails), region: region, logger: logger, on: eventLoop)
    }

    /// 配置WAF自动封禁模块状态
    @inlinable
    public func modifyWafAutoDenyStatus(wafAutoDenyDetails: AutoDenyDetail, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWafAutoDenyStatusResponse {
        try await self.modifyWafAutoDenyStatus(.init(wafAutoDenyDetails: wafAutoDenyDetails), region: region, logger: logger, on: eventLoop)
    }
}
