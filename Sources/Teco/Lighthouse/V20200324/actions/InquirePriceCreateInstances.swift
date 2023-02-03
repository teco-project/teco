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

extension Lighthouse {
    /// InquirePriceCreateInstances请求参数结构体
    public struct InquirePriceCreateInstancesRequest: TCRequestModel {
        /// 实例的套餐 ID。
        public let bundleId: String

        /// 创建数量，默认为 1。
        public let instanceCount: Int64?

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 应用镜像 ID，使用收费应用镜像时必填。可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        public let blueprintId: String?

        public init(bundleId: String, instanceCount: Int64? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, blueprintId: String? = nil) {
            self.bundleId = bundleId
            self.instanceCount = instanceCount
            self.instanceChargePrepaid = instanceChargePrepaid
            self.blueprintId = blueprintId
        }

        enum CodingKeys: String, CodingKey {
            case bundleId = "BundleId"
            case instanceCount = "InstanceCount"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case blueprintId = "BlueprintId"
        }
    }

    /// InquirePriceCreateInstances返回参数结构体
    public struct InquirePriceCreateInstancesResponse: TCResponseModel {
        /// 询价信息。
        public let price: Price

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 创建实例询价
    ///
    /// 本接口（InquiryPriceCreateInstances）用于创建实例询价。
    @inlinable
    public func inquirePriceCreateInstances(_ input: InquirePriceCreateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceCreateInstancesResponse> {
        self.client.execute(action: "InquirePriceCreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例询价
    ///
    /// 本接口（InquiryPriceCreateInstances）用于创建实例询价。
    @inlinable
    public func inquirePriceCreateInstances(_ input: InquirePriceCreateInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceCreateInstancesResponse {
        try await self.client.execute(action: "InquirePriceCreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例询价
    ///
    /// 本接口（InquiryPriceCreateInstances）用于创建实例询价。
    @inlinable
    public func inquirePriceCreateInstances(bundleId: String, instanceCount: Int64? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, blueprintId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceCreateInstancesResponse> {
        let input = InquirePriceCreateInstancesRequest(bundleId: bundleId, instanceCount: instanceCount, instanceChargePrepaid: instanceChargePrepaid, blueprintId: blueprintId)
        return self.client.execute(action: "InquirePriceCreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例询价
    ///
    /// 本接口（InquiryPriceCreateInstances）用于创建实例询价。
    @inlinable
    public func inquirePriceCreateInstances(bundleId: String, instanceCount: Int64? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, blueprintId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceCreateInstancesResponse {
        let input = InquirePriceCreateInstancesRequest(bundleId: bundleId, instanceCount: instanceCount, instanceChargePrepaid: instanceChargePrepaid, blueprintId: blueprintId)
        return try await self.client.execute(action: "InquirePriceCreateInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
