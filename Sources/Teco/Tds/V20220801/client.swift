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

/// 设备安全 (tds)
///
/// 腾讯设备安全服务接口，供企业及用户集成调用，设备安全产品基于实时风险模型、信誉库，通过对可信设备标识多纬度分析，有效识别业务方在业务过程中的欺诈风险，基于接口返回风险标签，联动业务系统进行安全处理。
public struct Tds: TCService {
    /// Client used to communicate with Tencent Cloud.
    public let client: TCClient

    /// Service context details.
    public let config: TCServiceConfig

    /// Initialize the ``Tds`` client.
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
            service: "tds",
            version: "2022-08-01",
            region: region,
            language: language,
            endpoint: endpoint,
            errorType: TCTdsError.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator
        )
    }
}

extension Tds {
    /// Initializer required by ``with(region:language:endpoint:timeout:byteBufferAllocator:)``.
    ///
    /// You are not able to use this initializer directly as there are no public initializers for ``TCServiceConfig/Patch``.
    /// Please use ``with(region:language:endpoint:timeout:byteBufferAllocator:)`` instead.
    public init(from service: Self, patch: TCServiceConfig.Patch) {
        self.client = service.client
        self.config = service.config.with(patch: patch)
    }
}
