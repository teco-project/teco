//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import TecoCore

/// 腾讯云搜 (yunsou)
///
/// 介绍如何使用API对腾讯云搜进行操作，包括数据检索、云搜数据上传等。
public struct Yunsou: TCService {
    /// Client used for communication with Tencent Cloud
    public let client: TCClient
    
    /// Service configuration
    public let config: TCServiceConfig
    
    /// Initialize the Yunsou client
    /// - parameters:
    ///    - client: TCClient used to process requests
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
        service: "yunsou", 
        apiVersion: "2018-05-04", 
        endpoint: endpoint, 
        
        timeout: timeout, 
        byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Yunsou {
    /// Initializer required by `with(region:language:timeout:byteBufferAllocator:)`. You are not able to use this initializer directly as there are no public
    /// initializers for `TCServiceConfig.Patch`. Please use ``TCService.with(region:language:timeout:byteBufferAllocator:)`` instead.
    public init (from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}