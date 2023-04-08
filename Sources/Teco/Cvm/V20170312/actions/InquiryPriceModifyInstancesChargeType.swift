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
    /// InquiryPriceModifyInstancesChargeType请求参数结构体
    public struct InquiryPriceModifyInstancesChargeTypeRequest: TCRequestModel {
        /// 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为100。
        public let instanceIds: [String]

        /// 实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。<br><li>PREPAID：预付费，即包年包月。<br><li>POSTPAID_BY_HOUR：后付费，即按量付费。
        public let instanceChargeType: String

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。<dx-alert infotype="explain" title="">若指定实例的付费模式为预付费则该参数必传。</dx-alert>
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 是否同时切换弹性数据云盘计费模式。取值范围：<br><li>TRUE：表示切换弹性数据云盘计费模式<br><li>FALSE：表示不切换弹性数据云盘计费模式<br><br>默认取值：FALSE。
        public let modifyPortableDataDisk: Bool?

        public init(instanceIds: [String], instanceChargeType: String, instanceChargePrepaid: InstanceChargePrepaid? = nil, modifyPortableDataDisk: Bool? = nil) {
            self.instanceIds = instanceIds
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.modifyPortableDataDisk = modifyPortableDataDisk
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case modifyPortableDataDisk = "ModifyPortableDataDisk"
        }
    }

    /// InquiryPriceModifyInstancesChargeType返回参数结构体
    public struct InquiryPriceModifyInstancesChargeTypeResponse: TCResponseModel {
        /// 该参数表示对应配置实例转换计费模式的价格。
        public let price: Price

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 修改实例计费模式询价
    ///
    /// 本接口 (InquiryPriceModifyInstancesChargeType) 用于切换实例的计费模式询价。
    ///
    /// * 只支持从 `POSTPAID_BY_HOUR` 计费模式切换为`PREPAID`计费模式。
    /// * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例、竞价实例不支持该操作。
    @inlinable
    public func inquiryPriceModifyInstancesChargeType(_ input: InquiryPriceModifyInstancesChargeTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceModifyInstancesChargeTypeResponse> {
        self.client.execute(action: "InquiryPriceModifyInstancesChargeType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例计费模式询价
    ///
    /// 本接口 (InquiryPriceModifyInstancesChargeType) 用于切换实例的计费模式询价。
    ///
    /// * 只支持从 `POSTPAID_BY_HOUR` 计费模式切换为`PREPAID`计费模式。
    /// * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例、竞价实例不支持该操作。
    @inlinable
    public func inquiryPriceModifyInstancesChargeType(_ input: InquiryPriceModifyInstancesChargeTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceModifyInstancesChargeTypeResponse {
        try await self.client.execute(action: "InquiryPriceModifyInstancesChargeType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例计费模式询价
    ///
    /// 本接口 (InquiryPriceModifyInstancesChargeType) 用于切换实例的计费模式询价。
    ///
    /// * 只支持从 `POSTPAID_BY_HOUR` 计费模式切换为`PREPAID`计费模式。
    /// * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例、竞价实例不支持该操作。
    @inlinable
    public func inquiryPriceModifyInstancesChargeType(instanceIds: [String], instanceChargeType: String, instanceChargePrepaid: InstanceChargePrepaid? = nil, modifyPortableDataDisk: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceModifyInstancesChargeTypeResponse> {
        self.inquiryPriceModifyInstancesChargeType(.init(instanceIds: instanceIds, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, modifyPortableDataDisk: modifyPortableDataDisk), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例计费模式询价
    ///
    /// 本接口 (InquiryPriceModifyInstancesChargeType) 用于切换实例的计费模式询价。
    ///
    /// * 只支持从 `POSTPAID_BY_HOUR` 计费模式切换为`PREPAID`计费模式。
    /// * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例、竞价实例不支持该操作。
    @inlinable
    public func inquiryPriceModifyInstancesChargeType(instanceIds: [String], instanceChargeType: String, instanceChargePrepaid: InstanceChargePrepaid? = nil, modifyPortableDataDisk: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceModifyInstancesChargeTypeResponse {
        try await self.inquiryPriceModifyInstancesChargeType(.init(instanceIds: instanceIds, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, modifyPortableDataDisk: modifyPortableDataDisk), region: region, logger: logger, on: eventLoop)
    }
}
