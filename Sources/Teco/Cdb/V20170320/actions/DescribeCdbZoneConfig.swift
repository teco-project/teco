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

extension Cdb {
    /// DescribeCdbZoneConfig请求参数结构体
    public struct DescribeCdbZoneConfigRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeCdbZoneConfig返回参数结构体
    public struct DescribeCdbZoneConfigResponse: TCResponse {
        /// 售卖规格和地域信息集合
        public let dataResult: CdbZoneDataResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataResult = "DataResult"
            case requestId = "RequestId"
        }
    }

    /// 查询数据库可用区及售卖规格
    ///
    /// 本接口(DescribeCdbZoneConfig)用于查询云数据库各地域可售卖的规格配置。
    @inlinable
    public func describeCdbZoneConfig(_ input: DescribeCdbZoneConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCdbZoneConfigResponse> {
        self.client.execute(action: "DescribeCdbZoneConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库可用区及售卖规格
    ///
    /// 本接口(DescribeCdbZoneConfig)用于查询云数据库各地域可售卖的规格配置。
    @inlinable
    public func describeCdbZoneConfig(_ input: DescribeCdbZoneConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCdbZoneConfigResponse {
        try await self.client.execute(action: "DescribeCdbZoneConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库可用区及售卖规格
    ///
    /// 本接口(DescribeCdbZoneConfig)用于查询云数据库各地域可售卖的规格配置。
    @inlinable
    public func describeCdbZoneConfig(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCdbZoneConfigResponse> {
        self.describeCdbZoneConfig(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库可用区及售卖规格
    ///
    /// 本接口(DescribeCdbZoneConfig)用于查询云数据库各地域可售卖的规格配置。
    @inlinable
    public func describeCdbZoneConfig(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCdbZoneConfigResponse {
        try await self.describeCdbZoneConfig(.init(), region: region, logger: logger, on: eventLoop)
    }
}
