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

/// 汽车精准获客服务 (apcas)
///
/// 针对汽车精准获客服务控制台，提供人群特征洞察统计以及购车意向预测统计的控制台展示接口，包括1.总统计数据 2. 根据时间区间获取调用曲线 3.调用明细
public struct Apcas: TCService {
    /// Client used for communication with Tencent Cloud
    public let client: TCClient
    
    /// Service configuration
    public let config: TCServiceConfig
    
    /// Initialize the Apcas client
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
        service: "apcas", 
        apiVersion: "2020-11-27", 
        endpoint: endpoint, 
        errorType: TCApcasError.self, 
        timeout: timeout, 
        byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Apcas {
    /// Initializer required by `with(region:language:timeout:byteBufferAllocator:)`. You are not able to use this initializer directly as there are no public
    /// initializers for `TCServiceConfig.Patch`. Please use ``TCService.with(region:language:timeout:byteBufferAllocator:)`` instead.
    public init (from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}