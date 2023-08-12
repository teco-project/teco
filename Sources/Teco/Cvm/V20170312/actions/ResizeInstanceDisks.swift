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
    /// ResizeInstanceDisks请求参数结构体
    public struct ResizeInstanceDisksRequest: TCRequestModel {
        /// 待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。
        public let instanceId: String

        /// 待扩容的数据盘配置信息。只支持扩容非弹性数据盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性），且[数据盘类型](/document/api/213/9452#block_device)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`。数据盘容量单位：GB。最小扩容步长：10G。关于数据盘类型的选择请参考[硬盘产品简介](https://cloud.tencent.com/document/product/362/2353)。可选数据盘类型受到实例类型`InstanceType`限制。另外允许扩容的最大容量也因数据盘类型的不同而有所差异。
        public let dataDisks: [DataDisk]?

        /// 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机，然后再重置用户密码。取值范围：
        ///
        /// <li>TRUE：表示在正常关机失败后进行强制关机
        ///
        /// <li>FALSE：表示在正常关机失败后不进行强制关机
        ///
        /// 默认取值：FALSE。
        ///
        /// 强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
        public let forceStop: Bool?

        /// 待扩容的系统盘配置信息。只支持扩容云盘。
        public let systemDisk: SystemDisk?

        /// 扩容云盘的方式是否为在线扩容。
        public let resizeOnline: Bool?

        public init(instanceId: String, dataDisks: [DataDisk]? = nil, forceStop: Bool? = nil, systemDisk: SystemDisk? = nil, resizeOnline: Bool? = nil) {
            self.instanceId = instanceId
            self.dataDisks = dataDisks
            self.forceStop = forceStop
            self.systemDisk = systemDisk
            self.resizeOnline = resizeOnline
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dataDisks = "DataDisks"
            case forceStop = "ForceStop"
            case systemDisk = "SystemDisk"
            case resizeOnline = "ResizeOnline"
        }
    }

    /// ResizeInstanceDisks返回参数结构体
    public struct ResizeInstanceDisksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 扩容实例磁盘
    ///
    /// 本接口 (ResizeInstanceDisks) 用于扩容实例的数据盘。
    ///
    /// * 目前只支持扩容非弹性盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性），且[数据盘类型](https://cloud.tencent.com/document/api/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`和[CDH](https://cloud.tencent.com/document/product/416)实例的`LOCAL_BASIC`、`LOCAL_SSD`类型数据盘。
    /// * 对于包年包月实例，使用该接口会涉及扣费，请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
    /// * 目前只支持扩容一块数据盘。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    /// * 如果是系统盘，目前只支持扩容，不支持缩容。
    @inlinable @discardableResult
    public func resizeInstanceDisks(_ input: ResizeInstanceDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResizeInstanceDisksResponse> {
        self.client.execute(action: "ResizeInstanceDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 扩容实例磁盘
    ///
    /// 本接口 (ResizeInstanceDisks) 用于扩容实例的数据盘。
    ///
    /// * 目前只支持扩容非弹性盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性），且[数据盘类型](https://cloud.tencent.com/document/api/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`和[CDH](https://cloud.tencent.com/document/product/416)实例的`LOCAL_BASIC`、`LOCAL_SSD`类型数据盘。
    /// * 对于包年包月实例，使用该接口会涉及扣费，请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
    /// * 目前只支持扩容一块数据盘。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    /// * 如果是系统盘，目前只支持扩容，不支持缩容。
    @inlinable @discardableResult
    public func resizeInstanceDisks(_ input: ResizeInstanceDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResizeInstanceDisksResponse {
        try await self.client.execute(action: "ResizeInstanceDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 扩容实例磁盘
    ///
    /// 本接口 (ResizeInstanceDisks) 用于扩容实例的数据盘。
    ///
    /// * 目前只支持扩容非弹性盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性），且[数据盘类型](https://cloud.tencent.com/document/api/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`和[CDH](https://cloud.tencent.com/document/product/416)实例的`LOCAL_BASIC`、`LOCAL_SSD`类型数据盘。
    /// * 对于包年包月实例，使用该接口会涉及扣费，请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
    /// * 目前只支持扩容一块数据盘。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    /// * 如果是系统盘，目前只支持扩容，不支持缩容。
    @inlinable @discardableResult
    public func resizeInstanceDisks(instanceId: String, dataDisks: [DataDisk]? = nil, forceStop: Bool? = nil, systemDisk: SystemDisk? = nil, resizeOnline: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResizeInstanceDisksResponse> {
        self.resizeInstanceDisks(.init(instanceId: instanceId, dataDisks: dataDisks, forceStop: forceStop, systemDisk: systemDisk, resizeOnline: resizeOnline), region: region, logger: logger, on: eventLoop)
    }

    /// 扩容实例磁盘
    ///
    /// 本接口 (ResizeInstanceDisks) 用于扩容实例的数据盘。
    ///
    /// * 目前只支持扩容非弹性盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性），且[数据盘类型](https://cloud.tencent.com/document/api/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`和[CDH](https://cloud.tencent.com/document/product/416)实例的`LOCAL_BASIC`、`LOCAL_SSD`类型数据盘。
    /// * 对于包年包月实例，使用该接口会涉及扣费，请确保账户余额充足。可通过[`DescribeAccountBalance`](https://cloud.tencent.com/document/product/555/20253)接口查询账户余额。
    /// * 目前只支持扩容一块数据盘。
    /// * 实例操作结果可以通过调用 [DescribeInstances](https://cloud.tencent.com/document/api/213/15728#.E7.A4.BA.E4.BE.8B3-.E6.9F.A5.E8.AF.A2.E5.AE.9E.E4.BE.8B.E7.9A.84.E6.9C.80.E6.96.B0.E6.93.8D.E4.BD.9C.E6.83.85.E5.86.B5) 接口查询，如果实例的最新操作状态(LatestOperationState)为“SUCCESS”，则代表操作成功。
    /// * 如果是系统盘，目前只支持扩容，不支持缩容。
    @inlinable @discardableResult
    public func resizeInstanceDisks(instanceId: String, dataDisks: [DataDisk]? = nil, forceStop: Bool? = nil, systemDisk: SystemDisk? = nil, resizeOnline: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResizeInstanceDisksResponse {
        try await self.resizeInstanceDisks(.init(instanceId: instanceId, dataDisks: dataDisks, forceStop: forceStop, systemDisk: systemDisk, resizeOnline: resizeOnline), region: region, logger: logger, on: eventLoop)
    }
}
