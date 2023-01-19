//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ecm {
    /// DisassociateAddress请求参数结构体
    public struct DisassociateAddressRequest: TCRequestModel {
        /// ECM 地域
        public let ecmRegion: String

        /// 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：eip-11112222。
        public let addressId: String

        /// 表示解绑 EIP 之后是否分配普通公网 IP。取值范围：
        /// TRUE：表示解绑 EIP 之后分配普通公网 IP。
        /// FALSE：表示解绑 EIP 之后不分配普通公网 IP。
        /// 默认取值：FALSE。
        /// 只有满足以下条件时才能指定该参数：
        /// 只有在解绑主网卡的主内网 IP 上的 EIP 时才能指定该参数。
        /// 解绑 EIP 后重新分配普通公网 IP 操作一个账号每天最多操作 10 次；详情可通过 DescribeAddressQuota 接口获取。
        public let reallocateNormalPublicIp: Bool?

        public init(ecmRegion: String, addressId: String, reallocateNormalPublicIp: Bool? = nil) {
            self.ecmRegion = ecmRegion
            self.addressId = addressId
            self.reallocateNormalPublicIp = reallocateNormalPublicIp
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case addressId = "AddressId"
            case reallocateNormalPublicIp = "ReallocateNormalPublicIp"
        }
    }

    /// DisassociateAddress返回参数结构体
    public struct DisassociateAddressResponse: TCResponseModel {
        /// 异步任务TaskId。可以使用DescribeTaskResult接口查询任务状态。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 解绑定弹性公网IP
    ///
    /// 解绑弹性公网IP（简称 EIP）
    /// 只有状态为 BIND 和 BIND_ENI 的 EIP 才能进行解绑定操作。
    /// EIP 如果被封堵，则不能进行解绑定操作。
    @inlinable
    public func disassociateAddress(_ input: DisassociateAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateAddressResponse> {
        self.client.execute(action: "DisassociateAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑定弹性公网IP
    ///
    /// 解绑弹性公网IP（简称 EIP）
    /// 只有状态为 BIND 和 BIND_ENI 的 EIP 才能进行解绑定操作。
    /// EIP 如果被封堵，则不能进行解绑定操作。
    @inlinable
    public func disassociateAddress(_ input: DisassociateAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateAddressResponse {
        try await self.client.execute(action: "DisassociateAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑定弹性公网IP
    ///
    /// 解绑弹性公网IP（简称 EIP）
    /// 只有状态为 BIND 和 BIND_ENI 的 EIP 才能进行解绑定操作。
    /// EIP 如果被封堵，则不能进行解绑定操作。
    @inlinable
    public func disassociateAddress(ecmRegion: String, addressId: String, reallocateNormalPublicIp: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateAddressResponse> {
        self.disassociateAddress(DisassociateAddressRequest(ecmRegion: ecmRegion, addressId: addressId, reallocateNormalPublicIp: reallocateNormalPublicIp), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑定弹性公网IP
    ///
    /// 解绑弹性公网IP（简称 EIP）
    /// 只有状态为 BIND 和 BIND_ENI 的 EIP 才能进行解绑定操作。
    /// EIP 如果被封堵，则不能进行解绑定操作。
    @inlinable
    public func disassociateAddress(ecmRegion: String, addressId: String, reallocateNormalPublicIp: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateAddressResponse {
        try await self.disassociateAddress(DisassociateAddressRequest(ecmRegion: ecmRegion, addressId: addressId, reallocateNormalPublicIp: reallocateNormalPublicIp), region: region, logger: logger, on: eventLoop)
    }
}
