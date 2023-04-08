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

import TecoCore

extension Bm {
    /// DescribeHostedDeviceOutBandInfo请求参数结构体
    public struct DescribeHostedDeviceOutBandInfoRequest: TCRequestModel {
        /// 托管设备的唯一ID数组,数组个数不超过20
        public let instanceIds: [String]

        /// 可用区ID
        public let zone: String

        public init(instanceIds: [String], zone: String) {
            self.instanceIds = instanceIds
            self.zone = zone
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case zone = "Zone"
        }
    }

    /// DescribeHostedDeviceOutBandInfo返回参数结构体
    public struct DescribeHostedDeviceOutBandInfoResponse: TCResponseModel {
        /// 托管设备带外信息
        public let hostedDeviceOutBandInfoSet: [HostedDeviceOutBandInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hostedDeviceOutBandInfoSet = "HostedDeviceOutBandInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 查询托管设备带外信息
    @inlinable
    public func describeHostedDeviceOutBandInfo(_ input: DescribeHostedDeviceOutBandInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostedDeviceOutBandInfoResponse> {
        self.client.execute(action: "DescribeHostedDeviceOutBandInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询托管设备带外信息
    @inlinable
    public func describeHostedDeviceOutBandInfo(_ input: DescribeHostedDeviceOutBandInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostedDeviceOutBandInfoResponse {
        try await self.client.execute(action: "DescribeHostedDeviceOutBandInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询托管设备带外信息
    @inlinable
    public func describeHostedDeviceOutBandInfo(instanceIds: [String], zone: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostedDeviceOutBandInfoResponse> {
        self.describeHostedDeviceOutBandInfo(.init(instanceIds: instanceIds, zone: zone), region: region, logger: logger, on: eventLoop)
    }

    /// 查询托管设备带外信息
    @inlinable
    public func describeHostedDeviceOutBandInfo(instanceIds: [String], zone: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostedDeviceOutBandInfoResponse {
        try await self.describeHostedDeviceOutBandInfo(.init(instanceIds: instanceIds, zone: zone), region: region, logger: logger, on: eventLoop)
    }
}
