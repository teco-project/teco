//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DescribeDomainRegion请求参数结构体
    public struct DescribeDomainRegionRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeDomainRegion返回参数结构体
    public struct DescribeDomainRegionResponse: TCResponse {
        /// 返回数据
        public let data: [DescribeDomainRegionData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询域名可绑定服务节点
    ///
    /// 用于用户添加域名时，查询可以绑定的服务节点，结果为平台支持的所有服务节点。（注意：每个服务节点只能绑定一个域名）
    @inlinable
    public func describeDomainRegion(_ input: DescribeDomainRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainRegionResponse> {
        self.client.execute(action: "DescribeDomainRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名可绑定服务节点
    ///
    /// 用于用户添加域名时，查询可以绑定的服务节点，结果为平台支持的所有服务节点。（注意：每个服务节点只能绑定一个域名）
    @inlinable
    public func describeDomainRegion(_ input: DescribeDomainRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainRegionResponse {
        try await self.client.execute(action: "DescribeDomainRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名可绑定服务节点
    ///
    /// 用于用户添加域名时，查询可以绑定的服务节点，结果为平台支持的所有服务节点。（注意：每个服务节点只能绑定一个域名）
    @inlinable
    public func describeDomainRegion(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainRegionResponse> {
        self.describeDomainRegion(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询域名可绑定服务节点
    ///
    /// 用于用户添加域名时，查询可以绑定的服务节点，结果为平台支持的所有服务节点。（注意：每个服务节点只能绑定一个域名）
    @inlinable
    public func describeDomainRegion(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainRegionResponse {
        try await self.describeDomainRegion(.init(), region: region, logger: logger, on: eventLoop)
    }
}
