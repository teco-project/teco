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
    /// ModifyInstanceDiskType请求参数结构体
    public struct ModifyInstanceDiskTypeRequest: TCRequest {
        /// 待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/9388)接口返回值中的`InstanceId`获取。
        public let instanceId: String

        /// 实例数据盘配置信息，只需要指定要转换的目标云硬盘的介质类型，指定DiskType的值，当前只支持一个数据盘转化。只支持CDHPAID类型实例指定CdcId参数。
        public let dataDisks: [DataDisk]?

        /// 实例系统盘配置信息，只需要指定要转换的目标云硬盘的介质类型，指定DiskType的值。只支持CDHPAID类型实例指定CdcId参数。
        public let systemDisk: SystemDisk?

        public init(instanceId: String, dataDisks: [DataDisk]? = nil, systemDisk: SystemDisk? = nil) {
            self.instanceId = instanceId
            self.dataDisks = dataDisks
            self.systemDisk = systemDisk
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dataDisks = "DataDisks"
            case systemDisk = "SystemDisk"
        }
    }

    /// ModifyInstanceDiskType返回参数结构体
    public struct ModifyInstanceDiskTypeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改实例的硬盘介质
    ///
    /// 本接口 (ModifyInstanceDiskType) 用于修改实例硬盘介质类型。
    ///
    /// * 只支持实例的本地系统盘、本地数据盘转化成指定云硬盘介质。
    /// * 只支持实例在关机状态下转换成指定云硬盘介质。
    /// * 不支持竞价实例类型。
    /// * 若实例同时存在本地系统盘和本地数据盘，需同时调整系统盘和数据盘的介质类型，不支持单独针对本地系统盘或本地数据盘修改介质类型。
    /// * 修改前请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/378/4397)接口查询账户余额。
    @inlinable @discardableResult
    public func modifyInstanceDiskType(_ input: ModifyInstanceDiskTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceDiskTypeResponse> {
        self.client.execute(action: "ModifyInstanceDiskType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改实例的硬盘介质
    ///
    /// 本接口 (ModifyInstanceDiskType) 用于修改实例硬盘介质类型。
    ///
    /// * 只支持实例的本地系统盘、本地数据盘转化成指定云硬盘介质。
    /// * 只支持实例在关机状态下转换成指定云硬盘介质。
    /// * 不支持竞价实例类型。
    /// * 若实例同时存在本地系统盘和本地数据盘，需同时调整系统盘和数据盘的介质类型，不支持单独针对本地系统盘或本地数据盘修改介质类型。
    /// * 修改前请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/378/4397)接口查询账户余额。
    @inlinable @discardableResult
    public func modifyInstanceDiskType(_ input: ModifyInstanceDiskTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceDiskTypeResponse {
        try await self.client.execute(action: "ModifyInstanceDiskType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改实例的硬盘介质
    ///
    /// 本接口 (ModifyInstanceDiskType) 用于修改实例硬盘介质类型。
    ///
    /// * 只支持实例的本地系统盘、本地数据盘转化成指定云硬盘介质。
    /// * 只支持实例在关机状态下转换成指定云硬盘介质。
    /// * 不支持竞价实例类型。
    /// * 若实例同时存在本地系统盘和本地数据盘，需同时调整系统盘和数据盘的介质类型，不支持单独针对本地系统盘或本地数据盘修改介质类型。
    /// * 修改前请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/378/4397)接口查询账户余额。
    @inlinable @discardableResult
    public func modifyInstanceDiskType(instanceId: String, dataDisks: [DataDisk]? = nil, systemDisk: SystemDisk? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyInstanceDiskTypeResponse> {
        self.modifyInstanceDiskType(.init(instanceId: instanceId, dataDisks: dataDisks, systemDisk: systemDisk), region: region, logger: logger, on: eventLoop)
    }

    /// 修改实例的硬盘介质
    ///
    /// 本接口 (ModifyInstanceDiskType) 用于修改实例硬盘介质类型。
    ///
    /// * 只支持实例的本地系统盘、本地数据盘转化成指定云硬盘介质。
    /// * 只支持实例在关机状态下转换成指定云硬盘介质。
    /// * 不支持竞价实例类型。
    /// * 若实例同时存在本地系统盘和本地数据盘，需同时调整系统盘和数据盘的介质类型，不支持单独针对本地系统盘或本地数据盘修改介质类型。
    /// * 修改前请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/378/4397)接口查询账户余额。
    @inlinable @discardableResult
    public func modifyInstanceDiskType(instanceId: String, dataDisks: [DataDisk]? = nil, systemDisk: SystemDisk? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceDiskTypeResponse {
        try await self.modifyInstanceDiskType(.init(instanceId: instanceId, dataDisks: dataDisks, systemDisk: systemDisk), region: region, logger: logger, on: eventLoop)
    }
}
