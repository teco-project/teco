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

extension Vpc {
    /// CreateTrafficPackages请求参数结构体
    public struct CreateTrafficPackagesRequest: TCRequest {
        /// 流量包规格。可选值:
        /// - 10: 10GB流量，有效期一个月
        /// - 50: 50GB流量，有效期一个月
        /// - 512: 512GB流量，有效期一个月
        /// - 1024: 1TB流量，有效期一个月
        /// - 5120: 5TB流量，有效期一个月
        /// - 51200: 50TB流量，有效期一个月
        /// - 60: 60GB流量，有效期半年
        /// - 300: 300GB流量，有效期半年
        /// - 600: 600GB流量，有效期半年
        /// - 3072: 3TB流量，有效期半年
        /// - 6144: 6TB流量，有效期半年
        /// - 30720: 30TB流量，有效期半年
        /// - 61440: 60TB流量，有效期半年
        /// - 307200: 300TB流量，有效期半年
        public let trafficAmount: UInt64

        /// 流量包数量，可选范围 1~20。
        public let trafficPackageCount: UInt64?

        public init(trafficAmount: UInt64, trafficPackageCount: UInt64? = nil) {
            self.trafficAmount = trafficAmount
            self.trafficPackageCount = trafficPackageCount
        }

        enum CodingKeys: String, CodingKey {
            case trafficAmount = "TrafficAmount"
            case trafficPackageCount = "TrafficPackageCount"
        }
    }

    /// CreateTrafficPackages返回参数结构体
    public struct CreateTrafficPackagesResponse: TCResponse {
        /// 创建的流量包ID列表。
        public let trafficPackageSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trafficPackageSet = "TrafficPackageSet"
            case requestId = "RequestId"
        }
    }

    /// 创建共享流量包
    ///
    /// 本接口 (CreateTrafficPackages) 用于创建共享流量包。
    @inlinable
    public func createTrafficPackages(_ input: CreateTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTrafficPackagesResponse> {
        self.client.execute(action: "CreateTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建共享流量包
    ///
    /// 本接口 (CreateTrafficPackages) 用于创建共享流量包。
    @inlinable
    public func createTrafficPackages(_ input: CreateTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTrafficPackagesResponse {
        try await self.client.execute(action: "CreateTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建共享流量包
    ///
    /// 本接口 (CreateTrafficPackages) 用于创建共享流量包。
    @inlinable
    public func createTrafficPackages(trafficAmount: UInt64, trafficPackageCount: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTrafficPackagesResponse> {
        self.createTrafficPackages(.init(trafficAmount: trafficAmount, trafficPackageCount: trafficPackageCount), region: region, logger: logger, on: eventLoop)
    }

    /// 创建共享流量包
    ///
    /// 本接口 (CreateTrafficPackages) 用于创建共享流量包。
    @inlinable
    public func createTrafficPackages(trafficAmount: UInt64, trafficPackageCount: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTrafficPackagesResponse {
        try await self.createTrafficPackages(.init(trafficAmount: trafficAmount, trafficPackageCount: trafficPackageCount), region: region, logger: logger, on: eventLoop)
    }
}
