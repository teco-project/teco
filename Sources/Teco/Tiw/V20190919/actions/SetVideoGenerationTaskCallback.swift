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
    /// SetVideoGenerationTaskCallback请求参数结构体
    public struct SetVideoGenerationTaskCallbackRequest: TCRequestModel {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 课后录制任务结果回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持 http或https协议，即回调地址以http://或https://开头
        public let callback: String

        public init(sdkAppId: Int64, callback: String) {
            self.sdkAppId = sdkAppId
            self.callback = callback
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case callback = "Callback"
        }
    }

    /// SetVideoGenerationTaskCallback返回参数结构体
    public struct SetVideoGenerationTaskCallbackResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置录制视频生成回调地址
    @inlinable @discardableResult
    public func setVideoGenerationTaskCallback(_ input: SetVideoGenerationTaskCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetVideoGenerationTaskCallbackResponse> {
        self.client.execute(action: "SetVideoGenerationTaskCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置录制视频生成回调地址
    @inlinable @discardableResult
    public func setVideoGenerationTaskCallback(_ input: SetVideoGenerationTaskCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetVideoGenerationTaskCallbackResponse {
        try await self.client.execute(action: "SetVideoGenerationTaskCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置录制视频生成回调地址
    @inlinable @discardableResult
    public func setVideoGenerationTaskCallback(sdkAppId: Int64, callback: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetVideoGenerationTaskCallbackResponse> {
        self.setVideoGenerationTaskCallback(.init(sdkAppId: sdkAppId, callback: callback), region: region, logger: logger, on: eventLoop)
    }

    /// 设置录制视频生成回调地址
    @inlinable @discardableResult
    public func setVideoGenerationTaskCallback(sdkAppId: Int64, callback: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetVideoGenerationTaskCallbackResponse {
        try await self.setVideoGenerationTaskCallback(.init(sdkAppId: sdkAppId, callback: callback), region: region, logger: logger, on: eventLoop)
    }
}
