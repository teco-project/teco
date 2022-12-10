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

/// 分布式身份 (tdid)
///
/// API接口提供基础的创建DID、查询DID文档、更新VC、验证凭证、颁发凭证、本地密钥管理、数字身份标识DID管理、电子凭证Credential管理、授权机构（Authority Issuer）管理、CPT（Claim Protocol Type）管理、存证（Evidence）管理、AMOP链上数据通道、凭证传输（Transportation）管理等一系列功能。
public struct Tdid: TCService {
    /// Client used for communication with Tencent Cloud
    public let client: TCClient
    
    /// Service configuration
    public let config: TCServiceConfig
    
    /// Initialize the Tdid client
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
        service: "tdid", 
        apiVersion: "2021-05-19", 
        endpoint: endpoint, 
        errorType: TCTdidError.self, 
        timeout: timeout, 
        byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Tdid {
    /// Initializer required by `with(region:language:timeout:byteBufferAllocator:)`. You are not able to use this initializer directly as there are no public
    /// initializers for `TCServiceConfig.Patch`. Please use ``TCService.with(region:language:timeout:byteBufferAllocator:)`` instead.
    public init (from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}