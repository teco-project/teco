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

extension Cwp {
    /// DescribeMachineRegions请求参数结构体
    public struct DescribeMachineRegionsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeMachineRegions返回参数结构体
    public struct DescribeMachineRegionsResponse: TCResponseModel {
        /// CVM 云服务器地域列表
        public let cvm: [RegionInfo]

        /// BM 黑石机器地域列表
        public let bm: [RegionInfo]

        /// LH 轻量应用服务器地域列表
        public let lh: [RegionInfo]

        /// ECM 边缘计算服务器地域列表
        public let ecm: [RegionInfo]

        /// Other 混合云地域列表
        public let other: [RegionInfo]

        /// 所有地域列表(包含以上所有地域)
        public let all: [RegionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cvm = "CVM"
            case bm = "BM"
            case lh = "LH"
            case ecm = "ECM"
            case other = "Other"
            case all = "ALL"
            case requestId = "RequestId"
        }
    }

    /// 获取机器地域列表
    @inlinable
    public func describeMachineRegions(_ input: DescribeMachineRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineRegionsResponse> {
        self.client.execute(action: "DescribeMachineRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机器地域列表
    @inlinable
    public func describeMachineRegions(_ input: DescribeMachineRegionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineRegionsResponse {
        try await self.client.execute(action: "DescribeMachineRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取机器地域列表
    @inlinable
    public func describeMachineRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineRegionsResponse> {
        let input = DescribeMachineRegionsRequest()
        return self.client.execute(action: "DescribeMachineRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机器地域列表
    @inlinable
    public func describeMachineRegions(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineRegionsResponse {
        let input = DescribeMachineRegionsRequest()
        return try await self.client.execute(action: "DescribeMachineRegions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
