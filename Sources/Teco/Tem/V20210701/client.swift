//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import TecoCore

/// 弹性微服务 TEM (tem)
///
/// 腾讯云弹性微服务（TEM）相关接口。
public struct Tem: TCService {
    /// Client used for communication with Tencent Cloud
    public let client: TCClient
    
    /// Service configuration
    public let config: TCServiceConfig
    
    /// Initialize the ``Tem`` client
    ///
    /// - Parameters:
    ///    - client: ``TCClient`` used to process requests
    ///    - region: The service region you want to operate on
    ///    - endpoint: Custom Endpoint URL preference
    ///    - timeout: Timeout value for HTTP requests
    public init (
    client: TCClient, 
    region: TCRegion? = nil, 
    endpoint: TCServiceConfig.EndpointPreference = .global, 
    timeout: TimeAmount? = nil, 
    byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator()
    ) {
        self.client = client
        self.config = TCServiceConfig(
        region: region, 
        service: "tem", 
        apiVersion: "2021-07-01", 
        endpoint: endpoint, 
        errorType: TCTemError.self, 
        timeout: timeout, 
        byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Tem {
    /// Initializer required by ``with(region:language:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:timeout:byteBufferAllocator:)`` instead.
    public init (from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
