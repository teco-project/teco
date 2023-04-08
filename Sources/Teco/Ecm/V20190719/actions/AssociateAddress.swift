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

extension Ecm {
    /// AssociateAddress请求参数结构体
    public struct AssociateAddressRequest: TCRequestModel {
        /// ECM 地域
        public let ecmRegion: String

        /// 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：eip-11112222。
        public let addressId: String

        /// 要绑定的实例 ID。
        public let instanceId: String?

        /// 要绑定的弹性网卡 ID。 弹性网卡 ID 形如：eni-11112222。NetworkInterfaceId 与 InstanceId 不可同时指定。弹性网卡 ID 可通过DescribeNetworkInterfaces接口返回值中的networkInterfaceId获取。
        public let networkInterfaceId: String?

        /// 要绑定的内网 IP。如果指定了 NetworkInterfaceId 则也必须指定 PrivateIpAddress ，表示将 EIP 绑定到指定弹性网卡的指定内网 IP 上。同时要确保指定的 PrivateIpAddress 是指定的 NetworkInterfaceId 上的一个内网 IP。指定弹性网卡的内网 IP 可通过DescribeNetworkInterfaces接口返回值中的privateIpAddress获取。
        public let privateIpAddress: String?

        public init(ecmRegion: String, addressId: String, instanceId: String? = nil, networkInterfaceId: String? = nil, privateIpAddress: String? = nil) {
            self.ecmRegion = ecmRegion
            self.addressId = addressId
            self.instanceId = instanceId
            self.networkInterfaceId = networkInterfaceId
            self.privateIpAddress = privateIpAddress
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case addressId = "AddressId"
            case instanceId = "InstanceId"
            case networkInterfaceId = "NetworkInterfaceId"
            case privateIpAddress = "PrivateIpAddress"
        }
    }

    /// AssociateAddress返回参数结构体
    public struct AssociateAddressResponse: TCResponseModel {
        /// 异步任务TaskId。可以使用DescribeTaskResult接口查询任务状态。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 绑定弹性公网IP
    ///
    /// 将弹性公网IP（简称 EIP）绑定到实例或弹性网卡的指定内网 IP 上。
    /// 将 EIP 绑定到实例（ECM）上，其本质是将 EIP 绑定到实例上主网卡的主内网 IP 上。
    /// 将 EIP 绑定到指定网卡的内网 IP上，内网IP已经绑定了EIP或普通公网IP，则反馈失败。必须先解绑该 EIP，才能再绑定新的。
    /// 只有状态为 UNBIND 的 EIP 才能够绑定内网IP。
    @inlinable
    public func associateAddress(_ input: AssociateAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateAddressResponse> {
        self.client.execute(action: "AssociateAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定弹性公网IP
    ///
    /// 将弹性公网IP（简称 EIP）绑定到实例或弹性网卡的指定内网 IP 上。
    /// 将 EIP 绑定到实例（ECM）上，其本质是将 EIP 绑定到实例上主网卡的主内网 IP 上。
    /// 将 EIP 绑定到指定网卡的内网 IP上，内网IP已经绑定了EIP或普通公网IP，则反馈失败。必须先解绑该 EIP，才能再绑定新的。
    /// 只有状态为 UNBIND 的 EIP 才能够绑定内网IP。
    @inlinable
    public func associateAddress(_ input: AssociateAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateAddressResponse {
        try await self.client.execute(action: "AssociateAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定弹性公网IP
    ///
    /// 将弹性公网IP（简称 EIP）绑定到实例或弹性网卡的指定内网 IP 上。
    /// 将 EIP 绑定到实例（ECM）上，其本质是将 EIP 绑定到实例上主网卡的主内网 IP 上。
    /// 将 EIP 绑定到指定网卡的内网 IP上，内网IP已经绑定了EIP或普通公网IP，则反馈失败。必须先解绑该 EIP，才能再绑定新的。
    /// 只有状态为 UNBIND 的 EIP 才能够绑定内网IP。
    @inlinable
    public func associateAddress(ecmRegion: String, addressId: String, instanceId: String? = nil, networkInterfaceId: String? = nil, privateIpAddress: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateAddressResponse> {
        self.associateAddress(.init(ecmRegion: ecmRegion, addressId: addressId, instanceId: instanceId, networkInterfaceId: networkInterfaceId, privateIpAddress: privateIpAddress), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定弹性公网IP
    ///
    /// 将弹性公网IP（简称 EIP）绑定到实例或弹性网卡的指定内网 IP 上。
    /// 将 EIP 绑定到实例（ECM）上，其本质是将 EIP 绑定到实例上主网卡的主内网 IP 上。
    /// 将 EIP 绑定到指定网卡的内网 IP上，内网IP已经绑定了EIP或普通公网IP，则反馈失败。必须先解绑该 EIP，才能再绑定新的。
    /// 只有状态为 UNBIND 的 EIP 才能够绑定内网IP。
    @inlinable
    public func associateAddress(ecmRegion: String, addressId: String, instanceId: String? = nil, networkInterfaceId: String? = nil, privateIpAddress: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateAddressResponse {
        try await self.associateAddress(.init(ecmRegion: ecmRegion, addressId: addressId, instanceId: instanceId, networkInterfaceId: networkInterfaceId, privateIpAddress: privateIpAddress), region: region, logger: logger, on: eventLoop)
    }
}
