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

extension Drm {
    /// DeleteFairPlayPem请求参数结构体
    public struct DeleteFairPlayPemRequest: TCRequestModel {
        /// 委托者Id,适用于托管自身证书的客户。普通客户无需填该字段。
        public let bailorId: UInt64?

        /// 要删除的pem id。
        /// 当未传入该值时，将删除所有的私钥。
        public let fairPlayPemId: UInt64?

        public init(bailorId: UInt64? = nil, fairPlayPemId: UInt64? = nil) {
            self.bailorId = bailorId
            self.fairPlayPemId = fairPlayPemId
        }

        enum CodingKeys: String, CodingKey {
            case bailorId = "BailorId"
            case fairPlayPemId = "FairPlayPemId"
        }
    }

    /// DeleteFairPlayPem返回参数结构体
    public struct DeleteFairPlayPemResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Fairplay方案的私钥、ask
    ///
    /// 本接口用来删除fairplay方案的私钥、ask等信息
    /// 注：高风险操作，删除后，您将无法使用腾讯云DRM提供的fairplay服务。
    /// 由于缓存，删除操作需要约半小时生效
    @inlinable @discardableResult
    public func deleteFairPlayPem(_ input: DeleteFairPlayPemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFairPlayPemResponse> {
        self.client.execute(action: "DeleteFairPlayPem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Fairplay方案的私钥、ask
    ///
    /// 本接口用来删除fairplay方案的私钥、ask等信息
    /// 注：高风险操作，删除后，您将无法使用腾讯云DRM提供的fairplay服务。
    /// 由于缓存，删除操作需要约半小时生效
    @inlinable @discardableResult
    public func deleteFairPlayPem(_ input: DeleteFairPlayPemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFairPlayPemResponse {
        try await self.client.execute(action: "DeleteFairPlayPem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Fairplay方案的私钥、ask
    ///
    /// 本接口用来删除fairplay方案的私钥、ask等信息
    /// 注：高风险操作，删除后，您将无法使用腾讯云DRM提供的fairplay服务。
    /// 由于缓存，删除操作需要约半小时生效
    @inlinable @discardableResult
    public func deleteFairPlayPem(bailorId: UInt64? = nil, fairPlayPemId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFairPlayPemResponse> {
        self.deleteFairPlayPem(.init(bailorId: bailorId, fairPlayPemId: fairPlayPemId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除Fairplay方案的私钥、ask
    ///
    /// 本接口用来删除fairplay方案的私钥、ask等信息
    /// 注：高风险操作，删除后，您将无法使用腾讯云DRM提供的fairplay服务。
    /// 由于缓存，删除操作需要约半小时生效
    @inlinable @discardableResult
    public func deleteFairPlayPem(bailorId: UInt64? = nil, fairPlayPemId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFairPlayPemResponse {
        try await self.deleteFairPlayPem(.init(bailorId: bailorId, fairPlayPemId: fairPlayPemId), region: region, logger: logger, on: eventLoop)
    }
}
