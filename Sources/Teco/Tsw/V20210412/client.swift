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

/// 微服务观测平台 TSW (tsw)
///
/// 使用API查看应用、接口、数据库实例被调用的监控数据。
/// 以及展示依赖拓扑图，查询调用链。
/// 修改链路追踪agent的配置参数
public struct Tsw: TCService {
    /// Client used for communication with Tencent Cloud
    public let client: TCClient
    
    /// Service configuration
    public let config: TCServiceConfig
    
    /// Initialize the ``Tsw`` client
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
        service: "tsw", 
        apiVersion: "2021-04-12", 
        endpoint: endpoint, 
        
        timeout: timeout, 
        byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Tsw {
    /// Initializer required by ``with(region:language:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:timeout:byteBufferAllocator:)`` instead.
    public init (from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
