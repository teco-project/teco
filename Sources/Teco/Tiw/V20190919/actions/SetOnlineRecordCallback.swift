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
    /// SetOnlineRecordCallback请求参数结构体
    public struct SetOnlineRecordCallbackRequest: TCRequest {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 实时录制任务结果回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持 http或https协议，即回调地址以http://或https://开头。回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40258
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

    /// SetOnlineRecordCallback返回参数结构体
    public struct SetOnlineRecordCallbackResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置实时录制回调地址
    ///
    /// 设置实时录制回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40258
    @inlinable @discardableResult
    public func setOnlineRecordCallback(_ input: SetOnlineRecordCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetOnlineRecordCallbackResponse> {
        self.client.execute(action: "SetOnlineRecordCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置实时录制回调地址
    ///
    /// 设置实时录制回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40258
    @inlinable @discardableResult
    public func setOnlineRecordCallback(_ input: SetOnlineRecordCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetOnlineRecordCallbackResponse {
        try await self.client.execute(action: "SetOnlineRecordCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置实时录制回调地址
    ///
    /// 设置实时录制回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40258
    @inlinable @discardableResult
    public func setOnlineRecordCallback(sdkAppId: Int64, callback: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetOnlineRecordCallbackResponse> {
        self.setOnlineRecordCallback(.init(sdkAppId: sdkAppId, callback: callback), region: region, logger: logger, on: eventLoop)
    }

    /// 设置实时录制回调地址
    ///
    /// 设置实时录制回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40258
    @inlinable @discardableResult
    public func setOnlineRecordCallback(sdkAppId: Int64, callback: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetOnlineRecordCallbackResponse {
        try await self.setOnlineRecordCallback(.init(sdkAppId: sdkAppId, callback: callback), region: region, logger: logger, on: eventLoop)
    }
}
