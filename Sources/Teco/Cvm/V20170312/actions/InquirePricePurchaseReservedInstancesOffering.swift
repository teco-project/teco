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
    /// InquirePricePurchaseReservedInstancesOffering请求参数结构体
    public struct InquirePricePurchaseReservedInstancesOfferingRequest: TCRequestModel {
        /// 购买预留实例计费数量
        public let instanceCount: UInt64

        /// 预留实例计费配置ID
        public let reservedInstancesOfferingId: String

        /// 试运行
        public let dryRun: Bool?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        ///
        /// 更多详细信息请参阅：如何保证幂等性
        public let clientToken: String?

        /// 预留实例显示名称。
        ///
        /// <li>不指定实例显示名称则默认显示‘未命名’。</li><li>最多支持60个字符（包含模式串）。</li>
        public let reservedInstanceName: String?

        public init(instanceCount: UInt64, reservedInstancesOfferingId: String, dryRun: Bool? = nil, clientToken: String? = nil, reservedInstanceName: String? = nil) {
            self.instanceCount = instanceCount
            self.reservedInstancesOfferingId = reservedInstancesOfferingId
            self.dryRun = dryRun
            self.clientToken = clientToken
            self.reservedInstanceName = reservedInstanceName
        }

        enum CodingKeys: String, CodingKey {
            case instanceCount = "InstanceCount"
            case reservedInstancesOfferingId = "ReservedInstancesOfferingId"
            case dryRun = "DryRun"
            case clientToken = "ClientToken"
            case reservedInstanceName = "ReservedInstanceName"
        }
    }

    /// InquirePricePurchaseReservedInstancesOffering返回参数结构体
    public struct InquirePricePurchaseReservedInstancesOfferingResponse: TCResponseModel {
        /// 该参数表示对应配置预留实例的价格。
        public let price: ReservedInstancePrice

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 创建预留实例询价
    ///
    /// 本接口(InquirePricePurchaseReservedInstancesOffering)用于创建预留实例询价。本接口仅允许针对购买限制范围内的预留实例配置进行询价。预留实例当前只针对国际站白名单用户开放。
    @inlinable
    public func inquirePricePurchaseReservedInstancesOffering(_ input: InquirePricePurchaseReservedInstancesOfferingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePricePurchaseReservedInstancesOfferingResponse> {
        self.client.execute(action: "InquirePricePurchaseReservedInstancesOffering", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建预留实例询价
    ///
    /// 本接口(InquirePricePurchaseReservedInstancesOffering)用于创建预留实例询价。本接口仅允许针对购买限制范围内的预留实例配置进行询价。预留实例当前只针对国际站白名单用户开放。
    @inlinable
    public func inquirePricePurchaseReservedInstancesOffering(_ input: InquirePricePurchaseReservedInstancesOfferingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePricePurchaseReservedInstancesOfferingResponse {
        try await self.client.execute(action: "InquirePricePurchaseReservedInstancesOffering", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建预留实例询价
    ///
    /// 本接口(InquirePricePurchaseReservedInstancesOffering)用于创建预留实例询价。本接口仅允许针对购买限制范围内的预留实例配置进行询价。预留实例当前只针对国际站白名单用户开放。
    @inlinable
    public func inquirePricePurchaseReservedInstancesOffering(instanceCount: UInt64, reservedInstancesOfferingId: String, dryRun: Bool? = nil, clientToken: String? = nil, reservedInstanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePricePurchaseReservedInstancesOfferingResponse> {
        self.inquirePricePurchaseReservedInstancesOffering(.init(instanceCount: instanceCount, reservedInstancesOfferingId: reservedInstancesOfferingId, dryRun: dryRun, clientToken: clientToken, reservedInstanceName: reservedInstanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建预留实例询价
    ///
    /// 本接口(InquirePricePurchaseReservedInstancesOffering)用于创建预留实例询价。本接口仅允许针对购买限制范围内的预留实例配置进行询价。预留实例当前只针对国际站白名单用户开放。
    @inlinable
    public func inquirePricePurchaseReservedInstancesOffering(instanceCount: UInt64, reservedInstancesOfferingId: String, dryRun: Bool? = nil, clientToken: String? = nil, reservedInstanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePricePurchaseReservedInstancesOfferingResponse {
        try await self.inquirePricePurchaseReservedInstancesOffering(.init(instanceCount: instanceCount, reservedInstancesOfferingId: reservedInstancesOfferingId, dryRun: dryRun, clientToken: clientToken, reservedInstanceName: reservedInstanceName), region: region, logger: logger, on: eventLoop)
    }
}
