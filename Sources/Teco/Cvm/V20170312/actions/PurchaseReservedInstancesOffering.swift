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

extension Cvm {
    /// PurchaseReservedInstancesOffering请求参数结构体
    public struct PurchaseReservedInstancesOfferingRequest: TCRequestModel {
        /// 购买预留实例计费数量
        public let instanceCount: Int64

        /// 预留实例计费配置ID
        public let reservedInstancesOfferingId: String

        /// 试运行
        public let dryRun: Bool?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。<br>更多详细信息请参阅：如何保证幂等性
        public let clientToken: String?

        /// 预留实例显示名称。<br><li>不指定实例显示名称则默认显示‘未命名’。</li><li>最多支持60个字符（包含模式串）。</li>
        public let reservedInstanceName: String?

        public init(instanceCount: Int64, reservedInstancesOfferingId: String, dryRun: Bool? = nil, clientToken: String? = nil, reservedInstanceName: String? = nil) {
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

    /// PurchaseReservedInstancesOffering返回参数结构体
    public struct PurchaseReservedInstancesOfferingResponse: TCResponseModel {
        /// 已购买预留实例计费ID
        public let reservedInstanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reservedInstanceId = "ReservedInstanceId"
            case requestId = "RequestId"
        }
    }

    /// 购买预留实例
    ///
    /// 本接口(PurchaseReservedInstancesOffering)用于用户购买一个或者多个指定配置的预留实例
    @inlinable
    public func purchaseReservedInstancesOffering(_ input: PurchaseReservedInstancesOfferingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurchaseReservedInstancesOfferingResponse> {
        self.client.execute(action: "PurchaseReservedInstancesOffering", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购买预留实例
    ///
    /// 本接口(PurchaseReservedInstancesOffering)用于用户购买一个或者多个指定配置的预留实例
    @inlinable
    public func purchaseReservedInstancesOffering(_ input: PurchaseReservedInstancesOfferingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurchaseReservedInstancesOfferingResponse {
        try await self.client.execute(action: "PurchaseReservedInstancesOffering", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 购买预留实例
    ///
    /// 本接口(PurchaseReservedInstancesOffering)用于用户购买一个或者多个指定配置的预留实例
    @inlinable
    public func purchaseReservedInstancesOffering(instanceCount: Int64, reservedInstancesOfferingId: String, dryRun: Bool? = nil, clientToken: String? = nil, reservedInstanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurchaseReservedInstancesOfferingResponse> {
        self.purchaseReservedInstancesOffering(PurchaseReservedInstancesOfferingRequest(instanceCount: instanceCount, reservedInstancesOfferingId: reservedInstancesOfferingId, dryRun: dryRun, clientToken: clientToken, reservedInstanceName: reservedInstanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 购买预留实例
    ///
    /// 本接口(PurchaseReservedInstancesOffering)用于用户购买一个或者多个指定配置的预留实例
    @inlinable
    public func purchaseReservedInstancesOffering(instanceCount: Int64, reservedInstancesOfferingId: String, dryRun: Bool? = nil, clientToken: String? = nil, reservedInstanceName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurchaseReservedInstancesOfferingResponse {
        try await self.purchaseReservedInstancesOffering(PurchaseReservedInstancesOfferingRequest(instanceCount: instanceCount, reservedInstancesOfferingId: reservedInstancesOfferingId, dryRun: dryRun, clientToken: clientToken, reservedInstanceName: reservedInstanceName), region: region, logger: logger, on: eventLoop)
    }
}
