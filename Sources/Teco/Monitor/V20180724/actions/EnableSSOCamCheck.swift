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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Monitor {
    /// EnableSSOCamCheck请求参数结构体
    public struct EnableSSOCamCheckRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        /// 是否开启 cam 鉴权，true为开启，false 为不开启
        public let enableSSOCamCheck: Bool

        public init(instanceId: String, enableSSOCamCheck: Bool) {
            self.instanceId = instanceId
            self.enableSSOCamCheck = enableSSOCamCheck
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case enableSSOCamCheck = "EnableSSOCamCheck"
        }
    }

    /// EnableSSOCamCheck返回参数结构体
    public struct EnableSSOCamCheckResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置SSO登录是否鉴权
    ///
    /// SSO单点登录时，设置是否cam鉴权
    @inlinable @discardableResult
    public func enableSSOCamCheck(_ input: EnableSSOCamCheckRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableSSOCamCheckResponse> {
        self.client.execute(action: "EnableSSOCamCheck", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置SSO登录是否鉴权
    ///
    /// SSO单点登录时，设置是否cam鉴权
    @inlinable @discardableResult
    public func enableSSOCamCheck(_ input: EnableSSOCamCheckRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableSSOCamCheckResponse {
        try await self.client.execute(action: "EnableSSOCamCheck", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置SSO登录是否鉴权
    ///
    /// SSO单点登录时，设置是否cam鉴权
    @inlinable @discardableResult
    public func enableSSOCamCheck(instanceId: String, enableSSOCamCheck: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableSSOCamCheckResponse> {
        self.enableSSOCamCheck(.init(instanceId: instanceId, enableSSOCamCheck: enableSSOCamCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 设置SSO登录是否鉴权
    ///
    /// SSO单点登录时，设置是否cam鉴权
    @inlinable @discardableResult
    public func enableSSOCamCheck(instanceId: String, enableSSOCamCheck: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableSSOCamCheckResponse {
        try await self.enableSSOCamCheck(.init(instanceId: instanceId, enableSSOCamCheck: enableSSOCamCheck), region: region, logger: logger, on: eventLoop)
    }
}
