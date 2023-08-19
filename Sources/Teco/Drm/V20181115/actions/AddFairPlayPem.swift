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
    /// AddFairPlayPem请求参数结构体
    public struct AddFairPlayPemRequest: TCRequest {
        /// 加密后的fairplay方案申请时使用的私钥。
        /// 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对私钥文件中的字段进行加密，并对加密结果进行base64编码。
        public let pem: String

        /// 加密后的fairplay方案申请返回的ask数据。
        /// 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对Ask字符串进行加密，并对加密结果进行base64编码。
        public let ask: String

        /// 私钥的解密密钥。
        /// openssl在生成rsa时，可能会需要设置加密密钥，请记住设置的密钥。
        /// 请使用腾讯云DRM 提供的公钥，使用rsa加密算法，PKCS1填充方式对解密密钥进行加密，并对加密结果进行base64编码。
        public let pemDecryptKey: String?

        /// 委托者Id,适用于托管自身证书的客户。普通客户无需填该字段。
        public let bailorId: UInt64?

        /// 私钥的优先级，优先级数值越高，优先级越高。
        /// 该值可以不传，后台将自动分配一个优先级。
        public let priority: UInt64?

        public init(pem: String, ask: String, pemDecryptKey: String? = nil, bailorId: UInt64? = nil, priority: UInt64? = nil) {
            self.pem = pem
            self.ask = ask
            self.pemDecryptKey = pemDecryptKey
            self.bailorId = bailorId
            self.priority = priority
        }

        enum CodingKeys: String, CodingKey {
            case pem = "Pem"
            case ask = "Ask"
            case pemDecryptKey = "PemDecryptKey"
            case bailorId = "BailorId"
            case priority = "Priority"
        }
    }

    /// AddFairPlayPem返回参数结构体
    public struct AddFairPlayPemResponse: TCResponse {
        /// 设置私钥后，后台返回的pem id，用来唯一标识一个私钥。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fairPlayPemId: UInt64?

        /// 私钥的优先级，优先级数值越高，优先级越高。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let priority: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fairPlayPemId = "FairPlayPemId"
            case priority = "Priority"
            case requestId = "RequestId"
        }
    }

    /// 新设置fairplay方案所需私钥
    ///
    /// 本接口用来设置fairplay方案所需的私钥、私钥密钥、ask等信息。
    /// 如需使用fairplay方案，请务必先设置私钥。
    @inlinable
    public func addFairPlayPem(_ input: AddFairPlayPemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFairPlayPemResponse> {
        self.client.execute(action: "AddFairPlayPem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新设置fairplay方案所需私钥
    ///
    /// 本接口用来设置fairplay方案所需的私钥、私钥密钥、ask等信息。
    /// 如需使用fairplay方案，请务必先设置私钥。
    @inlinable
    public func addFairPlayPem(_ input: AddFairPlayPemRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddFairPlayPemResponse {
        try await self.client.execute(action: "AddFairPlayPem", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新设置fairplay方案所需私钥
    ///
    /// 本接口用来设置fairplay方案所需的私钥、私钥密钥、ask等信息。
    /// 如需使用fairplay方案，请务必先设置私钥。
    @inlinable
    public func addFairPlayPem(pem: String, ask: String, pemDecryptKey: String? = nil, bailorId: UInt64? = nil, priority: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddFairPlayPemResponse> {
        self.addFairPlayPem(.init(pem: pem, ask: ask, pemDecryptKey: pemDecryptKey, bailorId: bailorId, priority: priority), region: region, logger: logger, on: eventLoop)
    }

    /// 新设置fairplay方案所需私钥
    ///
    /// 本接口用来设置fairplay方案所需的私钥、私钥密钥、ask等信息。
    /// 如需使用fairplay方案，请务必先设置私钥。
    @inlinable
    public func addFairPlayPem(pem: String, ask: String, pemDecryptKey: String? = nil, bailorId: UInt64? = nil, priority: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddFairPlayPemResponse {
        try await self.addFairPlayPem(.init(pem: pem, ask: ask, pemDecryptKey: pemDecryptKey, bailorId: bailorId, priority: priority), region: region, logger: logger, on: eventLoop)
    }
}
