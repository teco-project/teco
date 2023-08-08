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
    /// SetPPTCheckCallback请求参数结构体
    public struct SetPPTCheckCallbackRequest: TCRequestModel {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 进度回调地址，如果传空字符串会删除原来的回调地址配置，回调地址仅支持http或https协议，即回调地址以http://或https://开头。 回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260#c9cbe05f-fe1a-4410-b4dc-40cc301c7b81
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

    /// SetPPTCheckCallback返回参数结构体
    public struct SetPPTCheckCallbackResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置PPT检测任务回调地址
    ///
    /// 设置PPT检测任务回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260#c9cbe05f-fe1a-4410-b4dc-40cc301c7b81
    @inlinable @discardableResult
    public func setPPTCheckCallback(_ input: SetPPTCheckCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetPPTCheckCallbackResponse> {
        self.client.execute(action: "SetPPTCheckCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置PPT检测任务回调地址
    ///
    /// 设置PPT检测任务回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260#c9cbe05f-fe1a-4410-b4dc-40cc301c7b81
    @inlinable @discardableResult
    public func setPPTCheckCallback(_ input: SetPPTCheckCallbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetPPTCheckCallbackResponse {
        try await self.client.execute(action: "SetPPTCheckCallback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置PPT检测任务回调地址
    ///
    /// 设置PPT检测任务回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260#c9cbe05f-fe1a-4410-b4dc-40cc301c7b81
    @inlinable @discardableResult
    public func setPPTCheckCallback(sdkAppId: Int64, callback: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetPPTCheckCallbackResponse> {
        self.setPPTCheckCallback(.init(sdkAppId: sdkAppId, callback: callback), region: region, logger: logger, on: eventLoop)
    }

    /// 设置PPT检测任务回调地址
    ///
    /// 设置PPT检测任务回调地址，回调数据格式请参考文档：https://cloud.tencent.com/document/product/1137/40260#c9cbe05f-fe1a-4410-b4dc-40cc301c7b81
    @inlinable @discardableResult
    public func setPPTCheckCallback(sdkAppId: Int64, callback: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetPPTCheckCallbackResponse {
        try await self.setPPTCheckCallback(.init(sdkAppId: sdkAppId, callback: callback), region: region, logger: logger, on: eventLoop)
    }
}
