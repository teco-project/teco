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
    /// DescribeWhiteboardPushCallback请求参数结构体
    public struct DescribeWhiteboardPushCallbackRequest: TCRequestModel {
        /// 应用的SdkAppId
        public let sdkAppId: Int64

        public init(sdkAppId: Int64) {
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
        }
    }

    /// DescribeWhiteboardPushCallback返回参数结构体
    public struct DescribeWhiteboardPushCallbackResponse: TCResponseModel {
        /// 白板推流事件回调地址，如果未设置回调地址，该字段为空字符串
        public let callback: String

        /// 白板推流回调鉴权密钥
        public let callbackKey: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case callback = "Callback"
            case callbackKey = "CallbackKey"
            case requestId = "RequestId"
        }
    }

    /// 查询白板推流回调地址
    @inlinable
    public func describeWhiteboardPushCallback(_ input: DescribeWhiteboardPushCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteboardPushCallbackResponse> {
        self.client.execute(action: "DescribeWhiteboardPushCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询白板推流回调地址
    @inlinable
    public func describeWhiteboardPushCallback(_ input: DescribeWhiteboardPushCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteboardPushCallbackResponse {
        try await self.client.execute(action: "DescribeWhiteboardPushCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询白板推流回调地址
    @inlinable
    public func describeWhiteboardPushCallback(sdkAppId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWhiteboardPushCallbackResponse> {
        self.describeWhiteboardPushCallback(.init(sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询白板推流回调地址
    @inlinable
    public func describeWhiteboardPushCallback(sdkAppId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteboardPushCallbackResponse {
        try await self.describeWhiteboardPushCallback(.init(sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
