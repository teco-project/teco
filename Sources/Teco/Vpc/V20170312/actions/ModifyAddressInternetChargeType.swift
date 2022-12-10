//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// 调整弹性公网ip计费模式
    ///
    /// 该接口用于调整具有带宽属性弹性公网IP的网络计费模式
    /// * 支持BANDWIDTH_PREPAID_BY_MONTH和TRAFFIC_POSTPAID_BY_HOUR两种网络计费模式之间的切换。
    /// * 每个弹性公网IP支持调整两次，次数超出则无法调整。
    @inlinable
    public func modifyAddressInternetChargeType(_ input: ModifyAddressInternetChargeTypeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAddressInternetChargeTypeResponse > {
        self.client.execute(action: "ModifyAddressInternetChargeType", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 调整弹性公网ip计费模式
    ///
    /// 该接口用于调整具有带宽属性弹性公网IP的网络计费模式
    /// * 支持BANDWIDTH_PREPAID_BY_MONTH和TRAFFIC_POSTPAID_BY_HOUR两种网络计费模式之间的切换。
    /// * 每个弹性公网IP支持调整两次，次数超出则无法调整。
    @inlinable
    public func modifyAddressInternetChargeType(_ input: ModifyAddressInternetChargeTypeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressInternetChargeTypeResponse {
        try await self.client.execute(action: "ModifyAddressInternetChargeType", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAddressInternetChargeType请求参数结构体
    public struct ModifyAddressInternetChargeTypeRequest: TCRequestModel {
        /// 弹性公网IP的唯一ID，形如eip-xxx
        public let addressId: String
        
        /// 弹性公网IP调整目标计费模式，只支持"BANDWIDTH_PREPAID_BY_MONTH"和"TRAFFIC_POSTPAID_BY_HOUR"
        public let internetChargeType: String
        
        /// 弹性公网IP调整目标带宽值
        public let internetMaxBandwidthOut: UInt64
        
        /// 包月带宽网络计费模式参数。弹性公网IP的调整目标计费模式是"BANDWIDTH_PREPAID_BY_MONTH"时，必传该参数。
        public let addressChargePrepaid: AddressChargePrepaid
        
        public init (addressId: String, internetChargeType: String, internetMaxBandwidthOut: UInt64, addressChargePrepaid: AddressChargePrepaid) {
            self.addressId = addressId
            self.internetChargeType = internetChargeType
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.addressChargePrepaid = addressChargePrepaid
        }
        
        enum CodingKeys: String, CodingKey {
            case addressId = "AddressId"
            case internetChargeType = "InternetChargeType"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case addressChargePrepaid = "AddressChargePrepaid"
        }
    }
    
    /// ModifyAddressInternetChargeType返回参数结构体
    public struct ModifyAddressInternetChargeTypeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
