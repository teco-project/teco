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

extension Cvm {
    /// InquiryPriceResetInstancesType请求参数结构体
    public struct InquiryPriceResetInstancesTypeRequest: TCRequestModel {
        /// 一个或多个待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。本接口每次请求批量实例的上限为1。
        public let instanceIds: [String]

        /// 实例机型。不同实例机型指定了不同的资源规格，具体取值可参见附表[实例资源规格](https://cloud.tencent.com/document/product/213/11518)对照表，也可以调用查询[实例资源规格列表](https://cloud.tencent.com/document/product/213/15749)接口获得最新的规格表。
        public let instanceType: String

        public init(instanceIds: [String], instanceType: String) {
            self.instanceIds = instanceIds
            self.instanceType = instanceType
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case instanceType = "InstanceType"
        }
    }

    /// InquiryPriceResetInstancesType返回参数结构体
    public struct InquiryPriceResetInstancesTypeResponse: TCResponseModel {
        /// 该参数表示调整成对应机型实例的价格。
        public let price: Price

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case price = "Price"
            case requestId = "RequestId"
        }
    }

    /// 调整实例配置询价
    ///
    /// 本接口 (InquiryPriceResetInstancesType) 用于调整实例的机型询价。
    ///
    /// * 目前只支持[系统盘类型](https://cloud.tencent.com/document/product/213/15753#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口进行调整机型询价。
    /// * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口调整机型询价。
    @inlinable
    public func inquiryPriceResetInstancesType(_ input: InquiryPriceResetInstancesTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceResetInstancesTypeResponse> {
        self.client.execute(action: "InquiryPriceResetInstancesType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整实例配置询价
    ///
    /// 本接口 (InquiryPriceResetInstancesType) 用于调整实例的机型询价。
    ///
    /// * 目前只支持[系统盘类型](https://cloud.tencent.com/document/product/213/15753#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口进行调整机型询价。
    /// * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口调整机型询价。
    @inlinable
    public func inquiryPriceResetInstancesType(_ input: InquiryPriceResetInstancesTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceResetInstancesTypeResponse {
        try await self.client.execute(action: "InquiryPriceResetInstancesType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整实例配置询价
    ///
    /// 本接口 (InquiryPriceResetInstancesType) 用于调整实例的机型询价。
    ///
    /// * 目前只支持[系统盘类型](https://cloud.tencent.com/document/product/213/15753#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口进行调整机型询价。
    /// * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口调整机型询价。
    @inlinable
    public func inquiryPriceResetInstancesType(instanceIds: [String], instanceType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InquiryPriceResetInstancesTypeResponse> {
        let input = InquiryPriceResetInstancesTypeRequest(instanceIds: instanceIds, instanceType: instanceType)
        return self.client.execute(action: "InquiryPriceResetInstancesType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整实例配置询价
    ///
    /// 本接口 (InquiryPriceResetInstancesType) 用于调整实例的机型询价。
    ///
    /// * 目前只支持[系统盘类型](https://cloud.tencent.com/document/product/213/15753#SystemDisk)是`CLOUD_BASIC`、`CLOUD_PREMIUM`、`CLOUD_SSD`类型的实例使用该接口进行调整机型询价。
    /// * 目前不支持[CDH](https://cloud.tencent.com/document/product/416)实例使用该接口调整机型询价。
    @inlinable
    public func inquiryPriceResetInstancesType(instanceIds: [String], instanceType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquiryPriceResetInstancesTypeResponse {
        let input = InquiryPriceResetInstancesTypeRequest(instanceIds: instanceIds, instanceType: instanceType)
        return try await self.client.execute(action: "InquiryPriceResetInstancesType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
