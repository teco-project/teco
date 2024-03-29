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

extension Tcr {
    /// CreateSignaturePolicy请求参数结构体
    public struct CreateSignaturePolicyRequest: TCRequest {
        /// 实例 Id
        public let registryId: String

        /// 策略名称
        public let name: String

        /// 命名空间名称
        public let namespaceName: String

        /// KMS 密钥
        public let kmsId: String

        /// KMS 密钥所属地域
        public let kmsRegion: String

        /// 用户自定义域名，为空时使用 TCR 实例默认域名生成签名
        public let domain: String?

        /// 禁用加签策略，默认为 false
        public let disabled: Bool?

        public init(registryId: String, name: String, namespaceName: String, kmsId: String, kmsRegion: String, domain: String? = nil, disabled: Bool? = nil) {
            self.registryId = registryId
            self.name = name
            self.namespaceName = namespaceName
            self.kmsId = kmsId
            self.kmsRegion = kmsRegion
            self.domain = domain
            self.disabled = disabled
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case name = "Name"
            case namespaceName = "NamespaceName"
            case kmsId = "KmsId"
            case kmsRegion = "KmsRegion"
            case domain = "Domain"
            case disabled = "Disabled"
        }
    }

    /// CreateSignaturePolicy返回参数结构体
    public struct CreateSignaturePolicyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建签名策略
    ///
    /// 创建镜像签名策略
    @inlinable @discardableResult
    public func createSignaturePolicy(_ input: CreateSignaturePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSignaturePolicyResponse> {
        self.client.execute(action: "CreateSignaturePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建签名策略
    ///
    /// 创建镜像签名策略
    @inlinable @discardableResult
    public func createSignaturePolicy(_ input: CreateSignaturePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSignaturePolicyResponse {
        try await self.client.execute(action: "CreateSignaturePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建签名策略
    ///
    /// 创建镜像签名策略
    @inlinable @discardableResult
    public func createSignaturePolicy(registryId: String, name: String, namespaceName: String, kmsId: String, kmsRegion: String, domain: String? = nil, disabled: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSignaturePolicyResponse> {
        self.createSignaturePolicy(.init(registryId: registryId, name: name, namespaceName: namespaceName, kmsId: kmsId, kmsRegion: kmsRegion, domain: domain, disabled: disabled), region: region, logger: logger, on: eventLoop)
    }

    /// 创建签名策略
    ///
    /// 创建镜像签名策略
    @inlinable @discardableResult
    public func createSignaturePolicy(registryId: String, name: String, namespaceName: String, kmsId: String, kmsRegion: String, domain: String? = nil, disabled: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSignaturePolicyResponse {
        try await self.createSignaturePolicy(.init(registryId: registryId, name: name, namespaceName: namespaceName, kmsId: kmsId, kmsRegion: kmsRegion, domain: domain, disabled: disabled), region: region, logger: logger, on: eventLoop)
    }
}
