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

/// 腾讯云区块链服务平台 TBaaS (tbaas)
///
/// 对TBaaS进行操作，包括TrustSQL服务统一、Hyperledger Fabric链状态等。
public struct Tbaas: TCService {
    /// Client used to communicate with Tencent Cloud.
    public let client: TCClient
    
    /// Service context details.
    public let config: TCServiceConfig
    
    /// Initialize the ``Tbaas`` client.
    ///
    /// - Parameters:
    ///    - client: ``TCClient`` used to perform actions.
    ///    - region: Region of the service you want to operate on.
    ///    - language: Preferred language for API response.
    ///    - endpoint: Custom endpoint URL for API request.
    ///    - timeout: Timeout value for HTTP requests.
    public init (
    client: TCClient, 
    region: TCRegion? = nil, 
    language: TCServiceConfig.Language? = nil, 
    endpoint: TCServiceConfig.Endpoint = .global, 
    timeout: TimeAmount? = nil, 
    byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator()
    ) {
        self.client = client
        self.config = TCServiceConfig(
        region: region, 
        service: "tbaas", 
        apiVersion: "2018-04-16", 
        language: language, 
        endpoint: endpoint, 
        errorType: TCTbaasError.self, 
        timeout: timeout, 
        byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Tbaas {
    /// Initializer required by ``with(region:language:endpoint:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:endpoint:timeout:byteBufferAllocator:)`` instead.
    public init (from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
