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

import TecoCore

/// 企业微信汽车行业版 (wav)
///
/// 企业微信汽车行业版 API 已上线1.0版本。全新的 API 接口文档更加规范和全面，统一的参数风格和公共错误码，给您带来简单快捷的使用体验。支持灵活调用产品主流营销业务能力，并支持全地域就近接入让您更快连接腾讯云产品。
public struct Wav: TCService {
    /// Client used to communicate with Tencent Cloud.
    public let client: TCClient

    /// Service context details.
    public let config: TCServiceConfig

    /// Initialize the ``Wav`` client.
    ///
    /// - Parameters:
    ///    - client: ``TCClient`` used to perform actions.
    ///    - region: Default region of the service to operate on.
    ///    - language: Preferred language for API response.
    ///    - endpoint: Endpoint provider for API request.
    ///    - timeout: Timeout value for HTTP requests.
    public init(
        client: TCClient,
        region: TCRegion? = nil,
        language: TCServiceConfig.Language? = nil,
        endpoint: TCServiceConfig.Endpoint = .global,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator()
    ) {
        self.client = client
        self.config = TCServiceConfig(
            service: "wav",
            version: "2021-01-29",
            region: region,
            language: language,
            endpoint: endpoint,
            errorType: TCWavError.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Wav {
    /// Initializer required by ``with(region:language:endpoint:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:endpoint:timeout:byteBufferAllocator:)`` instead.
    public init(from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
