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

/// 高性能计算平台 (thpc)
///
/// THPC一期可实现固定集群的创建，暂不支持弹性扩容。
public struct Thpc: TCService {
    /// Client used for communication with Tencent Cloud
    public let client: TCClient
    
    /// Service configuration
    public let config: TCServiceConfig
    
    /// Initialize the ``Thpc`` client
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
        service: "thpc", 
        apiVersion: "2021-11-09", 
        endpoint: endpoint, 
        errorType: TCThpcError.self, 
        timeout: timeout, 
        byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Thpc {
    /// Initializer required by ``with(region:language:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:timeout:byteBufferAllocator:)`` instead.
    public init (from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
