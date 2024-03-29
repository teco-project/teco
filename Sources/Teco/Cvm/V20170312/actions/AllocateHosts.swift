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

extension Cvm {
    /// AllocateHosts请求参数结构体
    public struct AllocateHostsRequest: TCRequest {
        /// 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        public let placement: Placement

        /// 用于保证请求幂等性的字符串。
        public let clientToken: String?

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let hostChargePrepaid: ChargePrepaid?

        /// 实例计费类型。目前仅支持：PREPAID（预付费，即包年包月模式），默认为：'PREPAID'。
        public let hostChargeType: String?

        /// CDH实例机型，默认为：'HS1'。
        public let hostType: String?

        /// 购买CDH实例数量，默认为：1。
        public let hostCount: UInt64?

        /// 标签描述列表。通过指定该参数可以同时绑定标签到相应的资源实例。
        public let tagSpecification: [TagSpecification]?

        public init(placement: Placement, clientToken: String? = nil, hostChargePrepaid: ChargePrepaid? = nil, hostChargeType: String? = nil, hostType: String? = nil, hostCount: UInt64? = nil, tagSpecification: [TagSpecification]? = nil) {
            self.placement = placement
            self.clientToken = clientToken
            self.hostChargePrepaid = hostChargePrepaid
            self.hostChargeType = hostChargeType
            self.hostType = hostType
            self.hostCount = hostCount
            self.tagSpecification = tagSpecification
        }

        enum CodingKeys: String, CodingKey {
            case placement = "Placement"
            case clientToken = "ClientToken"
            case hostChargePrepaid = "HostChargePrepaid"
            case hostChargeType = "HostChargeType"
            case hostType = "HostType"
            case hostCount = "HostCount"
            case tagSpecification = "TagSpecification"
        }
    }

    /// AllocateHosts返回参数结构体
    public struct AllocateHostsResponse: TCResponse {
        /// 新创建云子机的实例ID列表。
        public let hostIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hostIdSet = "HostIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建CDH实例
    ///
    /// 本接口 (AllocateHosts) 用于创建一个或多个指定配置的CDH实例。
    /// * 当HostChargeType为PREPAID时，必须指定HostChargePrepaid参数。
    @inlinable
    public func allocateHosts(_ input: AllocateHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AllocateHostsResponse> {
        self.client.execute(action: "AllocateHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建CDH实例
    ///
    /// 本接口 (AllocateHosts) 用于创建一个或多个指定配置的CDH实例。
    /// * 当HostChargeType为PREPAID时，必须指定HostChargePrepaid参数。
    @inlinable
    public func allocateHosts(_ input: AllocateHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateHostsResponse {
        try await self.client.execute(action: "AllocateHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建CDH实例
    ///
    /// 本接口 (AllocateHosts) 用于创建一个或多个指定配置的CDH实例。
    /// * 当HostChargeType为PREPAID时，必须指定HostChargePrepaid参数。
    @inlinable
    public func allocateHosts(placement: Placement, clientToken: String? = nil, hostChargePrepaid: ChargePrepaid? = nil, hostChargeType: String? = nil, hostType: String? = nil, hostCount: UInt64? = nil, tagSpecification: [TagSpecification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AllocateHostsResponse> {
        self.allocateHosts(.init(placement: placement, clientToken: clientToken, hostChargePrepaid: hostChargePrepaid, hostChargeType: hostChargeType, hostType: hostType, hostCount: hostCount, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }

    /// 创建CDH实例
    ///
    /// 本接口 (AllocateHosts) 用于创建一个或多个指定配置的CDH实例。
    /// * 当HostChargeType为PREPAID时，必须指定HostChargePrepaid参数。
    @inlinable
    public func allocateHosts(placement: Placement, clientToken: String? = nil, hostChargePrepaid: ChargePrepaid? = nil, hostChargeType: String? = nil, hostType: String? = nil, hostCount: UInt64? = nil, tagSpecification: [TagSpecification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateHostsResponse {
        try await self.allocateHosts(.init(placement: placement, clientToken: clientToken, hostChargePrepaid: hostChargePrepaid, hostChargeType: hostChargeType, hostType: hostType, hostCount: hostCount, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }
}
