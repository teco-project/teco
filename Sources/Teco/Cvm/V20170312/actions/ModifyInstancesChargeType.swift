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
    /// ModifyInstancesChargeType请求参数结构体
    public struct ModifyInstancesChargeTypeRequest: TCRequest {
        /// 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。每次请求批量实例的上限为30。
        public let instanceIds: [String]

        /// 实例[计费类型](https://cloud.tencent.com/document/product/213/2180)。
        ///
        /// - PREPAID：预付费，即包年包月。
        /// - POSTPAID_BY_HOUR：后付费，即按量付费。
        public let instanceChargeType: String

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。
        /// > Note: 若指定实例的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 是否同时切换弹性数据云盘计费模式。取值范围：
        ///
        /// - TRUE：表示切换弹性数据云盘计费模式
        /// - FALSE：表示不切换弹性数据云盘计费模式
        ///
        /// 默认取值：FALSE。
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

    /// ModifyInstancesChargeType返回参数结构体
    public struct ModifyInstancesChargeTypeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例计费模式
    ///
    /// 本接口 (ModifyInstancesChargeType) 用于切换实例的计费模式。
    ///
    /// * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例不支持该操作。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func modifyInstancesChargeType(_ input: ModifyInstancesChargeTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstancesChargeTypeResponse> {
        self.client.execute(action: "ModifyInstancesChargeType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例计费模式
    ///
    /// 本接口 (ModifyInstancesChargeType) 用于切换实例的计费模式。
    ///
    /// * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例不支持该操作。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func modifyInstancesChargeType(_ input: ModifyInstancesChargeTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancesChargeTypeResponse {
        try await self.client.execute(action: "ModifyInstancesChargeType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例计费模式
    ///
    /// 本接口 (ModifyInstancesChargeType) 用于切换实例的计费模式。
    ///
    /// * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例不支持该操作。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func modifyInstancesChargeType(instanceIds: [String], instanceChargeType: String, instanceChargePrepaid: InstanceChargePrepaid? = nil, modifyPortableDataDisk: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstancesChargeTypeResponse> {
        self.modifyInstancesChargeType(.init(instanceIds: instanceIds, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, modifyPortableDataDisk: modifyPortableDataDisk), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例计费模式
    ///
    /// 本接口 (ModifyInstancesChargeType) 用于切换实例的计费模式。
    ///
    /// * 关机不收费的实例、`BC1`和`BS1`机型族的实例、设置定时销毁的实例不支持该操作。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    @inlinable @discardableResult
    public func modifyInstancesChargeType(instanceIds: [String], instanceChargeType: String, instanceChargePrepaid: InstanceChargePrepaid? = nil, modifyPortableDataDisk: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancesChargeTypeResponse {
        try await self.modifyInstancesChargeType(.init(instanceIds: instanceIds, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, modifyPortableDataDisk: modifyPortableDataDisk), region: region, logger: logger, on: eventLoop)
    }
}
