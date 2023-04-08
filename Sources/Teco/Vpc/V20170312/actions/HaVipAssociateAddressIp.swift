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
    /// HaVipAssociateAddressIp请求参数结构体
    public struct HaVipAssociateAddressIpRequest: TCRequestModel {
        /// `HAVIP`唯一`ID`，形如：`havip-9o233uri`。必须是没有绑定`EIP`的`HAVIP`。
        public let haVipId: String

        /// 弹性公网`IP`。必须是没有绑定`HAVIP`的`EIP`。
        public let addressIp: String

        public init(haVipId: String, addressIp: String) {
            self.haVipId = haVipId
            self.addressIp = addressIp
        }

        enum CodingKeys: String, CodingKey {
            case haVipId = "HaVipId"
            case addressIp = "AddressIp"
        }
    }

    /// HaVipAssociateAddressIp返回参数结构体
    public struct HaVipAssociateAddressIpResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// HAVIP绑定EIP
    ///
    /// 本接口（HaVipAssociateAddressIp）用于高可用虚拟IP（HAVIP）绑定弹性公网IP（EIP）。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func haVipAssociateAddressIp(_ input: HaVipAssociateAddressIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HaVipAssociateAddressIpResponse> {
        self.client.execute(action: "HaVipAssociateAddressIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// HAVIP绑定EIP
    ///
    /// 本接口（HaVipAssociateAddressIp）用于高可用虚拟IP（HAVIP）绑定弹性公网IP（EIP）。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func haVipAssociateAddressIp(_ input: HaVipAssociateAddressIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HaVipAssociateAddressIpResponse {
        try await self.client.execute(action: "HaVipAssociateAddressIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// HAVIP绑定EIP
    ///
    /// 本接口（HaVipAssociateAddressIp）用于高可用虚拟IP（HAVIP）绑定弹性公网IP（EIP）。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func haVipAssociateAddressIp(haVipId: String, addressIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HaVipAssociateAddressIpResponse> {
        self.haVipAssociateAddressIp(.init(haVipId: haVipId, addressIp: addressIp), region: region, logger: logger, on: eventLoop)
    }

    /// HAVIP绑定EIP
    ///
    /// 本接口（HaVipAssociateAddressIp）用于高可用虚拟IP（HAVIP）绑定弹性公网IP（EIP）。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func haVipAssociateAddressIp(haVipId: String, addressIp: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HaVipAssociateAddressIpResponse {
        try await self.haVipAssociateAddressIp(.init(haVipId: haVipId, addressIp: addressIp), region: region, logger: logger, on: eventLoop)
    }
}
