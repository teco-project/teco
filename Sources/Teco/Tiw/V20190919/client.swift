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

import NIOCore
import TecoCore

/// 互动白板 (tiw)
///
/// 对互动白板进行操作，包括文档转码、实时录制等
public struct Tiw: TCService {
    /// Client used to communicate with Tencent Cloud.
    public let client: TCClient

    /// Service context details.
    public let config: TCServiceConfig

    /// Initialize the ``Tiw`` client.
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
            service: "tiw",
            version: "2019-09-19",
            region: region,
            language: language,
            endpoint: endpoint,
            errorType: TCTiwError.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Tiw {
    /// Initializer required by ``with(region:language:endpoint:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:endpoint:timeout:byteBufferAllocator:)`` instead.
    public init(from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
