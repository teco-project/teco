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

import Logging
import NIOCore
import TecoCore

extension Live {
    /// DescribeLiveCerts请求参数结构体
    public struct DescribeLiveCertsRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeLiveCerts返回参数结构体
    public struct DescribeLiveCertsResponse: TCResponse {
        /// 证书信息列表。
        public let certInfoSet: [CertInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certInfoSet = "CertInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 获取证书信息列表
    @inlinable
    public func describeLiveCerts(_ input: DescribeLiveCertsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveCertsResponse> {
        self.client.execute(action: "DescribeLiveCerts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取证书信息列表
    @inlinable
    public func describeLiveCerts(_ input: DescribeLiveCertsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveCertsResponse {
        try await self.client.execute(action: "DescribeLiveCerts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取证书信息列表
    @inlinable
    public func describeLiveCerts(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveCertsResponse> {
        self.describeLiveCerts(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证书信息列表
    @inlinable
    public func describeLiveCerts(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveCertsResponse {
        try await self.describeLiveCerts(.init(), region: region, logger: logger, on: eventLoop)
    }
}
