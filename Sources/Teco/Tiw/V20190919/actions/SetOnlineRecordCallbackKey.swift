//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tiw {
    /// SetOnlineRecordCallbackKey请求参数结构体
    public struct SetOnlineRecordCallbackKeyRequest: TCRequestModel {
        /// 应用的SdkAppId
        public let sdkAppId: Int64

        /// 设置实时录制回调鉴权密钥，最长64字符，如果传入空字符串，那么删除现有的鉴权回调密钥。回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
        public let callbackKey: String

        public init(sdkAppId: Int64, callbackKey: String) {
            self.sdkAppId = sdkAppId
            self.callbackKey = callbackKey
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case callbackKey = "CallbackKey"
        }
    }

    /// SetOnlineRecordCallbackKey返回参数结构体
    public struct SetOnlineRecordCallbackKeyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置实时录制回调密钥
    ///
    /// 设置实时录制回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
    @inlinable @discardableResult
    public func setOnlineRecordCallbackKey(_ input: SetOnlineRecordCallbackKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetOnlineRecordCallbackKeyResponse> {
        self.client.execute(action: "SetOnlineRecordCallbackKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置实时录制回调密钥
    ///
    /// 设置实时录制回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
    @inlinable @discardableResult
    public func setOnlineRecordCallbackKey(_ input: SetOnlineRecordCallbackKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetOnlineRecordCallbackKeyResponse {
        try await self.client.execute(action: "SetOnlineRecordCallbackKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置实时录制回调密钥
    ///
    /// 设置实时录制回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
    @inlinable @discardableResult
    public func setOnlineRecordCallbackKey(sdkAppId: Int64, callbackKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetOnlineRecordCallbackKeyResponse> {
        self.setOnlineRecordCallbackKey(SetOnlineRecordCallbackKeyRequest(sdkAppId: sdkAppId, callbackKey: callbackKey), region: region, logger: logger, on: eventLoop)
    }

    /// 设置实时录制回调密钥
    ///
    /// 设置实时录制回调鉴权密钥，回调鉴权方式请参考文档：https://cloud.tencent.com/document/product/1137/40257
    @inlinable @discardableResult
    public func setOnlineRecordCallbackKey(sdkAppId: Int64, callbackKey: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetOnlineRecordCallbackKeyResponse {
        try await self.setOnlineRecordCallbackKey(SetOnlineRecordCallbackKeyRequest(sdkAppId: sdkAppId, callbackKey: callbackKey), region: region, logger: logger, on: eventLoop)
    }
}
