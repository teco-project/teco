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
    /// InquirePriceRenewInstances请求参数结构体
    public struct InquirePriceRenewInstancesRequest: TCRequestModel {
        /// 待续费的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573 )接口返回值中的InstanceId获取。每次请求批量实例的上限为50。
        public let instanceIds: [String]

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 是否续费数据盘。默认值: false, 即不续费。
        public let renewDataDisk: Bool?

        /// 数据盘是否对齐实例到期时间。默认值: false, 即不对齐。
        public let alignInstanceExpiredTime: Bool?

        public init(instanceIds: [String], instanceChargePrepaid: InstanceChargePrepaid? = nil, renewDataDisk: Bool? = nil, alignInstanceExpiredTime: Bool? = nil) {
            self.instanceIds = instanceIds
            self.instanceChargePrepaid = instanceChargePrepaid
            self.renewDataDisk = renewDataDisk
            self.alignInstanceExpiredTime = alignInstanceExpiredTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case renewDataDisk = "RenewDataDisk"
            case alignInstanceExpiredTime = "AlignInstanceExpiredTime"
        }
    }

    /// InquirePriceRenewInstances返回参数结构体
    public struct InquirePriceRenewInstancesResponse: TCResponseModel {
        /// 询价信息。默认为列表中第一个实例的价格信息。
        public let price: Price

        /// 数据盘价格信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataDiskPriceSet: [DataDiskPrice]?

        /// 待续费实例价格列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instancePriceDetailSet: [InstancePriceDetail]?

        /// 总计价格。
        public let totalPrice: TotalPrice

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case dataDiskPriceSet = "DataDiskPriceSet"
            case instancePriceDetailSet = "InstancePriceDetailSet"
            case totalPrice = "TotalPrice"
            case requestId = "RequestId"
        }
    }

    /// 续费实例询价
    ///
    /// 本接口（InquirePriceRenewInstances）用于续费实例询价。
    @inlinable
    public func inquirePriceRenewInstances(_ input: InquirePriceRenewInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceRenewInstancesResponse> {
        self.client.execute(action: "InquirePriceRenewInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 续费实例询价
    ///
    /// 本接口（InquirePriceRenewInstances）用于续费实例询价。
    @inlinable
    public func inquirePriceRenewInstances(_ input: InquirePriceRenewInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceRenewInstancesResponse {
        try await self.client.execute(action: "InquirePriceRenewInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 续费实例询价
    ///
    /// 本接口（InquirePriceRenewInstances）用于续费实例询价。
    @inlinable
    public func inquirePriceRenewInstances(instanceIds: [String], instanceChargePrepaid: InstanceChargePrepaid? = nil, renewDataDisk: Bool? = nil, alignInstanceExpiredTime: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquirePriceRenewInstancesResponse> {
        self.inquirePriceRenewInstances(InquirePriceRenewInstancesRequest(instanceIds: instanceIds, instanceChargePrepaid: instanceChargePrepaid, renewDataDisk: renewDataDisk, alignInstanceExpiredTime: alignInstanceExpiredTime), region: region, logger: logger, on: eventLoop)
    }

    /// 续费实例询价
    ///
    /// 本接口（InquirePriceRenewInstances）用于续费实例询价。
    @inlinable
    public func inquirePriceRenewInstances(instanceIds: [String], instanceChargePrepaid: InstanceChargePrepaid? = nil, renewDataDisk: Bool? = nil, alignInstanceExpiredTime: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceRenewInstancesResponse {
        try await self.inquirePriceRenewInstances(InquirePriceRenewInstancesRequest(instanceIds: instanceIds, instanceChargePrepaid: instanceChargePrepaid, renewDataDisk: renewDataDisk, alignInstanceExpiredTime: alignInstanceExpiredTime), region: region, logger: logger, on: eventLoop)
    }
}
