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

extension Mongodb {
    /// ModifyDBInstanceNetworkAddress请求参数结构体
    public struct ModifyDBInstanceNetworkAddressRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 原IP保留时长，单位为分钟；原IP会在约定时间后释放，在释放前原IP和新IP均可访问；0表示立即回收原IP
        public let oldIpExpiredTime: UInt64

        /// 切换后IP地址的归属私有网络统一ID，若为基础网络，该字段为空
        public let newUniqVpcId: String

        /// 切换后IP地址的归属子网统一ID，若为基础网络，该字段为空
        public let newUniqSubnetId: String

        /// 待修改IP信息
        public let networkAddresses: [ModifyNetworkAddress]?

        public init(instanceId: String, oldIpExpiredTime: UInt64, newUniqVpcId: String, newUniqSubnetId: String, networkAddresses: [ModifyNetworkAddress]? = nil) {
            self.instanceId = instanceId
            self.oldIpExpiredTime = oldIpExpiredTime
            self.newUniqVpcId = newUniqVpcId
            self.newUniqSubnetId = newUniqSubnetId
            self.networkAddresses = networkAddresses
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case oldIpExpiredTime = "OldIpExpiredTime"
            case newUniqVpcId = "NewUniqVpcId"
            case newUniqSubnetId = "NewUniqSubnetId"
            case networkAddresses = "NetworkAddresses"
        }
    }

    /// ModifyDBInstanceNetworkAddress返回参数结构体
    public struct ModifyDBInstanceNetworkAddressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改云数据库实例网络信息
    ///
    /// 本接口(ModifyDBInstanceNetworkAddress)用于修改云数据库实例的网络信息，可进行基础网络转VPC网络和VPC网络之间的变换。
    @inlinable @discardableResult
    public func modifyDBInstanceNetworkAddress(_ input: ModifyDBInstanceNetworkAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceNetworkAddressResponse> {
        self.client.execute(action: "ModifyDBInstanceNetworkAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例网络信息
    ///
    /// 本接口(ModifyDBInstanceNetworkAddress)用于修改云数据库实例的网络信息，可进行基础网络转VPC网络和VPC网络之间的变换。
    @inlinable @discardableResult
    public func modifyDBInstanceNetworkAddress(_ input: ModifyDBInstanceNetworkAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceNetworkAddressResponse {
        try await self.client.execute(action: "ModifyDBInstanceNetworkAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云数据库实例网络信息
    ///
    /// 本接口(ModifyDBInstanceNetworkAddress)用于修改云数据库实例的网络信息，可进行基础网络转VPC网络和VPC网络之间的变换。
    @inlinable @discardableResult
    public func modifyDBInstanceNetworkAddress(instanceId: String, oldIpExpiredTime: UInt64, newUniqVpcId: String, newUniqSubnetId: String, networkAddresses: [ModifyNetworkAddress]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBInstanceNetworkAddressResponse> {
        self.modifyDBInstanceNetworkAddress(ModifyDBInstanceNetworkAddressRequest(instanceId: instanceId, oldIpExpiredTime: oldIpExpiredTime, newUniqVpcId: newUniqVpcId, newUniqSubnetId: newUniqSubnetId, networkAddresses: networkAddresses), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例网络信息
    ///
    /// 本接口(ModifyDBInstanceNetworkAddress)用于修改云数据库实例的网络信息，可进行基础网络转VPC网络和VPC网络之间的变换。
    @inlinable @discardableResult
    public func modifyDBInstanceNetworkAddress(instanceId: String, oldIpExpiredTime: UInt64, newUniqVpcId: String, newUniqSubnetId: String, networkAddresses: [ModifyNetworkAddress]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceNetworkAddressResponse {
        try await self.modifyDBInstanceNetworkAddress(ModifyDBInstanceNetworkAddressRequest(instanceId: instanceId, oldIpExpiredTime: oldIpExpiredTime, newUniqVpcId: newUniqVpcId, newUniqSubnetId: newUniqSubnetId, networkAddresses: networkAddresses), region: region, logger: logger, on: eventLoop)
    }
}
