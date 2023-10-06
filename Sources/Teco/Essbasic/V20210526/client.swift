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

import NIOCore
import TecoCore

/// 腾讯电子签（基础版） (essbasic)
///
/// 使用API接口发起电子签名流程, 对流程进行管理, 电子印章管理,数字证书管理, 角色组织架构机构帐号管理,文档管理, 日志及统计等功能
public struct Essbasic: TCService {
    /// Client used to communicate with Tencent Cloud.
    public let client: TCClient

    /// Service context details.
    public let config: TCServiceConfig

    /// Initialize the ``Essbasic`` client.
    ///
    /// - Parameters:
    ///    - client: ``TCClient`` used to perform actions.
    ///    - region: Default region of the service to operate on.
    ///    - language: Preferred language for API response.
    ///    - endpoint: Endpoint provider for API request.
    ///    - timeout: Timeout value for HTTP requests.
    ///    - byteBufferAllocator: Byte buffer allocator used throughout ``Essbasic``.
    public init(
        client: TCClient = .shared,
        region: TCRegion? = nil,
        language: TCServiceConfig.Language? = nil,
        endpoint: TCServiceConfig.Endpoint = .global,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator()
    ) {
        self.client = client
        self.config = TCServiceConfig(
            service: "essbasic",
            version: "2021-05-26",
            region: region,
            language: language,
            endpoint: endpoint,
            errorType: TCEssbasicError.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Essbasic {
    /// Initializer required by ``with(region:language:endpoint:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:endpoint:timeout:byteBufferAllocator:)`` instead.
    public init(from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
