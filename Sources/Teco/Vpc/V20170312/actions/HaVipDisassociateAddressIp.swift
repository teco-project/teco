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

extension Vpc {
    /// HaVipDisassociateAddressIp请求参数结构体
    public struct HaVipDisassociateAddressIpRequest: TCRequestModel {
        /// `HAVIP`唯一`ID`，形如：`havip-9o233uri`。必须是已绑定`EIP`的`HAVIP`。
        public let haVipId: String

        public init(haVipId: String) {
            self.haVipId = haVipId
        }

        enum CodingKeys: String, CodingKey {
            case haVipId = "HaVipId"
        }
    }

    /// HaVipDisassociateAddressIp返回参数结构体
    public struct HaVipDisassociateAddressIpResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// HAVIP解绑EIP
    ///
    /// 本接口（HaVipDisassociateAddressIp）用于将高可用虚拟IP（HAVIP）已绑定的弹性公网IP（EIP）解除绑定。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func haVipDisassociateAddressIp(_ input: HaVipDisassociateAddressIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HaVipDisassociateAddressIpResponse> {
        self.client.execute(action: "HaVipDisassociateAddressIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// HAVIP解绑EIP
    ///
    /// 本接口（HaVipDisassociateAddressIp）用于将高可用虚拟IP（HAVIP）已绑定的弹性公网IP（EIP）解除绑定。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func haVipDisassociateAddressIp(_ input: HaVipDisassociateAddressIpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HaVipDisassociateAddressIpResponse {
        try await self.client.execute(action: "HaVipDisassociateAddressIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// HAVIP解绑EIP
    ///
    /// 本接口（HaVipDisassociateAddressIp）用于将高可用虚拟IP（HAVIP）已绑定的弹性公网IP（EIP）解除绑定。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func haVipDisassociateAddressIp(haVipId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HaVipDisassociateAddressIpResponse> {
        let input = HaVipDisassociateAddressIpRequest(haVipId: haVipId)
        return self.client.execute(action: "HaVipDisassociateAddressIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// HAVIP解绑EIP
    ///
    /// 本接口（HaVipDisassociateAddressIp）用于将高可用虚拟IP（HAVIP）已绑定的弹性公网IP（EIP）解除绑定。<br />
    /// 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。
    @inlinable @discardableResult
    public func haVipDisassociateAddressIp(haVipId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HaVipDisassociateAddressIpResponse {
        let input = HaVipDisassociateAddressIpRequest(haVipId: haVipId)
        return try await self.client.execute(action: "HaVipDisassociateAddressIp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
