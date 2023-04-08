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

extension Drm {
    /// CreateEncryptKeys请求参数结构体
    public struct CreateEncryptKeysRequest: TCRequestModel {
        /// 使用的DRM方案类型，接口取值WIDEVINE、FAIRPLAY、NORMALAES。
        public let drmType: String

        /// 设置的加密密钥列表。
        public let keys: [KeyParam]

        /// 一个加密内容的唯一标识。
        public let contentId: String?

        /// 内容类型。接口取值VodVideo,LiveVideo。
        public let contentType: String?

        public init(drmType: String, keys: [KeyParam], contentId: String? = nil, contentType: String? = nil) {
            self.drmType = drmType
            self.keys = keys
            self.contentId = contentId
            self.contentType = contentType
        }

        enum CodingKeys: String, CodingKey {
            case drmType = "DrmType"
            case keys = "Keys"
            case contentId = "ContentId"
            case contentType = "ContentType"
        }
    }

    /// CreateEncryptKeys返回参数结构体
    public struct CreateEncryptKeysResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置加密密钥
    ///
    /// 该接口用来设置加密的密钥。注意，同一个content id，只能设置一次！
    @inlinable @discardableResult
    public func createEncryptKeys(_ input: CreateEncryptKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEncryptKeysResponse> {
        self.client.execute(action: "CreateEncryptKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置加密密钥
    ///
    /// 该接口用来设置加密的密钥。注意，同一个content id，只能设置一次！
    @inlinable @discardableResult
    public func createEncryptKeys(_ input: CreateEncryptKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEncryptKeysResponse {
        try await self.client.execute(action: "CreateEncryptKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置加密密钥
    ///
    /// 该接口用来设置加密的密钥。注意，同一个content id，只能设置一次！
    @inlinable @discardableResult
    public func createEncryptKeys(drmType: String, keys: [KeyParam], contentId: String? = nil, contentType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEncryptKeysResponse> {
        self.createEncryptKeys(.init(drmType: drmType, keys: keys, contentId: contentId, contentType: contentType), region: region, logger: logger, on: eventLoop)
    }

    /// 设置加密密钥
    ///
    /// 该接口用来设置加密的密钥。注意，同一个content id，只能设置一次！
    @inlinable @discardableResult
    public func createEncryptKeys(drmType: String, keys: [KeyParam], contentId: String? = nil, contentType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEncryptKeysResponse {
        try await self.createEncryptKeys(.init(drmType: drmType, keys: keys, contentId: contentId, contentType: contentType), region: region, logger: logger, on: eventLoop)
    }
}
