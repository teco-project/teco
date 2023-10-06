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

/// 媒体处理 (mps)
///
/// 对视频处理进行操作，如AI样本管理、工作流管理、视频处理等。
public struct Mps: TCService {
    /// Client used to communicate with Tencent Cloud.
    public let client: TCClient

    /// Service context details.
    public let config: TCServiceConfig

    /// Initialize the ``Mps`` client.
    ///
    /// - Parameters:
    ///    - client: ``TCClient`` used to perform actions.
    ///    - region: Default region of the service to operate on.
    ///    - language: Preferred language for API response.
    ///    - endpoint: Endpoint provider for API request.
    ///    - timeout: Timeout value for HTTP requests.
    ///    - byteBufferAllocator: Byte buffer allocator used throughout ``Mps``.
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
            service: "mps",
            version: "2019-06-12",
            region: region,
            language: language,
            endpoint: endpoint,
            errorType: TCMpsError.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Mps {
    /// Initializer required by ``with(region:language:endpoint:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:endpoint:timeout:byteBufferAllocator:)`` instead.
    public init(from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
