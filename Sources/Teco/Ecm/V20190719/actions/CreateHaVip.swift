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

extension Ecm {
    /// CreateHaVip请求参数结构体
    public struct CreateHaVipRequest: TCRequest {
        /// HAVIP所在私有网络ID。
        public let vpcId: String

        /// HAVIP所在子网ID。
        public let subnetId: String

        /// HAVIP名称。
        public let haVipName: String

        /// 指定虚拟IP地址，必须在VPC网段内且未被占用。不指定则自动分配。
        public let vip: String?

        public init(vpcId: String, subnetId: String, haVipName: String, vip: String? = nil) {
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.haVipName = haVipName
            self.vip = vip
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case haVipName = "HaVipName"
            case vip = "Vip"
        }
    }

    /// CreateHaVip返回参数结构体
    public struct CreateHaVipResponse: TCResponse {
        /// HAVIP对象。
        public let haVip: HaVip

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case haVip = "HaVip"
            case requestId = "RequestId"
        }
    }

    /// 创建HAVIP
    ///
    /// 本接口（CreateHaVip）用于创建高可用虚拟IP（HAVIP）
    @inlinable
    public func createHaVip(_ input: CreateHaVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHaVipResponse> {
        self.client.execute(action: "CreateHaVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建HAVIP
    ///
    /// 本接口（CreateHaVip）用于创建高可用虚拟IP（HAVIP）
    @inlinable
    public func createHaVip(_ input: CreateHaVipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHaVipResponse {
        try await self.client.execute(action: "CreateHaVip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建HAVIP
    ///
    /// 本接口（CreateHaVip）用于创建高可用虚拟IP（HAVIP）
    @inlinable
    public func createHaVip(vpcId: String, subnetId: String, haVipName: String, vip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHaVipResponse> {
        self.createHaVip(.init(vpcId: vpcId, subnetId: subnetId, haVipName: haVipName, vip: vip), region: region, logger: logger, on: eventLoop)
    }

    /// 创建HAVIP
    ///
    /// 本接口（CreateHaVip）用于创建高可用虚拟IP（HAVIP）
    @inlinable
    public func createHaVip(vpcId: String, subnetId: String, haVipName: String, vip: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHaVipResponse {
        try await self.createHaVip(.init(vpcId: vpcId, subnetId: subnetId, haVipName: haVipName, vip: vip), region: region, logger: logger, on: eventLoop)
    }
}
