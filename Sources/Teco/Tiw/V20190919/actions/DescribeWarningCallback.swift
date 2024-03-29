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

extension Tiw {
    /// DescribeWarningCallback请求参数结构体
    public struct DescribeWarningCallbackRequest: TCRequest {
        /// 应用的SdkAppId
        public let sdkAppId: Int64

        public init(sdkAppId: Int64) {
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
        }
    }

    /// DescribeWarningCallback返回参数结构体
    public struct DescribeWarningCallbackResponse: TCResponse {
        /// 告警事件回调地址，如果未设置回调地址，该字段为空字符串
        public let callback: String

        /// 告警回调鉴权密钥
        public let callbackKey: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case callback = "Callback"
            case callbackKey = "CallbackKey"
            case requestId = "RequestId"
        }
    }

    /// 查询告警回调地址
    ///
    /// 查询告警回调地址。此功能需要申请白名单使用。
    @inlinable
    public func describeWarningCallback(_ input: DescribeWarningCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWarningCallbackResponse> {
        self.client.execute(action: "DescribeWarningCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询告警回调地址
    ///
    /// 查询告警回调地址。此功能需要申请白名单使用。
    @inlinable
    public func describeWarningCallback(_ input: DescribeWarningCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWarningCallbackResponse {
        try await self.client.execute(action: "DescribeWarningCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询告警回调地址
    ///
    /// 查询告警回调地址。此功能需要申请白名单使用。
    @inlinable
    public func describeWarningCallback(sdkAppId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWarningCallbackResponse> {
        self.describeWarningCallback(.init(sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询告警回调地址
    ///
    /// 查询告警回调地址。此功能需要申请白名单使用。
    @inlinable
    public func describeWarningCallback(sdkAppId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWarningCallbackResponse {
        try await self.describeWarningCallback(.init(sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
