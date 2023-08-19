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
    /// InquiryPriceResizeInstanceDisks请求参数结构体
    public struct InquiryPriceResizeInstanceDisksRequest: TCRequest {
        /// 待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。
        public let instanceId: String

        /// 待扩容的数据盘配置信息。只支持扩容非弹性数据盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性），且[数据盘类型](https://cloud.tencent.com/document/product/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`。数据盘容量单位：GB。最小扩容步长：10G。关于数据盘类型的选择请参考硬盘产品简介。可选数据盘类型受到实例类型`InstanceType`限制。另外允许扩容的最大容量也因数据盘类型的不同而有所差异。
        public let dataDisks: [DataDisk]?

        /// 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机，然后再重置用户密码。取值范围：
        ///
        /// - TRUE：表示在正常关机失败后进行强制关机
        /// - FALSE：表示在正常关机失败后不进行强制关机
        ///
        /// 默认取值：FALSE。
        ///
        /// 强制关机的效果等同于关闭物理计算机的电源开关。强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。
        public let forceStop: Bool?

        public init(instanceId: String, dataDisks: [DataDisk]? = nil, forceStop: Bool? = nil) {
            self.instanceId = instanceId
            self.dataDisks = dataDisks
            self.forceStop = forceStop
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dataDisks = "DataDisks"
            case forceStop = "ForceStop"
        }
    }

    /// InquiryPriceResizeInstanceDisks返回参数结构体
    public struct InquiryPriceResizeInstanceDisksResponse: TCResponse {
        /// 该参数表示磁盘扩容成对应配置的价格。
        public let price: Price

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 扩容实例磁盘询价
    ///
    /// 本接口 (InquiryPriceResizeInstanceDisks) 用于扩容实例的数据盘询价。
    ///
    /// * 目前只支持扩容非弹性数据盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性）询价，且[数据盘类型](https://cloud.tencent.com/document/product/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`。
    /// * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口扩容数据盘询价。* 仅支持包年包月实例随机器购买的数据盘。* 目前只支持扩容一块数据盘询价。
    @inlinable
    public func inquiryPriceResizeInstanceDisks(_ input: InquiryPriceResizeInstanceDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceResizeInstanceDisksResponse> {
        self.client.execute(action: "InquiryPriceResizeInstanceDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 扩容实例磁盘询价
    ///
    /// 本接口 (InquiryPriceResizeInstanceDisks) 用于扩容实例的数据盘询价。
    ///
    /// * 目前只支持扩容非弹性数据盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性）询价，且[数据盘类型](https://cloud.tencent.com/document/product/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`。
    /// * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口扩容数据盘询价。* 仅支持包年包月实例随机器购买的数据盘。* 目前只支持扩容一块数据盘询价。
    @inlinable
    public func inquiryPriceResizeInstanceDisks(_ input: InquiryPriceResizeInstanceDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceResizeInstanceDisksResponse {
        try await self.client.execute(action: "InquiryPriceResizeInstanceDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 扩容实例磁盘询价
    ///
    /// 本接口 (InquiryPriceResizeInstanceDisks) 用于扩容实例的数据盘询价。
    ///
    /// * 目前只支持扩容非弹性数据盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性）询价，且[数据盘类型](https://cloud.tencent.com/document/product/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`。
    /// * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口扩容数据盘询价。* 仅支持包年包月实例随机器购买的数据盘。* 目前只支持扩容一块数据盘询价。
    @inlinable
    public func inquiryPriceResizeInstanceDisks(instanceId: String, dataDisks: [DataDisk]? = nil, forceStop: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceResizeInstanceDisksResponse> {
        self.inquiryPriceResizeInstanceDisks(.init(instanceId: instanceId, dataDisks: dataDisks, forceStop: forceStop), region: region, logger: logger, on: eventLoop)
    }

    /// 扩容实例磁盘询价
    ///
    /// 本接口 (InquiryPriceResizeInstanceDisks) 用于扩容实例的数据盘询价。
    ///
    /// * 目前只支持扩容非弹性数据盘（[`DescribeDisks`](https://cloud.tencent.com/document/api/362/16315)接口返回值中的`Portable`为`false`表示非弹性）询价，且[数据盘类型](https://cloud.tencent.com/document/product/213/15753#DataDisk)为：`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`。
    /// * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口扩容数据盘询价。* 仅支持包年包月实例随机器购买的数据盘。* 目前只支持扩容一块数据盘询价。
    @inlinable
    public func inquiryPriceResizeInstanceDisks(instanceId: String, dataDisks: [DataDisk]? = nil, forceStop: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceResizeInstanceDisksResponse {
        try await self.inquiryPriceResizeInstanceDisks(.init(instanceId: instanceId, dataDisks: dataDisks, forceStop: forceStop), region: region, logger: logger, on: eventLoop)
    }
}
